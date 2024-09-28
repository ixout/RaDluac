from construct import Enum,Int8ul

Vendors = Enum(
	Int8ul,
	LUA_OFFICIAL=0,
	LUA_MI=1,
	LUA_TPLINK=2
)

VendorMap = {
	"official" : Vendors.LUA_OFFICIAL,
	"xiaomi" : Vendors.LUA_MI,
	"tplink" : Vendors.LUA_TPLINK
}

ModuleMap = {
"LUA_MI" : "mod_mi"

}
