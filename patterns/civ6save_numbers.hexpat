#include <std/string.pat>
#pragma pattern_limit 1048576

struct SizedNumBase<DataType> {
    u32 size;
	DataType data[size];
};

struct ValsPad32 {
    u32 value;
    u32 zero;
};

struct ValsPad8 {
    u32 value;
    u8 zero;
};

using NumVals = SizedNumBase<u32>;

using NumValsPad8 = SizedNumBase<ValsPad8>;
using NumValsPad32 = SizedNumBase<ValsPad32>;

struct Nums__2_Type {
    u32 id;
    u32 x;
    u32 y;
    u32 z;
    SizedNumBase<u16>;
};

struct Nums__2_SuperType {
	u32 index;
	u32 x;
	u32 y;
	u8 c;
	u32 z;
	SizedNumBase<u8> u8Arr;
	u32 num;
	Nums__2_Type dataArr[num];
	// u8 unconfirmedPostPadding[pad];
	u32 padType;
	if (padType == 1) {
		u32 padding1[3];
	} else if (padType == 2) {
		u32 padding2[6];
	}
	u32 finalPadding;
};

struct Nums__3_SuperType {
	u8 unknown1[1352];
	NumValsPad32 nums__17[66];
	u8 unknown2[19];
};

struct StringWithData {
	std::string::SizedString<u32> string;
	SizedNumBase<u8> data;
};

fn after(ref auto val) {
    return addressof(val) + sizeof(val);
};

fn printGap(ref auto val1, ref auto val2) {
    std::print("gap {0} {0:04x}", addressof(val2) - after(val1));
};


