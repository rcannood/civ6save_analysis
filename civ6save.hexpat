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
bitfield TileFlags2 {
    bit0 : 1;
    bit1 : 1;
    bit2 : 1;
    bit3 : 1;
    bit4 : 1;
    bit5 : 1;
    owned_by_player : 1;
    bit7 : 1;
};
bitfield TileFlags4 {
    co2 : 1;
    bit1 : 1;
    bit2 : 1;
    bit3 : 1;
    bit4 : 1;
    bit5 : 1;
    bit6 : 1;
    bit7 : 1;
};
bitfield CO2Flags {
    mountain_improvement: 1; // ski resort or tunnel?
    bit1 : 1;
    bit2 : 1;
    bit3 : 1;
    bit4 : 1;
    bit5 : 1;
    bit6 : 1;
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
    TileFlags2 flags2;
    Flags flags3;
    TileFlags4 flags4;
    Flags flags5;
    Flags flags6;
    Flags flags7;
    
    if (flags4.co2 || flags4.bit1) {
        u8 co2_bytes[23];
        CO2Flags co2_flags;
        if (co2_flags.mountain_improvement || flags4.bit1) {
            u8 mountain_improvement_bytes[20];
        }
    }
    if (flags2.owned_by_player) {
        u64 city;
        u32 district;
        u8 owner;
        u32 world_wonder;
    }
};

// s128 start = std::mem::find_sequence(0x0E, 0, 0, 0, 0x0F, 0, 0, 0, 0x06, 0, 0, 0);

s128 start = 0x0010B933;
Tile tiles[15] @ start;
// Tile tile14 @ start + 14*79;
// Tile tile15 @ start + 14*79 + 55;