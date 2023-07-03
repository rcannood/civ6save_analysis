#include <civ6save_numbers.hexpat>
#include <std/array.pat>
#include <std/core.pat>
#include <enums.hexpat>

// char uuid[] @ 0x0000002C;
// u32 player_flags[64] @ 0x00000081; // players, city states & barbarians
// u32 incrementals[64] @ 0x00000181;

using u8x25 = std::Array<u8, 25>;
using u32x5 = std::Array<u32, 5>;
using u32x3 = std::Array<u32, 3>;

struct ResourceVal_Type {
	Resource resource;
	u32 value;
	if (!std::core::is_valid_enum(resource)) {
		std::print("0x{:08X} unknown resource", u32(resource));
	}
} [[inline]];

struct Nums__2_SubType {
    u32 id;
    u32 x;
    u32 y;
    u32 z;
    SizedNumBase<u16>;
};

struct Nums__2_Type {
	u32 index;
	u32 x;
	u32 y;
	u32 z;
	u8 c;
	SizedNumBase<u8> u8Arr;
	SizedNumBase<Nums__2_SubType> dataArr;
	SizedNumBase<u32x3> padding1;
	SizedNumBase<u32x3> padding2;
};

enum Num__3_Enum: u32 {
    Unknown1 = 0x0252AC5E,
    Unknown2 = 0x033AE5FB,
    Unknown3 = 0x071BE686,
    Unknown4 = 0x07C6DDF7,
    Unknown5 = 0x09354DA1,
    Unknown6 = 0x0A0762EB,
    Unknown7 = 0x0A0929B1,
    Unknown8 = 0x0ED32ED9,
    Unknown9 = 0x1F084217,
    Unknown10 = 0x2105A9E1,
    Unknown11 = 0x21A41B8C,
    Unknown12 = 0x2207B4D2,
    Unknown13 = 0x22750191,
    Unknown14 = 0x232E6F17,
    Unknown15 = 0x2438AFC9,
    Unknown16 = 0x24F057EC,
    Unknown17 = 0x27769E73,
    Unknown18 = 0x2AE7245A,
    Unknown19 = 0x34270750,
    Unknown20 = 0x3480E2E1,
    Unknown21 = 0x37A411AF,
    Unknown22 = 0x3A81F8AB,
    Unknown23 = 0x3BB72A67,
    Unknown24 = 0x3CE28AEA,
    Unknown25 = 0x3F14F0DF,
    Unknown26 = 0x44A91897,
    Unknown27 = 0x45576068,
    Unknown28 = 0x4747A02B,
    Unknown29 = 0x557AEA68,
    Unknown30 = 0x57CB2E97,
    Unknown31 = 0x5AD657AB,
    Unknown32 = 0x62AFC2C0,
    Unknown33 = 0x64FCAC7B,
    Unknown34 = 0x667D668A,
    Unknown35 = 0x70134A8E,
    Unknown36 = 0x74B00CDE,
    Unknown37 = 0x7A1AE4C0,
    Unknown38 = 0x7ECE8CA1,
    Unknown39 = 0x7F0F8E76,
    Unknown40 = 0x7F41991E,
    Unknown41 = 0x81BF3589,
    Unknown42 = 0x821084EC,
    Unknown43 = 0x8B25424B,
    Unknown44 = 0x8FF1CF90,
    Unknown45 = 0x92771C78,
    Unknown46 = 0x932E685E,
    Unknown47 = 0x938BBBC4,
    Unknown48 = 0x9679F3BE,
    Unknown49 = 0x970F3319,
    Unknown50 = 0x994B59EF,
    Unknown51 = 0x9A457A42,
    Unknown52 = 0xA01A68FB,
    Unknown53 = 0xAF348100,
    Unknown54 = 0xB1140631,
    Unknown55 = 0xB49A09AA,
    Unknown56 = 0xB73EFEC1,
    Unknown57 = 0xB761634A,
    Unknown58 = 0xB94F099C,
    Unknown59 = 0xBB19CE0A,
    Unknown60 = 0xBF12887F,
    Unknown61 = 0xC8C590C9,
    Unknown62 = 0xDE2B0ABC,
    Unknown63 = 0xDFC41280,
    Unknown64 = 0xE303B805,
    Unknown65 = 0xE85BEE0D,
    Unknown66 = 0xEB3F55E8,
    Unknown67 = 0xF3807120,
    Unknown68 = 0xFB33C447,
    Unknown69 = 0x1BE17736,
    Unknown70 = 0x2E2FDF9F,
    Unknown71 = 0x693BD3EB,
    Unknown72 = 0xF3EC8759,
};

union Num__3_Enum_Resource {
	Num__3_Enum num__3_type;
	Resource resource_type;
} [[inline]];

struct Num__3_Enum_Val_Type {
	Num__3_Enum_Resource type;
	u32 value;
	if (!std::core::is_valid_enum(type.num__3_type) && !std::core::is_valid_enum(type.resource_type)) {
		std::print("0x{:08X} unknown Num__3_Enum type", u32(type.num__3_type));
	}
} [[inline]];

struct Nums__3_Type {
	u8 unknown1[1352];
	SizedNumBase<Num__3_Enum_Val_Type> nums[66];
	u8 unknown2[19];
};

struct Nums__8_Type{
    u8 header[21];
    NumVals numbers;
};

struct Nums__12_Type{
    u32 header0;
    u8 header1[5];
    u32 start1;
    u32 values1[4];
    NumVals64 values2;
    NumVals32 values3;
    u32 value4;
};

struct Nums__17_Type{
    u32 id;
    u16 id_value;
    NumVals16 values;
};

struct PreTiles_Type {
	SizedNumBase<ResourceVal_Type> nums__1[2];

	u8 unknown_nums__1_2[4];
	SizedNumBase<Nums__2_Type> nums__2;
	u8 unknown_nums__2_3[16];
	SizedNumBase<Nums__3_Type> nums__3;

	u32 nums__4a;
	NumVals32Plus2 nums__4;
	u32 nums__4d[3];
	u32 nums__4d2;

	SizedNumBase<u8x25> nums__5;

	u32 nums__6_pre;
	NumVals32Plus2 nums__6;

	u32 nums__7[3+1];

	SizedNumBase<Nums__8_Type> nums__8;

	u32 nums__9;
	NumVals32Plus2 nums__10;

	u32 nums__11[3];

	u32 num_nums__12;
	u32 nums__12_preheader;
	Nums__12_Type nums__12[num_nums__12];

	NumVals32Plus2 nums__13;

	SizedNumBase<u32x5> nums__14;
	
	u32 nums__15[3];
	u32 nums__16;
	
	SizedNumBase<Nums__17_Type> nums__17;
	
	u32 nums__18;
	NumVals32Plus2 nums__19;
	u32 nums__20;
} [[single_color]];

PreTiles_Type pretiles @ 0x00000782;

u32 start_tiles = after(pretiles);
