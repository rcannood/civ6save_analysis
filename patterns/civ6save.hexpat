enum terrainType : u32 {
    Ocean = 0x47C909DD,
    Coast = 0x4A707A11,
    Tundra = 0x48F29EAB,
    TundraHill = 0xEB62B0F6,
    TundraMountain = 0xDF49DDBD,
    Snow = 0x67EA840F,
    SnowHill = 0xE5031280,
    SnowMountain = 0x29B146F4,
    Grassland = 0x83E7C630,
    GrasslandHill = 0x6E9D0C70,
    GrasslandMountain = 0x5F83B433,
    Desert = 0xE5A80A2C,
    DesertHill = 0xB94134B3,
    DesertMountain = 0x5490BEF9,
    Plains = 0xFBE6865E,
    PlainsHill = 0xE6CE649E,
    PlainsMountain = 0xA3B9A8F0
};

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

bitfield OwnerFlags {
    bit0 : 1;
    bit1 : 1;
    bit2 : 1;
    bit3 : 1;
    bit4 : 1;
    bit5 : 1;
    owned_by_player : 1;
    bit7 : 1;
};

struct Tile {
    u32 travel_regions;
    u32 connected_regions;
    u32 landmass;
    terrainType terrain;
    u32 feature;
    u16 natural_wonder_order;
    u32 continent;
    u8 number_of_units;
    u32 resource;
    u16 resource_boolean;
    u32 improvement;
    s8 improvement_owner;
    s16 road;
    s16 appeal;
    s8 river_e;
    s8 river_se;
    s8 river_sw;
    u8 river_count;
    u8 river_map;
    u8 cliff_map;
    Flags flags1;
    OwnerFlags flags2;
    Flags flags3;
    u32 tile_overlay_num;
    
    if (tile_overlay_num == 1) {
        u8 buffer1[24];
    } else if (tile_overlay_num == 2) {
        u8 buffer2[44];
    } else if (tile_overlay_num == 3) {
        u8 buffer3[64];
    }

    if (flags2.owned_by_player) {
        u64 city;
        u32 district;
        u8 owner;
        u32 world_wonder;
    }
};