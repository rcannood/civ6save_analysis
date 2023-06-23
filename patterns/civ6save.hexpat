enum TerrainType : s32 {
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

enum FeatureType : s32 {
    None = 0xFFFFFFFF,
    Forest = 0xA220944,
    Marsh = 0x235559C3,
    WonderEyeofSahara = 0x2723C819,
    WonderUbsunurHollow = 0x4486F4EE,
    Floodplains = 0x52B57726,
    Ice = 0x5BEC0394,
    Oasis = 0x621F53A3,
    Jungle = 0xE9115439,
    Reef = 0xEB13F3D7,
    WonderBermudaTriangle = 0x2C3264A8
};

enum ImprovementType : s32 {
    None = 0xFFFFFFFF,
    Chateau = 0x252AC5E,
    Pasture = 0x9354DA1,
    IceHockeyRink = 0xA0762EB,
    Farm = 0xA0929B1,
    WindFarm = 0x1F084217,
    SeasideResort = 0x2207B4D2,
    FishingBoats = 0x22750191,
    Kampung = 0x34270750,
    TerraceFarm = 0x3480E2E1,
    Mine = 0x3BB72A67,
    Camp = 0x3F14F0DF,
    RomanFort = 0x4747A02B,
    QqhapaqNan = 0x57CB2E97,
    Plantation = 0x5AD657AB,
    Fort = 0x64FCAC7B,
    LumberMill = 0x7A1AE4C0,
    SolarFarm = 0x7ECE8CA1,
    SkiResort = 0x7F41991E,
    ColossalHead = 0x81BF3589,
    Seastead = 0x932E685E,
    Camp = 0x938BBBC4,
    OilWell = 0xAF348100,
    Chemamull = 0xB73EFEC1,
    Plantation = 0xBF12887F,
    OffshoreOilRig = 0xE85BEE0D,
    Fishery = 0xF3807120,
    Quarry = 0xFB33C447
};

enum ContinentType : s32 {
    None = 0xFFFFFFFF,
    Oceania = 0x34B9BACC,
    Kalaharia = 0xB25EA0E7,
    Kazakhstania = 0xB6961004,
    Artica = 0xBB2BBCAD,
    NorthAmerica = 0xCF481ECD,
    Africa = 0x5D2116C9,
};

enum ResourceType : s32 {
    None = 0xFFFFFFFF,
    Shipwreck = 0x76119354,
    Maize = 0xB3D4DA45,
    Crab = 0x3694E0E5,
    Deer = 0x6ACF4BD5,
    SIlver = 0xB4087061,
    AntiquitySite = 0x70B46B71,
    Jade = 0x17D120BC,
    Spices = 0x83CC24AD,
    Iron = 0x6F229238,
    Whales = 0x8625D52A,
    Dyes = 0x8F42157,
    Cattle = 0x4396ACAB,
    Amber = 0x7E2EEC44,
    Sheep = 0xB891AF3D,
    Salt = 0x98A99253,
    Stone = 0x21E0FFEC,
    Incense = 0x37AEAE99,
    Olives = 0x4825FD55,
    Copper = 0x26DC13CF,
    Tobacco = 0xEA3656C9,
    Mercury = 0xCCA4BA38,
    Niter = 0x6BB73300,
    Coal = 0x64EC0EDD,
    Pearls = 0xA4CA1410,
    Sugar = 0x93045039,
    Oil = 0xA6573F0A,
    Gypsum = 0x97619206,
    Wine = 0x415E16CC,
    Citrus = 0x18BF8791,
    Horses = 0x9353A548,
    Marble = 0x445C4DC5,
    Honey = 0x47FF6652,
    Rice = 0xC32E98B3,
    Ivory = 0x53CFB956,
    Tea = 0x6420402A,
    Uranium = 0x13CB7793,
    Cotton = 0x40599881,
    Bananas = 0x3F2DDED2,
    Cocoa = 0xD174B4CC,
    Furs = 0xAE64942E,
    Fish = 0x28263697,
    Diamonds = 0xEDC52292,
    Wheat = 0x2E1008E0
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

bitfield TileFlags1 {
    is_pillaged : 1;
    road_pillaged : 1; // ??
    has_road : 1;
    is_capital_or_citystate : 1;
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
    river_se : 1;
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


struct Tile {
    u32 travel_regions;
    u32 connected_regions;
    s32 landmass;
    TerrainType terrain;
    FeatureType feature;
    u16 natural_wonder_order;
    ContinentType continent;
    u8 number_of_units;
    ResourceType resource;
    u16 resource_boolean;
    ImprovementType improvement;
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
    
    if (tile_overlay_num == 1 || tile_overlay_num == 2) {
        u8 buffer0[23];
        Flags co2;

        if (tile_overlay_num == 2 || co2.bit0) {
            u8 buffer1[20];
        }
    } else if (tile_overlay_num == 3) {
        u8 buffer1[64]; // unconfirmed
    }

    if (flags2.is_owned) {
        u64 city;
        u32 district;
        u8 owner;
        u32 world_wonder;
    }
};