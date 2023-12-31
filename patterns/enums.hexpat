#pragma once

enum Terrain : s32 {
    Grassland = 0x83E7C630,
    GrasslandHill = 0x6E9D0C70,
    GrasslandMountain = 0x5F83B433,
    Plains = 0xFBE6865E,
    PlainsHill = 0xE6CE649E,
    PlainsMountain = 0xA3B9A8F0,
    Desert = 0xE5A80A2C,
    DesertHill = 0xB94134B3,
    DesertMountain = 0x5490BEF9,
    Tundra = 0x48F29EAB,
    TundraHill = 0xEB62B0F6,
    TundraMountain = 0xDF49DDBD,
    Snow = 0x67EA840F,
    SnowHill = 0xE5031280,
    SnowMountain = 0x29B146F4,
    Coast = 0x4A707A11,
    Ocean = 0x47C909DD
};

enum Feature : s32 {
    None = 0xFFFFFFFF,
    BurningRainforest = 0x79BD1E73,
    BurningWoods = 0x9A8E430E,
    BurntRainforest = 0x51E9C48A,
    BurntWoods = 0xB2DA99F7,
    DesertFloodplains = 0x52B57726,
    GeothermalFissure = 0x5CB047C1,
    GrasslandFloodplains = 0xB136EC99,
    Ice = 0x5BEC0394,
    Marsh = 0x235559C3,
    Oasis = 0x621F53A3,
    PlainsFloodplains = 0x8702BEA1,
    Rainforest = 0xE9115439,
    Reef = 0xEB13F3D7,
    VolcanicSoil = 0x779061D2,
    Volcano = 0xA5329CB5,
    Woods = 0x0A220944,
    BermudaTriangle = 0x2C3264A8,
    ChocolateHills = 0xA54A1EE7,
    CliffsofDover = 0x7B8D4B38,
    CraterLake = 0x4AB3134C,
    DeadSea = 0x70F25A4A,
    DelicateArch = 0x6A34AD76,
    EyeoftheSahara = 0x2723C819,
    Eyjafjallajokull = 0x32DC04E3,
    FountainofYouth = 0x0A42B38F,
    GalapagosIslands = 0x0D8169F3,
    GiantsCauseway = 0x6290AC58,
    Gobustan = 0x3A53BFD3,
    GreatBarrierReef = 0xD5976B31,
    HaLongBay = 0x40A7AE9E,
    IkKil = 0x1DDFB95A,
    LakeRetba = 0x1CBD7DB9,
    Lysefjord = 0x125D5C97,
    MatoTipila = 0xB7BFE81E,
    Matterhorn = 0x0D64180B,
    MountEverest = 0x40681612,
    MountKilimanjaro = 0x8C5CD401,
    MountRoraima = 0xE62276B2,
    MountVesuvius = 0x88307B8B,
    Pamukkale = 0x58E9D1A5,
    Pantanal = 0x531FCDE9,
    Paititi = 0xAE9B26FF,
    Piopiotahi = 0x60D88038,
    SaharaelBeyda = 0xDED41F66,
    TorresdelPaine = 0x9EEFBA24,
    TsingydeBemaraha = 0x3A7E44C0,
    UbsunurHollow = 0x4486F4EE,
    Uluru = 0xFEFD1640,
    Yosemite = 0xFF57F565,
    ZhangyeDanxia = 0xF2BC59D4
};

enum Improvement : s32 {
    None = 0xFFFFFFFF,
    Airstrip = 0x2438AFC9,
    Alcazar = 0x9A457A42,
    BarbarianOutpost = 0xDE2B0ABC,
    Batey = 0x970F3319,
    CahokiaMounds = 0x74B00CDE,
    Camp = 0x938BBBC4,
    Chemamull = 0xB73EFEC1,
    Chateau = 0x0252AC5E,
    CityPark = 0x0ED32ED9,
    ColossalHead = 0x81BF3589,
    Farm = 0x0A0929B1,
    Feitoria = 0xDFC41280,
    Fishery = 0xF3807120,
    FishingBoats = 0x22750191,
    Fort = 0x64FCAC7B,
    GeothermalPlant = 0xBF12887F,
    GolfCourse = 0xA01A68FB,
    GreatWall = 0x8FF1CF90,
    Hacienda = 0xC8C590C9,
    IceHockeyRink = 0x0A0762EB,
    Kampung = 0x34270750,
    Kurgan = 0xE303B805,
    LumberMill = 0x7A1AE4C0,
    Mahavihara = 0x9679F3BE,
    Mekewap = 0x232E6F17,
    MeteorSite = 0x37A411AF,
    Mine = 0x3BB72A67,
    MissileSilo = 0x21A41B8C,
    Mission = 0x033AE5FB,
    Maoi = 0xB1140631,
    Monastry = 0x92771C78,
    MountainTunnel = 0xB94F099C,
    NazcaLine = 0x45576068,
    NubianPyramid = 0x70134A8E,
    OffshoreOilRig = 0xE85BEE0D,
    OffshoreWindFarm = 0x3F14F0DF,
    OilWell = 0xAF348100,
    OpenAirMuseum = 0x2AE7245A,
    OutbackStation = 0x44A91897,
    Pairidaeza = 0x667D668A,
    Pasture = 0x09354DA1,
    Plantation = 0x5AD657AB,
    Polder = 0x62AFC2C0,
    Pa = 0x994B59EF,
    QhapaqNan = 0x57CB2E97,
    Quarry = 0xFB33C447,
    RockHewnChurch = 0x8B25424B,
    RomanFort = 0x4747A02B,
    SeasideResort = 0x2207B4D2,
    Seastead = 0x932E685E,
    SkiResort = 0x7F41991E,
    SolarFarm = 0x7ECE8CA1,
    Sphinx = 0x821084EC,
    Stepwell = 0x27769E73,
    TerraceFarm = 0x3480E2E1,
    TradingDome = 0x3CE28AEA,
    TribalVillage = 0x557AEA68,
    WindFarm = 0x1F084217,
    Ziggurat = 0xB49A09AA
};

enum Continent : s32 {
    None = 0xFFFFFFFF,
    Africa = 0x5D2116C9,
    Amasia = 0x83031185,
    America = 0xE380A69F,
    Antartica = 0x97126238,
    Artica = 0xBB2BBCAD,
    Asia = 0xD98CD496,
    Asiamerica = 0x7588F9D6,
    Atlantica = 0x1130E320,
    Atlantis = 0x2C5F6CFE,
    Australia = 0x21E46BFE,
    Avalonia = 0xA57A9A33,
    Azania = 0x453D6A34,
    Baltica = 0x8DD141D4,
    Cimmeria = 0x46EA22D2,
    Columbia = 0x67649391,
    CongoCraton = 0xC242D2D4,
    Euramerica = 0x2EA80D5B,
    Europe = 0x83FF40B4,
    Gondwana = 0x81C51D37,
    Kalaharia = 0xB25EA0E7,
    Kazakhstania = 0xB6961004,
    Kernorland = 0x8EF01E3F,
    KumariKandam = 0x7654D532,
    Laurasia = 0x2FB003DC,
    Laurentia = 0x0545CC53,
    Lemuria = 0x293F9251,
    Mu = 0xCE43598E,
    Nena = 0xD6058DC5,
    NorthAmerica = 0xCF481ECD,
    Novopangaea = 0xFFFFFFFF,
    Nuna = 0xCA232EB5,
    Oceania = 0x34B9BACC,
    Pangaea = 0x1DB5911C,
    PangaeaUltima = 0x67E5E0DC,
    Pannotia = 0x2D35CED5,
    Rodinia = 0xBDA686E6,
    Siberia = 0x1D227E43,
    SouthAmerica = 0x1558CDEA,
    TerraAustralis = 0xFA4091B1,
    Ur = 0xD23C5474,
    Vaalbara = 0x217D543B,
    Vendian = 0x0D81C0F3,
    Zealandia = 0x1D3E27D4
};

enum Resource : s32 {
    None = 0xFFFFFFFF,
    Aluminum = 0xE3E70273,
    Amber = 0x7E2EEC44,
    AntiquitySite = 0x70B46B71,
    Bananas = 0x3F2DDED2,
    Cattle = 0x4396ACAB,
    Citrus = 0x18BF8791,
    Coal = 0x64EC0EDD,
    Cocoa = 0xD174B4CC,
    Coffee = 0xC8D64189,
    Copper = 0x26DC13CF,
    Cotton = 0x40599881,
    Crabs = 0x3694E0E5,
    Deer = 0x6ACF4BD5,
    Diamonds = 0xEDC52292,
    Dyes = 0x08F42157,
    Fish = 0x28263697,
    Furs = 0xAE64942E,
    Gypsum = 0x97619206,
    Honey = 0x47FF6652,
    Horses = 0x9353A548,
    Incense = 0x37AEAE99,
    Iron = 0x6F229238,
    Ivory = 0x53CFB956,
    Jade = 0x17D120BC,
    Maize = 0xB3D4DA45,
    Marble = 0x445C4DC5,
    Mercury = 0xCCA4BA38,
    Niter = 0x6BB73300,
    Oil = 0xA6573F0A,
    Olives = 0x4825FD55,
    Pearls = 0xA4CA1410,
    Rice = 0xC32E98B3,
    Salt = 0x98A99253,
    Sheep = 0xB891AF3D,
    Shipwreck = 0x76119354,
    Silk = 0x1BB2CE1E,
    Silver = 0xB4087061,
    Spices = 0x83CC24AD,
    Stone = 0x21E0FFEC,
    Sugar = 0x93045039,
    Tea = 0x6420402A,
    Tobacco = 0xEA3656C9,
    Truffles = 0x7CA700B4,
    Turtles = 0x065BFBEF,
    Uranium = 0x13CB7793,
    Whales = 0x8625D52A,
    Wheat = 0x2E1008E0,
    Wine = 0x415E16CC,
    
    // from Nums__1
    Unknown1 = 0x5AFFA2BE,
    Unknown2 = 0x2428E5D5,
    Unknown3 = 0x89CFF0F5,
    Unknown4 = 0xA631F457,
    Unknown5 = 0x339D9FF6,
    Unknown6 = 0x1A8C62F2,
    Unknown7 = 0x15E4F3F7,
};