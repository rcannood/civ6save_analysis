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
using NumVals8 = SizedNumBase<u8>;
using NumVals16 = SizedNumBase<u16>;
using NumVals32 = SizedNumBase<u32>;
using NumVals64 = SizedNumBase<u64>;

using NumValsPad8 = SizedNumBase<ValsPad8>;
using NumValsPad32 = SizedNumBase<ValsPad32>;

struct NumVals32Plus2 {
    u32 size;
	u32 data[size + 2];
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


