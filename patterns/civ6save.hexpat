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
    Feature = 0x2F95B305
};

struct CityOverlay {
    u32 city_num0;
    u32 city_num1;
    u32 city_num2;
    u32 city_num3;
};

struct CityStateOverlay {
    u32 citystate_num0;
    u32 citystate_num1;
    u32 citystate_num2;
    u32 citystate_num3;
};

struct ImprovementOverlay {
    u32 improvement_num0;
    u32 improvement_num1;
    u32 improvement_num2;
    u32 improvement_num3;

    if (improvement_num3 == 1) {
        u32 improvement_subtype;

        if (improvement_subtype != 0xF9FA9BC3) {
            std::print("WARNING: unrecognized improvement subtype 0x{0:08x} at 0x{1:08x}", u32(improvement_subtype), $);
        }
        u32 improvement_num4;
        u32 improvement_num5;
        u32 improvement_num6;
        u32 improvement_num7;
    }
};

struct FeatureOverlay {
    u32 feature_num0;
    u32 feature_num1;
    u32 feature_num2;
    u32 feature_is_rotated;

    if (feature_is_rotated == 1) {
        u32 rotation_type;

        if (rotation_type != 0x4344ACEF) {
            std::print("WARNING: unrecognized rotation type 0x{0:08x} at 0x{1:08x}", u32(rotation_type), $);
        }
        u32 rotation_num0;
        u32 rotation_num1;
        u32 rotation_num2;
        u32 rotation_direction;
    }
};


struct Overlay {
    // first 4 bytes looks like it defines the type of buffer
    // '17 8A 60 4C' or '1281395223' for civ cities
    // 'DB 5F 7B D7' or '3615186907' for city states
    // '75 4C A3 D9' or '3651357813' for improvements
    // '05 B3 95 2F' or '798339845' for feature or natural wonders (possibly rotated)
    // 'EF AC 44 43' or '1128574191' for rotated tiles
    OverlayType overlay_type;

    if (!std::core::is_valid_enum(overlay_type)) {
        std::print("WARNING: unrecognized buffer type 0x{0:08x}", u32(overlay_type));
    }

    if (overlay_type == OverlayType::City) {
        CityOverlay city_overlay;
    } else if (overlay_type == OverlayType::CityState) {
        CityStateOverlay citystate_overlay;
    } else if (overlay_type == OverlayType::Improvement) {
        ImprovementOverlay improvement_overlay;
    } else if (overlay_type == OverlayType::Feature) {
        FeatureOverlay feature_overlay;
    }
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
    }

    if (flags2.is_owned) {
        u64 city;
        u32 district;
        u8 owner;
        u32 world_wonder;
    }
} ;
