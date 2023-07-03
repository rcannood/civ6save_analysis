#include <enums.hexpat>

/*
#define Terrain s32
#define Feature s32
#define Improvement s32
#define Continent s32
#define Resource s32
*/

bitfield Flags {
    bit0 : 1;
    bit1 : 1;
    bit2 : 1;
    bit3 : 1;
    bit4 : 1;
    bit5 : 1;
    bit6 : 1;
    bit7 : 1;
};

bitfield TileFlags1 {
    is_pillaged : 1;
    road_pillaged : 1; // ??
    has_road : 1;
    is_capital : 1;
    bit4 : 1;
    river_sw : 1;
    river_e : 1;
    river_se : 1;
};

bitfield TileFlags2 {
    cliff_sw : 1;
    cliff_e : 1;
    cliff_se : 1;
    bit3 : 1;
    bit4 : 1;
    is_impassable : 1;
    is_owned : 1;
    bit7 : 1;
};

bitfield TileFlags3 {
    is_ice : 1;
    bit1 : 1;
    bit2 : 1;
    bit3 : 1;
    bit4 : 1;
    bit5 : 1;
    bit6 : 1;
    bit7 : 1;
};

enum OverlayType : u32 {
    City = 0x4C608A17,
    CityState = 0xD77B5FDB,
    Improvement = 3651357813,
    Feature = 0x2F95B305,
    Rotation = 0x4344ACEF
};

struct Overlay {
    // first 4 bytes looks like it defines the type of buffer
    // '17 8A 60 4C' or '1281395223' for civ cities
    // 'DB 5F 7B D7' or '3615186907' for city states
    // '75 4C A3 D9' or '3651357813' for improvements
    // '05 B3 95 2F' or '798339845' for feature or natural wonders (possibly rotated)
    // 'EF AC 44 43' or '1128574191' for rotated tiles
    OverlayType overlay_type;

    if (overlay_type == OverlayType::City) {
        u32 city_num0;
        u32 city_num1;
        u32 city_num2;
        u32 city_num3;
    } else if (overlay_type == OverlayType::CityState) {
        u32 citystate_num0;
        u32 citystate_num1;
        u32 citystate_num2;
        u32 citystate_num3;
    } else if (overlay_type == OverlayType::Improvement) {
        u32 improvement_num0;
        u32 improvement_num1;
        u32 improvement_num2;
        u32 improvement_num3;
    } else if (overlay_type == OverlayType::Feature) {
        u32 feature_num0;
        u32 feature_num1;
        u32 feature_num2;
        u32 is_rotated;

        if (is_rotated == 1) {
            OverlayType overlay_type2; 
            u32 rotation_num0;
            u32 rotation_num1;
            u32 rotation_num2;
            u32 rotation_direction;

            if (!std::core::is_valid_enum(overlay_type2)) {
                std::print("WARNING: unrecognized buffer type 0x{0:08x}", u32(overlay_type2));
            }
        }
    }

    if (!std::core::is_valid_enum(overlay_type)) {
        std::print("WARNING: unrecognized buffer type 0x{0:08x}", u32(overlay_type));
    }
};


/*
 * Detect the number of 20-byte buffers by looking for the terrain
 * of the next tile.
 */
fn detect_num_buffers(s128 start, u32 tile_overlay_num) {
    for (u32 i = 1, i < 5, i = i + 1) {
        Terrain ter @ start + 20 * i;
        if (std::core::is_valid_enum(ter)) {
            return i;
        }
    }
    // if no feature tile is found, we're probably at the end of the 
    // map, and we can probably just use the tile_overlay_num
    return tile_overlay_num;
};


struct Tile {
    u32 travel_regions;
    u32 connected_regions;
    s32 landmass;
    Terrain terrain;
    Feature feature;
    u16 natural_wonder_order;
    Continent continent;
    u8 number_of_units;
    Resource resource;
    u16 resource_amount;
    Improvement improvement;
    s8 improvement_owner;
    s16 road;
    s16 appeal;
    s8 river_e;
    s8 river_se;
    s8 river_sw;
    u8 river_count;
    u8 river_map;
    u8 cliff_map;
    TileFlags1 flags1;
    TileFlags2 flags2;
    TileFlags3 flags3;
    u32 tile_overlay_num;

    if (tile_overlay_num >= 1) {
        u32 other_number;

        Overlay overlay[tile_overlay_num];

        /*
        u128 start = $ + (flags2.is_owned ? 17 : 0) + 12;
        
        u32 num_buffers = detect_num_buffers(start, tile_overlay_num);

        if (num_buffers != tile_overlay_num) {
            std::print("WARNING: tile {0} (0x{1:08x}) num_buffers ({2}) != tile_overlay_num ({3})", std::core::array_index(), addressof(travel_regions), num_buffers, tile_overlay_num);
        }

        Buffer buffers[num_buffers];

        if (buffers[0].num4 == 1 && num_buffers == tile_overlay_num) {
            std::print("WARNING: tile {0} (0x{1:08x}) buffer.num4 == 1 but num_buffers ({2}) == tile_overlay_num ({3})", std::core::array_index(), addressof(travel_regions), num_buffers, tile_overlay_num);
        }
        */
    }

    if (flags2.is_owned) {
        u64 city;
        u32 district;
        u8 owner;
        u32 world_wonder;
    }
} ;
