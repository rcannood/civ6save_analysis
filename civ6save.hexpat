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
    owned_by_player : 1;
    bit6 : 1;
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
    u32 terrain;
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
    
    if (flags4.co2) {
        u8 co2_byte0;
        u8 co2_byte1;
        u8 co2_byte2;
        u8 co2_byte3;
        u8 co2_byte4;
        CO2Flags co2_flags;
        if (co2_flags.mountain_improvement) {
            u8 mountain_improvement_byte0;
            u8 mountain_improvement_byte1;
            u8 mountain_improvement_byte2;
            u8 mountain_improvement_byte3;
            u8 mountain_improvement_byte4;
        }
    } else if (flags4.bit1) {
        u8 flag4bit1_byte0;
        u8 flag4bit1_byte1;
        u8 flag4bit1_byte2;
        u8 flag4bit1_byte3;
        u8 flag4bit1_byte4;
        u8 flag4bit1_byte5;
        u8 flag4bit1_byte6;
        u8 flag4bit1_byte7;
        u8 flag4bit1_byte8;
        u8 flag4bit1_byte9;
        u8 flag4bit1_byte10;
    }
    if (flags2.owned_by_player) {
        u64 city;
        u32 district;
        u8 owner;
        u32 world_wonder;
    }
};

// s128 start = 0x0010B933;
// Tile tile0 @ start;
// Tile tile13 @ start + 13*79;
