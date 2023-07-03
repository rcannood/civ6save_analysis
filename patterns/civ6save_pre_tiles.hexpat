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
    Unknown1 = 0x071BE686,
    Unknown2 = 0x07C6DDF7,
    Unknown3 = 0x2105A9E1,
    Unknown4 = 0x24F057EC,
    Unknown5 = 0x3A81F8AB,
    Unknown6 = 0x7F0F8E76,
    Unknown7 = 0xB761634A,
    Unknown8 = 0xBB19CE0A,
    Unknown9 = 0xEB3F55E8,
	Unkown10 = 0x1BE17736,
    Unknown11 = 0x2E2FDF9F,
    Unknown12 = 0x693BD3EB,
    Unknown13 = 0xF3EC8759,
};

union Num__3_Enum_Resource {
	Num__3_Enum num__3_type;
	Resource resource_type;
	Improvement improvement_type;
} [[inline]];

struct Num__3_Enum_Val_Type {
	Num__3_Enum_Resource type;
	u32 value;
	if (std::core::is_valid_enum(type.resource_type)) {
		std::core::set_pattern_color(type, 0x00007F);
	} else if (std::core::is_valid_enum(type.improvement_type)) {
		std::core::set_pattern_color(type, 0x007F00);
	} else if (std::core::is_valid_enum(type.num__3_type)) {
		std::core::set_pattern_color(type, 0x7F0000);
	} else {
		std::print("0x{:08X} unknown Num__3_Enum type", u32(type.num__3_type));
		std::core::set_pattern_color(type, 0x0000FF);
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
