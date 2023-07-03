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

struct Buffer {
    // buffer0.num0 looks like it has value :
    // '3651357813' for barb encampments and tribal villages
    // '798339845' for tiles where there are or used to be forests and marshes ?
    u32 num0;
    u32 num1;
    u32 num2;
    u32 num3;
    u32 num4;
};


fn is_terrain(u128 addr) {
    try {
        Terrain ter @ addr;
        return std::core::is_valid_enum(ter);
    } catch {
        return false;
    }
};

fn find_next_tile(s128 start, u32 tile_overlay_num) {
    for (u32 i = 1, i < 5, i = i + 1) {
        if (is_terrain(start + 20 * i)) {
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

        u128 start = $ + (flags2.is_owned ? 17 : 0) + 12;
        
        u32 num_buffers = find_next_tile(start, tile_overlay_num);

        if (num_buffers != tile_overlay_num) {
            std::print("WARNING: at addr 0x{0:08x} tile {1} num_buffers ({2}) != tile_overlay_num ({3})", $, std::core::array_index(), num_buffers, tile_overlay_num);
        }

        Buffer buffers[num_buffers];
    }

    if (flags2.is_owned) {
        u64 city;
        u32 district;
        u8 owner;
        u32 world_wonder;
    }
} ;
