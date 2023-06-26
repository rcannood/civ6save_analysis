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

struct Nums__2_Type {
    u32 id;
    u32 x;
    u32 y;
    u32 z;
    SizedNumBase<u16>;
};

struct Nums__2_SuperType<auto pad> {
	SizedNumBase<u8> u8Arr;
	u32 num;
	Nums__2_Type dataArr[num];
	u8 unconfirmedPostPadding[pad];
};

using NumVals = SizedNumBase<u32>;

using NumValsPad8 = SizedNumBase<ValsPad8>;
using NumValsPad32 = SizedNumBase<ValsPad32>;

fn after(ref auto val) {
    return addressof(val) + sizeof(val);
};


NumValsPad32 nums__1[2] @ 0x00000782;


Nums__2_SuperType<37> nums__2[6] @ 0x00000B13;
Nums__2_SuperType<49> nums__3[1] @ after(nums__2);
Nums__2_SuperType<37> nums__4[1] @ after(nums__3);
Nums__2_SuperType<49> nums__5[4] @ after(nums__4);
Nums__2_SuperType<37> nums__6[1] @ after(nums__5);
Nums__2_SuperType<49> nums__7[2] @ after(nums__6);
Nums__2_SuperType<37> nums__8[1] @ after(nums__7);
Nums__2_SuperType<37> nums__9[1] @ after(nums__8);


NumValsPad32 nums__17[66] @ 0x0009D0D7;
NumValsPad32 nums__18[66] @ 0x0009E6E2;
NumValsPad32 nums__19[66] @ 0x0009FCED;
NumValsPad32 nums__20[66] @ 0x000A12F8;
NumValsPad32 nums__21[66] @ 0x000A2903;
NumValsPad32 nums__22[66] @ 0x000A3F0E;
NumValsPad32 nums__23[66] @ 0x000A5519;
NumValsPad32 nums__24[66] @ 0x000A6B24;
NumValsPad32 nums__25[66] @ 0x000A812F;
NumValsPad32 nums__26[66] @ 0x000A973A;
NumValsPad32 nums__27[66] @ 0x000AAD45;
NumValsPad32 nums__28[66] @ 0x000AC350;
NumValsPad32 nums__29[66] @ 0x000AD95B;
NumValsPad32 nums__30[66] @ 0x000AEF66;
NumValsPad32 nums__31[66] @ 0x000B0571;
NumValsPad32 nums__32[66] @ 0x000B1B7C;
NumValsPad32 nums__33[66] @ 0x000B3187;
NumValsPad32 nums__34[66] @ 0x000B4792;
NumValsPad32 nums__35[66] @ 0x000B5D9D;
NumValsPad32 nums__36[66] @ 0x000B73A8;
NumValsPad32 nums__37[66] @ 0x000B89B3;
NumValsPad32 nums__38[66] @ 0x000B9FBE;
NumValsPad32 nums__39[66] @ 0x000BB5C9;
NumValsPad32 nums__40[66] @ 0x000BCBD4;
NumValsPad32 nums__41[66] @ 0x000BE1DF;
NumValsPad32 nums__42[66] @ 0x000BF7EA;
NumValsPad32 nums__43[66] @ 0x000C0DF5;
NumValsPad32 nums__44[66] @ 0x000C2400;
NumValsPad32 nums__45[66] @ 0x000C3A0B;
NumValsPad32 nums__46[66] @ 0x000C5016;
NumValsPad32 nums__47[66] @ 0x000C6621;
NumValsPad32 nums__48[66] @ 0x000C7C2C;
NumValsPad32 nums__49[66] @ 0x000C9237;
NumValsPad32 nums__50[66] @ 0x000CA842;
NumValsPad32 nums__51[66] @ 0x000CBE4D;
NumValsPad32 nums__52[66] @ 0x000CD458;
NumValsPad32 nums__53[66] @ 0x000CEA63;
NumValsPad32 nums__54[66] @ 0x000D006E;
NumValsPad32 nums__55[66] @ 0x000D1679;
NumValsPad32 nums__56[66] @ 0x000D2C84;
NumValsPad32 nums__57[66] @ 0x000D428F;
NumValsPad32 nums__58[66] @ 0x000D589A;
NumValsPad32 nums__59[66] @ 0x000D6EA5;
NumValsPad32 nums__60[66] @ 0x000D84B0;
NumValsPad32 nums__61[66] @ 0x000D9ABB;
NumValsPad32 nums__62[66] @ 0x000DB0C6;
NumValsPad32 nums__63[66] @ 0x000DC6D1;
NumValsPad32 nums__64[66] @ 0x000DDCDC;
// a lot more
NumValsPad32 nums__90[66] @ 0x00105C1B;
NumValsPad32 nums__91[66] @ 0x00107226;











std::string::SizedString<u32> str_00 @ 0x001430C0;
std::string::SizedString<u32> str_01 @ 0x001430E1;

std::string::SizedString<u32> str00 @ 0x00155C07;
std::string::SizedString<u32> str01 @ 0x001565C6;
std::string::SizedString<u32> str02 @ 0x00156FEB;
std::string::SizedString<u32> str03 @ 0x0015728F;
std::string::SizedString<u32> str04 @ 0x00157531;
std::string::SizedString<u32> str05 @ 0x001577D2;
std::string::SizedString<u32> str06 @ 0x00157A71;
std::string::SizedString<u32> str07 @ 0x00157D13;
std::string::SizedString<u32> str08 @ 0x00157FB5;
std::string::SizedString<u32> str09 @ 0x00158254;
std::string::SizedString<u32> str10 @ 0x001584F5;
std::string::SizedString<u32> str11 @ 0x00158A16;
std::string::SizedString<u32> str12 @ 0x0015A341;
std::string::SizedString<u32> str13 @ 0x0015D7FE;
std::string::SizedString<u32> str14 @ 0x0015F123;
std::string::SizedString<u32> str15 @ 0x00161BDC;
std::string::SizedString<u32> str16 @ 0x0016238B;
std::string::SizedString<u32> str17 @ 0x00165FD5;
std::string::SizedString<u32> str18 @ 0x001664F4;
std::string::SizedString<u32> str19 @ 0x0016DB84;

std::string::SizedString<u32> str20 @ 0x001806FE;
std::string::SizedString<u32> str21 @ 0x00180752;
std::string::SizedString<u32> str22 @ 0x001807AC;
std::string::SizedString<u32> str23 @ 0x00180800;
std::string::SizedString<u32> str24 @ 0x00180838;
std::string::SizedString<u32> str25 @ 0x00180890;
std::string::SizedString<u32> str26 @ 0x001808F1;


NumVals numsFF_1 @ 0x001817DC;
NumValsPad8 nums1 @ 0x00181918;
NumValsPad32 nums2 @ 0x00181CFA;
NumValsPad32 nums3[11] @ 0x00181E97;
NumValsPad32 nums4[11] @ 0x0018204A;
NumValsPad32 nums5[11] @ 0x001821FD;
NumValsPad32 nums6[11] @ 0x001823B0;
NumValsPad32 nums7[11] @ 0x00182563;
NumValsPad32 nums8[11] @ 0x00182716;
NumValsPad32 nums9[5] @ 0x001828B4;
NumValsPad32 nums10[2] @ 0x00183046;
NumValsPad8 nums11[5] @ 0x001830D6;
NumValsPad32 nums12 @ 0x00183EE5;
NumValsPad32 nums13 @ 0x00184183;

NumVals numsFF_2 @ 0x001844D8;

NumValsPad32 nums14 @ 0x0018488D;
NumValsPad8 nums15 @ 0x001849BD;
//NumValsPad128 nums16 @ 0x00184AE1;
NumValsPad32 nums17[12] @ 0x00184F31;
NumValsPad32 nums18[4] @ 0x001862F8;


std::string::SizedString<u32> str30 @ 0x001A2706;
std::string::SizedString<u32> str31 @ 0x001A28DF;

struct SomeStringStructSuffix {
    u32 numArgs;
    std::string::SizedString<u32> s;
    u32 args[numArgs];
    u32 unknown;
};


SomeStringStructSuffix ssss40 @ 0x001E9B81;
NumVals ssss40_numVals[2] @ 0x001E9BA7;

SomeStringStructSuffix ssss41 @ 0x001E9C03-4;
NumVals ssss41_numVals @ 0x001E9C48;

SomeStringStructSuffix ssss42 @ 0x001E9C6C-4;
NumVals ssss42_numVals @ 0x001E9CB3;

SomeStringStructSuffix ssss43 @ 0x001E9CC7-4;
SomeStringStructSuffix ssss44 @ 0x001E9CE6-4;
SomeStringStructSuffix ssss45 @ 0x001E9D0B-4;
SomeStringStructSuffix ssss46 @ 0x001E9D36-4;
SomeStringStructSuffix ssss47 @ 0x001E9D60-4;
NumVals ssss47_numVals[2] @ 0x001E9D82;

SomeStringStructSuffix ssss48 @ 0x001E9DDE-4;
NumVals ssss48_numVals @ 0x001E9E23;
SomeStringStructSuffix ssss49 @ 0x001E9E47-4;
NumVals ssss49_numVals @ 0x001E9E8E;

SomeStringStructSuffix ssss50 @ 0x001E9EA2-4;
SomeStringStructSuffix ssss51 @ 0x001E9EC1-4;
SomeStringStructSuffix ssss52 @ 0x001E9EE6-4;
SomeStringStructSuffix ssss53 @ 0x001E9F11-4;

SomeStringStructSuffix ssss54 @ 0x001E9F3B-4;
NumVals ssss54_numVals[2] @ 0x001E9F5D; // 1 byte overlap with previous struct

SomeStringStructSuffix ssss55 @ 0x001E9FB9-4;
NumVals ssss55_numVals @ 0x001E9FFE;

SomeStringStructSuffix ssss56 @ 0x001EA01E;
NumVals ssss56_numVals @ 0x001EA069;

SomeStringStructSuffix ssss57[4] @ 0x001EA079;

SomeStringStructSuffix ssss58 @ 0x001EA112;
NumVals ssss58_numVals @ 0x001EA138; // 5 bytes overlap with previous struct

SomeStringStructSuffix ssss59 @ 0x001EA190;
SomeStringStructSuffix ssss60 @ 0x001EA1F9;

SomeStringStructSuffix ssss61[4] @ 0x001EA254;
SomeStringStructSuffix ssss62 @ 0x001EA2ED;
SomeStringStructSuffix ssss63 @ 0x001EA36B;
SomeStringStructSuffix ssss64 @ 0x001EA3D4;
SomeStringStructSuffix ssss65[4] @ 0x001EA42F;
SomeStringStructSuffix ssss66 @ 0x001EA4C8;

SomeStringStructSuffix ssss67 @ 0x001EA54F-4;
SomeStringStructSuffix ssss68 @ 0x001EA5BB-4;

SomeStringStructSuffix ssss69[4] @ 0x001EA613;
SomeStringStructSuffix ssss70 @ 0x001EA6AC;
SomeStringStructSuffix ssss71 @ 0x001EA6FF;
SomeStringStructSuffix ssss72 @ 0x001EA767;
SomeStringStructSuffix ssss73 @ 0x001EA7C9;
SomeStringStructSuffix ssss74 @ 0x001EA7FB;
SomeStringStructSuffix ssss75 @ 0x001EA84E;
SomeStringStructSuffix ssss76 @ 0x001EA8B6;
SomeStringStructSuffix ssss77 @ 0x001EA918;
SomeStringStructSuffix ssss78 @ 0x001EA94A;
SomeStringStructSuffix ssss79 @ 0x001EA99D;
SomeStringStructSuffix ssss80 @ 0x001EAA05;
SomeStringStructSuffix ssss81 @ 0x001EAA67;
SomeStringStructSuffix ssss82 @ 0x001EAA99;
SomeStringStructSuffix ssss83 @ 0x001EAAF5;
SomeStringStructSuffix ssss84 @ 0x001EAB62;
SomeStringStructSuffix ssss85 @ 0x001EABBE;
SomeStringStructSuffix ssss86 @ 0x001EABF0;
SomeStringStructSuffix ssss87 @ 0x001EAC43;


std::string::SizedString<u32> str100 @ 0x001EE708;


