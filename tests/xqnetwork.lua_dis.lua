local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
module("luci.controller.api.xqnetwork", package.seeall)
L0_1 = require("xiaoqiang.XQLog")
logger = L0_1

function index()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = node("api", "xqnetwork")
  L1_2 = require("xiaoqiang.util.XQSysUtil")
  L2_2 = require("xiaoqiang.XQFeatures")
  L2_2 = L2_2.FEATURES
  L3_2 = L1_2.getISPName()
  L4_2 = firstchild()
  L0_2.target = L4_2
  L0_2.title = ""
  L0_2.order = 200
  L0_2.sysauth = "admin"
  L0_2.sysauth_authenticator = "jsonauth"
  L0_2.index = true
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L6_2 = firstchild()
  entry(L5_2, L6_2, "", 200)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_status"
  L6_2 = call("getWifiStatus")
  entry(L5_2, L6_2, "", 201)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_detail"
  L6_2 = call("getWifiInfo")
  entry(L5_2, L6_2, "", 202)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_detail_all"
  L6_2 = call("getAllWifiInfo")
  entry(L5_2, L6_2, "", 202)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_connect_devices"
  L6_2 = call("getWifiConDev")
  entry(L5_2, L6_2, "", 203)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_txpwr_channel"
  L6_2 = call("getWifiChTx")
  entry(L5_2, L6_2, "", 204)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_txpwr"
  L6_2 = call("setWifiTxpwr")
  entry(L5_2, L6_2, "", 205)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_up"
  L6_2 = call("turnOnWifi")
  entry(L5_2, L6_2, "", 206)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_down"
  L6_2 = call("shutDownWifi")
  entry(L5_2, L6_2, "", 207)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi"
  L6_2 = call("setWifi")
  entry(L5_2, L6_2, "", 208)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_without_restart"
  L6_2 = call("setWifiWithoutRestart")
  entry(L5_2, L6_2, "", 208)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "check_wired_link"
  L6_2 = call("checkWiredLink")
  entry(L5_2, L6_2, "", 212)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "lan_info"
  L6_2 = call("getLanInfo")
  entry(L5_2, L6_2, "", 213)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wan_info"
  L6_2 = call("getWanInfo")
  entry(L5_2, L6_2, "", 214)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "lan_dhcp"
  L6_2 = call("getLanDhcp")
  entry(L5_2, L6_2, "", 215)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wan_down"
  L6_2 = call("wanDown")
  entry(L5_2, L6_2, "", 216)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wan_up"
  L6_2 = call("wanUp")
  entry(L5_2, L6_2, "", 217)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "check_wan_type"
  L6_2 = call("getAutoWanType")
  entry(L5_2, L6_2, "", 218, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "check_wan_link"
  L6_2 = call("getAutoWanLink")
  entry(L5_2, L6_2, "", 218, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wan_statistics"
  L6_2 = call("getWanStatistics")
  entry(L5_2, L6_2, "", 219)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "devices_statistics"
  L6_2 = call("getDevsStatistics")
  entry(L5_2, L6_2, "", 220)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "device_statistics"
  L6_2 = call("getDevStatistics")
  entry(L5_2, L6_2, "", 221)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_lan_ip"
  L6_2 = call("setLanIp")
  entry(L5_2, L6_2, "", 222)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wan"
  L6_2 = call("setWan")
  entry(L5_2, L6_2, "", 223, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wan_new"
  L6_2 = call("setWanNew")
  entry(L5_2, L6_2, "", 223, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_lan_dhcp"
  L6_2 = call("setLanDhcp")
  entry(L5_2, L6_2, "", 224)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "mac_clone"
  L6_2 = call("setWanMac")
  entry(L5_2, L6_2, "", 225)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_all_wifi"
  L6_2 = call("setAllWifi")
  entry(L5_2, L6_2, "", 226)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_dwb_wifi"
  L6_2 = call("setDWBWifi")
  entry(L5_2, L6_2, "")
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "avaliable_channels"
  L6_2 = call("getChannels")
  entry(L5_2, L6_2, "", 227)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_silence"
  L6_2 = call("setWifiSilence")
  entry(L5_2, L6_2, "")
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_wifi_silence"
  L6_2 = call("getWifiSilence")
  entry(L5_2, L6_2, "")
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_macfilter_info"
  L6_2 = call("getWifiMacfilterInfo")
  entry(L5_2, L6_2, "", 228)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_macfilter"
  L6_2 = call("setWifiMacfilter")
  entry(L5_2, L6_2, "", 229)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "edit_device"
  L6_2 = call("editDevice")
  entry(L5_2, L6_2, "", 230)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "manually_add"
  L6_2 = call("manuallyAdd")
  entry(L5_2, L6_2, "", 231)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "mac_bind"
  L6_2 = call("macBind")
  entry(L5_2, L6_2, "", 231)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "mac_unbind"
  L6_2 = call("macUnbind")
  entry(L5_2, L6_2, "", 232)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "savebind"
  L6_2 = call("saveBind")
  entry(L5_2, L6_2, "", 233)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "unbindall"
  L6_2 = call("unbindAll")
  entry(L5_2, L6_2, "", 234)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "macbind_info"
  L6_2 = call("getMacBindInfo")
  entry(L5_2, L6_2, "", 235)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "pppoe_status"
  L6_2 = call("pppoeStatus")
  entry(L5_2, L6_2, "", 236)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "pppoe_stop"
  L6_2 = call("pppoeStop")
  entry(L5_2, L6_2, "", 237)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "pppoe_start"
  L6_2 = call("pppoeStart")
  entry(L5_2, L6_2, "", 238)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "qos_info"
  L6_2 = call("getQosInfo")
  entry(L5_2, L6_2, "", 239)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "qos_switch"
  L6_2 = call("qosSwitch")
  entry(L5_2, L6_2, "", 240)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "qos_mode"
  L6_2 = call("qosMode")
  entry(L5_2, L6_2, "", 241)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "qos_limit"
  L6_2 = call("qosLimit")
  entry(L5_2, L6_2, "", 242)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "qos_limits"
  L6_2 = call("qosLimits")
  entry(L5_2, L6_2, "", 242)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "qos_offlimit"
  L6_2 = call("qosOffLimit")
  entry(L5_2, L6_2, "", 243)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_band"
  L6_2 = call("setBand")
  entry(L5_2, L6_2, "", 244)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "ddns"
  L6_2 = call("ddnsStatus")
  entry(L5_2, L6_2, "", 253)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "ddns_switch"
  L6_2 = call("ddnsSwitch")
  entry(L5_2, L6_2, "", 254)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "add_server"
  L6_2 = call("addServer")
  entry(L5_2, L6_2, "", 255)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "del_server"
  L6_2 = call("deleteServer")
  entry(L5_2, L6_2, "", 256)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "server_switch"
  L6_2 = call("serverSwitch")
  entry(L5_2, L6_2, "", 258)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "ddns_reload"
  L6_2 = call("ddnsReload")
  entry(L5_2, L6_2, "", 259)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "ddns_edit"
  L6_2 = call("ddnsEdit")
  entry(L5_2, L6_2, "", 260)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_server"
  L6_2 = call("getServer")
  entry(L5_2, L6_2, "", 261)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_list"
  L6_2 = call("getScanList")
  entry(L5_2, L6_2, "", 262, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "disable_ap"
  L6_2 = call("disableap")
  entry(L5_2, L6_2, "", 263)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "mode"
  L6_2 = call("getMode")
  entry(L5_2, L6_2, "", 264)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wan_link"
  L6_2 = call("getWanLinkStatus")
  entry(L5_2, L6_2, "", 265, 9)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_ap"
  L6_2 = call("setWifiApMode")
  entry(L5_2, L6_2, "", 266)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "app_set_wifi_ap"
  L6_2 = call("appSetWifiApMode")
  entry(L5_2, L6_2, "", 286)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifiap_signal"
  L6_2 = call("apcli_get_signal")
  entry(L5_2, L6_2, "", 267)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifiap_restart"
  L6_2 = call("serviceRestart")
  entry(L5_2, L6_2, "", 268)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_lan_ap"
  L6_2 = call("setLanAP")
  entry(L5_2, L6_2, "", 272)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "disable_lan_ap"
  L6_2 = call("disableLanAP")
  entry(L5_2, L6_2, "", 273)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "app_wifiap_restart"
  L6_2 = call("wifiAPserviceRestart")
  entry(L5_2, L6_2, "", 287)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_status"
  L6_2 = call("getModeStatus")
  entry(L5_2, L6_2, "", 288)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_active_apcli_index"
  L6_2 = call("getActiveApcliIndex")
  entry(L5_2, L6_2, "", 289)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "channel_scan_start"
  L6_2 = call("channelScanStart")
  entry(L5_2, L6_2, "", 269)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "channel_scan_result"
  L6_2 = call("getScanResult")
  entry(L5_2, L6_2, "", 270)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_channel"
  L6_2 = call("setChannel")
  entry(L5_2, L6_2, "", 271)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wan_speed"
  L6_2 = call("getWanSpeed")
  entry(L5_2, L6_2, "", 262)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wan_speed"
  L6_2 = call("setWanSpeed")
  entry(L5_2, L6_2, "", 263)
  L4_2 = L2_2.apps
  if L4_2 then
    L4_2 = L2_2.apps.sfp
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_sfp"
      L6_2 = call("GetSFPSpeed")
      entry(L5_2, L6_2, "", 374)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_sfp"
      L6_2 = call("SetSFPSpeed")
      entry(L5_2, L6_2, "", 375)
    end
  end
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "pppoe_catch"
  L6_2 = call("pppoeCatch")
  entry(L5_2, L6_2, "", 264, 9)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "wifi_diag_detail_all"
  L6_2 = call("getDiagAllWifiInfo")
  entry(L5_2, L6_2, "", 275)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diagdevicelist"
  L6_2 = call("getDiagDeviceList")
  entry(L5_2, L6_2, "", 276)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diagudiskstatus"
  L6_2 = call("getDiagUdiskStatus")
  entry(L5_2, L6_2, "", 277)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diagdiskstatus"
  L6_2 = call("getDiagDiskStatus")
  entry(L5_2, L6_2, "", 278)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diag_wifi_test"
  L6_2 = call("diagWifiTest")
  entry(L5_2, L6_2, "", 279)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diag_usb_test"
  L6_2 = call("diagUsbTest")
  entry(L5_2, L6_2, "", 280)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diag_hdd_status"
  L6_2 = call("diagHddStatus")
  entry(L5_2, L6_2, "", 281)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diag_disk_test"
  L6_2 = call("diagDiskTest")
  entry(L5_2, L6_2, "", 282)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diag_get_paras"
  L6_2 = call("getDiagParas")
  entry(L5_2, L6_2, "", 283)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diag_set_paras"
  L6_2 = call("setDiagParas")
  entry(L5_2, L6_2, "", 284)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "diag_get_log"
  L6_2 = call("getDiagLog")
  entry(L5_2, L6_2, "", 285)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_weak"
  L6_2 = call("setWifiWeakInfo")
  entry(L5_2, L6_2, "", 286)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_wifi_weak"
  L6_2 = call("getWifiWeakInfo")
  entry(L5_2, L6_2, "", 287)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wan6"
  L6_2 = call("setWan6")
  entry(L5_2, L6_2, "", 223, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "ipv6_status"
  L6_2 = call("ipv6Status")
  entry(L5_2, L6_2, "", 223, 8)
  L4_2 = L2_2["system"]["ipv6_wired_v2"]
  if L4_2 then
    L4_2 = L2_2["system"]["ipv6_wired_v2"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_wan6_v2"
      L6_2 = call("setWan6V2")
      entry(L5_2, L6_2, "", 360, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_wan6_v2"
      L6_2 = call("getWan6V2")
      entry(L5_2, L6_2, "", 361, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_lan6_v2"
      L6_2 = call("setLan6V2")
      entry(L5_2, L6_2, "", 362, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_lan6_v2"
      L6_2 = call("getLan6V2")
      entry(L5_2, L6_2, "", 363, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_wan6_info_v2"
      L6_2 = call("getWan6InfoV2")
      entry(L5_2, L6_2, "", 364, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_wan6_switch_v2"
      L6_2 = call("setWan6SwitchV2")
      entry(L5_2, L6_2, "", 365, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_wan6_switch_v2"
      L6_2 = call("getWan6SwitchV2")
      entry(L5_2, L6_2, "", 366, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_wan_status"
      L6_2 = call("getWanStatus")
      entry(L5_2, L6_2, "", 367, 8)
    end
  end
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_son_backhaul_mode"
  L6_2 = call("setSonBackhaulMode")
  entry(L5_2, L6_2, "", 209)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_son_backhaul_mode"
  L6_2 = call("getSonBackhaulMode")
  entry(L5_2, L6_2, "", 209)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "miscan_switch"
  L6_2 = call("miscanSwitch")
  entry(L5_2, L6_2, "", 290)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_miscan_switch"
  L6_2 = call("getMiscanSwitch")
  entry(L5_2, L6_2, "", 291)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_txbf"
  L6_2 = call("setWifiTxbf")
  entry(L5_2, L6_2, "", 295)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wifi_ax"
  L6_2 = call("setWifiAx")
  entry(L5_2, L6_2, "", 296)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "scan_mesh_node"
  L6_2 = call("scanMeshNode")
  entry(L5_2, L6_2, "", 297)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "add_mesh_node"
  L6_2 = call("addMeshNode")
  entry(L5_2, L6_2, "", 298)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_addnode_status"
  L6_2 = call("getMeshNodeStatus")
  entry(L5_2, L6_2, "", 299)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_netmode"
  L6_2 = call("getNetMode")
  entry(L5_2, L6_2, "", 300)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wan_lan_swap"
  L6_2 = call("setWanLanSwap")
  entry(L5_2, L6_2, "", 301)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_wan_port_status"
  L6_2 = call("getWanPortStatus")
  entry(L5_2, L6_2, "", 302)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_wan_lan_port"
  L6_2 = call("getWanLanPort")
  entry(L5_2, L6_2, "", 303, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_wan_lan_port"
  L6_2 = call("setWanLanPort")
  entry(L5_2, L6_2, "", 304, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_wan_lan_mode"
  L6_2 = call("getWanLanMode")
  entry(L5_2, L6_2, "", 305)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "miotrelay_switch"
  L6_2 = call("miotrelaySwitch")
  entry(L5_2, L6_2, "", 306)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_miotrelay_switch"
  L6_2 = call("getMiotrelaySwitch")
  entry(L5_2, L6_2, "", 307)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_ipv6_firewall"
  L6_2 = call("setIpv6Firewall")
  entry(L5_2, L6_2, "", 308, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_ipv6_firewall"
  L6_2 = call("getIpv6Firewall")
  entry(L5_2, L6_2, "", 309, 8)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_nfc_status"
  L6_2 = call("setNfcStatus")
  entry(L5_2, L6_2, "", 320)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_nfc_info"
  L6_2 = call("getNfcInfo")
  entry(L5_2, L6_2, "", 321)
  L4_2 = L2_2["system"]["multiwan"]
  if L4_2 then
    L4_2 = L2_2["system"]["multiwan"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_multiwan_basic_info"
      L6_2 = call("getMultiwanBasicInfo")
      entry(L5_2, L6_2, "", 322, 9)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_multiwan_dev_list"
      L6_2 = call("getMultiwanDevList")
      entry(L5_2, L6_2, "", 323, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_multiwan_dev_policies"
      L6_2 = call("getMultiwanDevPolicies")
      entry(L5_2, L6_2, "", 324, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_multiwan_dev_policy"
      L6_2 = call("setMultiwanDevPolicy")
      entry(L5_2, L6_2, "", 325, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_multiwan_weight"
      L6_2 = call("setMultiwanWeight")
      entry(L5_2, L6_2, "", 326, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_multiwan_enable"
      L6_2 = call("setMultiwanEnable")
      entry(L5_2, L6_2, "", 327, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_multiwan_policy"
      L6_2 = call("setMultiwanPolicy")
      entry(L5_2, L6_2, "", 328, 8)
    end
  end
  L4_2 = L2_2["system"]["tr069"]
  if L4_2 then
    L4_2 = L2_2["system"]["tr069"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_cwmp"
      L6_2 = call("setCwmp")
      entry(L5_2, L6_2, "", 330)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_cwmp_info"
      L6_2 = call("getCwmpInfo")
      entry(L5_2, L6_2, "", 331)
    end
  end
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_wps_info"
  L6_2 = call("getWpsInfo")
  entry(L5_2, L6_2, "", 332)
  L4_2 = L2_2.apps["baidupan"]
  if L4_2 then
    L4_2 = L2_2.apps["baidupan"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_router_to_baidu"
      L6_2 = call("setRouterToBaidu")
      entry(L5_2, L6_2, "", 333, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_baidu_to_router"
      L6_2 = call("setBaiduToRouter")
      entry(L5_2, L6_2, "", 334, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "delete_transport_list"
      L6_2 = call("deleteTransportList")
      entry(L5_2, L6_2, "", 335, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_transport_list"
      L6_2 = call("getTransportList")
      entry(L5_2, L6_2, "", 336, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_translist_action"
      L6_2 = call("setTransListAction")
      entry(L5_2, L6_2, "", 337, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_translist_file_stat"
      L6_2 = call("getTransListFileStat")
      entry(L5_2, L6_2, "", 338, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_translist_count"
      L6_2 = call("getTransListCount")
      entry(L5_2, L6_2, "", 339, 8)
    end
  end
  L4_2 = L2_2.apps["docker"]
  if L4_2 then
    L4_2 = L2_2.apps["docker"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_mi_docker"
      L6_2 = call("setMiDocker")
      entry(L5_2, L6_2, "", 340, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_mi_docker_environment"
      L6_2 = call("setMiDockerEnv")
      entry(L5_2, L6_2, "", 341, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_portainer_environment"
      L6_2 = call("setPortainerEnv")
      entry(L5_2, L6_2, "", 342, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_portainer_manage"
      L6_2 = call("setPortainerManage")
      entry(L5_2, L6_2, "", 343, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_docker_info"
      L6_2 = call("getDockerInfo")
      entry(L5_2, L6_2, "", 344, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_mi_docker_cancel"
      L6_2 = call("setMiDockerCancel")
      entry(L5_2, L6_2, "", 345, 8)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_portainer_cancel"
      L6_2 = call("setPortainerCancel")
      entry(L5_2, L6_2, "", 346, 8)
    end
  end
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_hostap_mlo"
  L6_2 = call("setHostapMLO")
  entry(L5_2, L6_2, "", 372)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_hostap_mlo"
  L6_2 = call("getHostapMLO")
  entry(L5_2, L6_2, "", 373)
  L4_2 = L2_2["wifi"]["twt"]
  if L4_2 then
    L4_2 = L2_2["wifi"]["twt"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_twt"
      L6_2 = call("getTwt")
      entry(L5_2, L6_2, "")
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_twt"
      L6_2 = call("setTwt")
      entry(L5_2, L6_2, "")
    end
  end
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_mesh_switch"
  L6_2 = call("setMeshSwitch")
  entry(L5_2, L6_2, "", 374)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_mesh_switch"
  L6_2 = call("getMeshSwitch")
  entry(L5_2, L6_2, "", 375)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "set_roam_rssi_threshold"
  L6_2 = call("setRoamRssiThreshold")
  entry(L5_2, L6_2, "", 376)
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "get_roam_rssi_threshold"
  L6_2 = call("getRoamRssiThreshold")
  entry(L5_2, L6_2, "", 377)
  L4_2 = L2_2["system"]["lock_net"]
  if L4_2 then
    L4_2 = L2_2["system"]["lock_net"]
    if L4_2 == "1" then
      L4_2 = "CMCC"
      if L3_2 == L4_2 then
        L5_2 = {}
        L5_2[1] = "api"
        L5_2[2] = "xqnetwork"
        L5_2[3] = "net_locked"
        L6_2 = call("netLocked_cmcc")
        entry(L5_2, L6_2, "", 380, 9)
      else
        L4_2 = "CUCC"
        if L3_2 == L4_2 then
          L5_2 = {}
          L5_2[1] = "api"
          L5_2[2] = "xqnetwork"
          L5_2[3] = "net_locked"
          L6_2 = call("netLocked_cu")
          entry(L5_2, L6_2, "", 380, 9)
        end
      end
    end
  end
  L4_2 = L2_2["system"]["zero_config"]
  if L4_2 then
    L4_2 = L2_2["system"]["zero_config"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "itms"
      L6_2 = call("setItms")
      entry(L5_2, L6_2, "", 381, 9)
    end
  end
  L5_2 = {}
  L5_2[1] = "api"
  L5_2[2] = "xqnetwork"
  L5_2[3] = "bridge_lan_status"
  L6_2 = call("getBridgeLanStatus")
  entry(L5_2, L6_2, "", 382)
  L4_2 = L2_2.apps
  if L4_2 then
    L4_2 = L2_2.apps["local_gw_security"]
    if L4_2 == "1" then
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "set_gw_security"
      L6_2 = call("setGwSecurity")
      entry(L5_2, L6_2, "", 383)
      L5_2 = {}
      L5_2[1] = "api"
      L5_2[2] = "xqnetwork"
      L5_2[3] = "get_gw_security"
      L6_2 = call("getGwSecurity")
      entry(L5_2, L6_2, "", 384)
    end
  end
end

L0_1 = require("luci.http")
L1_1 = require("xiaoqiang.util.XQErrorUtil")
L2_1 = require("luci.model.uci")
L2_1 = L2_1.cursor()

function getWifiStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L2_2 = {}
  L5_2, L6_2 = L0_2.getWifiStatus(1)
  table.insert(L2_2, L5_2, L6_2)
  L5_2, L6_2 = L0_2.getWifiStatus(2)
  table.insert(L2_2, L5_2, L6_2)
  L1_2.code = 0
  L1_2.status = L2_2
  L0_1.write_json(L1_2)
end


function getWifiInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L2_2 = 0
  L4_2, L5_2 = L0_1.formvalue("wifiIndex")
  L3_2 = tonumber(L4_2, L5_2)
  if L3_2 and L3_2 < 3 then
    L4_2 = L0_2.getAllWifiInfo()
    L4_2 = L4_2[L3_2]
    L1_2.info = L4_2
  else
  end
  if L2_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(1523)
    L1_2.msg = L4_2
  end
  L1_2.code = L2_2
  L0_1.write_json(L1_2)
end


function getAllWifiInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.util.DedicatedWirelessBackhaulUtil")
  L2_2 = {}
  L3_2 = 0
  L4_2 = L0_2.getAllWifiInfo()
  L2_2.info = L4_2
  L2_2.code = L3_2
  L4_2 = #L2_2.info
  if 0 < L4_2 then
    L4_2 = tonumber(L2_2.info[1].bsd)
    L2_2.bsd = L4_2
    L4_2 = L2_2.bsd
    if not L4_2 then
      L2_2.bsd = 0
    end
  end
  if L1_2 then
    L4_2 = L1_2.is_supported()
    if L4_2 then
      L4_2 = L1_2.mesh_get_dwb_type()
      L2_2.dwb_type = L4_2
      L4_2 = L1_2.mesh_get_dwb_band()
      L2_2.dwb_band = L4_2
      L4_2 = L1_2.mesh_get_dwb_status()
      if not L4_2 then
      end
      L5_2 = tonumber("0")
      L2_2.dwb_status = L5_2
    end
  end
  L0_1.write_json(L2_2)
end


function getDiagAllWifiInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L2_2 = 0
  L3_2 = L0_2.getDiagAllWifiInfo()
  L1_2.info = L3_2
  L1_2.code = L2_2
  L3_2 = #L1_2.info
  if 0 < L3_2 then
    L3_2 = tonumber(L1_2.info[1].bsd)
    L1_2.bsd = L3_2
    L3_2 = L1_2.bsd
    if not L3_2 then
      L1_2.bsd = 0
    end
  end
  L0_1.write_json(L1_2)
end


function getWifiConDev()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.getAllWifiConnetDeviceList()
  L1_2.list = L2_2
  L0_1.write_json(L1_2)
end


function getWifiChTx()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.getWifiChannelTxpwrList()
  L1_2.list = L2_2
  L0_1.write_json(L1_2)
end


function setWifiChTx()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = {}
  L3_2 = 0
  L4_2 = L0_1.formvalue("channel1")
  L5_2 = L0_1.formvalue("txpwr1")
  L6_2 = L0_1.formvalue("channel2")
  L7_2 = L0_1.formvalue("txpwr2")
  L8_2 = L1_2.isStrNil(L4_2)
  if L8_2 then
    L8_2 = L1_2.isStrNil(L6_2)
    if L8_2 then
      L8_2 = L1_2.isStrNil(L5_2)
      if L8_2 then
        L8_2 = L1_2.isStrNil(L7_2)
        if L8_2 then
          L3_2 = 1502
      end
    end
  end
  else
    L0_2.setWifiChannelTxpwr(L4_2, L5_2, L6_2, L7_2)
  end
  if L3_2 ~= 0 then
    L8_2 = L1_1.getErrorMessage(L3_2)
    L2_2.msg = L8_2
  end
  L2_2.code = L3_2
  L0_1.write_json(L2_2)
  if L3_2 == 0 then
    L0_1.close()
    L1_2.forkRestartWifi()
  end
end


function setWifiTxpwr()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = {}
  L3_2 = 0
  L4_2 = L0_1.formvalue("txpwr")
  L5_2 = L1_2.isStrNil(L4_2)
  if L5_2 then
  else
    L0_2.setWifiTxpwr(L4_2)
  end
  if L3_2 ~= 0 then
    L5_2 = L1_1.getErrorMessage(1502)
    L2_2.msg = L5_2
  end
  L2_2.code = L3_2
  L0_1.write_json(L2_2)
  if L3_2 == 0 then
    L0_1.close()
    L1_2.forkRestartWifi()
  end
end


function setWifiTxbf()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = {}
  L3_2 = 0
  L4_2 = 0
  L5_2 = L0_2.get_require_cac()
  L6_2 = L0_1.formvalue("txbf")
  L7_2 = L0_1.formvalue("user_confirm")
  logger.log(6, "======================== txbf " .. L6_2)
  if L5_2 == true then
    L8_2 = L1_2.get_cac_time("cfg_file", "wl0", "0", "0")
    L4_2 = L8_2
  else
    L4_2 = 0
  end
  if L7_2 == nil then
    L7_2 = "1"
  end
  if L4_2 == 600 and L7_2 == "0" then
    L2_2.need_confirm = 1
    L2_2.cac_time = L4_2
    L2_2.code = 0
    L0_1.write_json(L2_2)
    L8_2 = true
    return L8_2
  end
  L8_2 = L1_2.isStrNil(L6_2)
  if L8_2 then
  else
    L0_2.setWifiTxbf(L6_2)
  end
  if L3_2 ~= 0 then
    L8_2 = L1_1.getErrorMessage(1502)
    L2_2.msg = L8_2
  end
  L2_2.cac_time = L4_2
  L2_2.code = L3_2
  L0_1.write_json(L2_2)
  if L3_2 == 0 then
    L0_1.close()
    L1_2.forkRestartWifi()
  end
end


function setWifiAx()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = {}
  L3_2 = 0
  L4_2 = L0_1.formvalue("ax")
  L5_2 = 0
  L6_2 = L0_2.get_require_cac()
  L7_2 = L0_1.formvalue("user_confirm")
  if L7_2 == nil then
    L7_2 = "1"
  end
  if L6_2 == true then
    L8_2 = L1_2.get_cac_time("cfg_file", "wl0", "0", "0")
    L5_2 = L8_2
  else
    L5_2 = 0
  end
  if L5_2 == 600 and L7_2 == "0" then
    L2_2.need_confirm = 1
    L2_2.cac_time = L5_2
    L2_2.code = 0
    L0_1.write_json(L2_2)
    L8_2 = true
    return L8_2
  end
  L8_2 = L1_2.isStrNil(L4_2)
  if L8_2 then
  else
    L0_2.setWifiAx(L4_2)
  end
  if L3_2 ~= 0 then
    L8_2 = L1_1.getErrorMessage(1502)
    L2_2.msg = L8_2
  end
  L2_2.cac_time = L5_2
  L2_2.code = L3_2
  L0_1.write_json(L2_2)
  if L3_2 == 0 then
    L0_1.close()
    L1_2.forkRestartWifi()
  end
end


function turnOnWifi()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L2_2 = 0
  L4_2, L5_2 = L0_1.formvalue("wifiIndex")
  L3_2 = tonumber(L4_2, L5_2)
  if L3_2 and L3_2 < 3 then
    L0_2.turnWifiOn(L3_2)
  else
  end
  if L2_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(1523)
    L1_2.msg = L4_2
  end
  L1_2.code = L2_2
  L0_1.write_json(L1_2)
end


function shutDownWifi()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L2_2 = 0
  L4_2, L5_2 = L0_1.formvalue("wifiIndex")
  L3_2 = tonumber(L4_2, L5_2)
  if L3_2 and L3_2 < 3 then
    L0_2.turnWifiOff(L3_2)
  else
  end
  if L2_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(1523)
    L1_2.msg = L4_2
  end
  L1_2.code = L2_2
  L0_1.write_json(L1_2)
end


function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = io.open(A0_2, "r")
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L1_2.close(L1_2)
  L2_2 = true
  return L2_2
end

function setWifi()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = {}
  L4_2 = 0
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L0_1.formvalue("wifiIndex")
  L5_2 = tonumber(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
  L6_2 = L0_1.formvalue("ssid")
  L7_2 = L0_1.formvalue("pwd")
  L8_2 = L0_1.formvalue("encryption")
  L9_2 = L0_1.formvalue("channel")
  L10_2 = L0_1.formvalue("bandwidth")
  L11_2 = L0_1.formvalue("txpwr")
  L12_2 = L0_1.formvalue("hidden")
  L13_2 = L0_1.formvalue("on")
  L14_2 = L0_1.formvalue("txbf")
  L15_2 = L0_1.formvalue("weakenable")
  L16_2 = L0_1.formvalue("weakthreshold")
  L17_2 = L0_1.formvalue("kickthreshold")
  L18_2 = L0_1.formvalue("ax")
  L19_2 = L0_1.formvalue("wifimode")
  L20_2 = require("luci.util")
  L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2 = L20_2.exec("getIspCapability wl_wifi5_vap 2>/dev/null")
  L21_2 = L20_2.trim(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2)
  if L13_2 ~= nil then
    L22_2 = tonumber(L13_2)
    L13_2 = L22_2
  end
  if L5_2 == 1 then
    if L9_2 then
      L0_2.check(0, L0_2.KEY_FUNC_2G_CHANNEL, L9_2)
    end
    if L11_2 then
      L0_2.check(0, L0_2.KEY_FUNC_2G_SIGNAL, L11_2)
    end
  elseif L5_2 == 2 then
    if L9_2 then
      L0_2.check(0, L0_2.KEY_FUNC_5G_CHANNEL, L9_2)
    end
    if L11_2 then
      L0_2.check(0, L0_2.KEY_FUNC_5G_SIGNAL, L11_2)
    end
  elseif L5_2 == 3 then
  end
  L22_2 = true
  L23_2 = false
  if L5_2 == 1 then
    L24_2 = L1_2.getWifiBasicInfo(L5_2)
    L25_2 = L24_2.password
    if L25_2 == nil then
      L24_2.password = ""
    end
    L25_2 = L24_2.ssid
    if L25_2 == L6_2 then
      L25_2 = L24_2.password
      if L25_2 == L7_2 then
        L25_2 = L24_2.encryption
        if L25_2 == L8_2 then
          goto lbl_145
        end
      end
    end
    L23_2 = true
  end
  ::lbl_145::
  L24_2 = L1_2.checkSSID(L6_2, 31)
  L4_2 = L24_2
  if L4_2 == 0 then
    if L5_2 == 1 or L5_2 == 2 then
      L24_2 = L1_2.setWifiBasicInfo
      L25_2 = L5_2
      L26_2 = L6_2
      L24_2 = L24_2(L25_2, L26_2, L7_2, L8_2, L9_2, L11_2, L12_2, L13_2, L10_2, nil, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      if L24_2 == false then
        L25_2 = L1_2.checkWifiPasswd(L7_2, L8_2)
        L4_2 = L25_2
      end
      if L21_2 ~= nil and L21_2 == "1" then
        L25_2 = nil
        L27_2 = string.len(L6_2 .. "-WiFi5")
        if 31 < L27_2 then
          L31_2 = string.len(L26_2)
          L27_2 = string.sub(L26_2, 1, #L26_2 - L31_2 - 25)
        end
        logger.log(6, "ssid=" .. L6_2 .. " wifi5_ssid=" .. L27_2 .. "-WiFi5")
        L27_2 = L1_2.setWifi5BackupInfo(L5_2, L25_2, L7_2, L8_2, L12_2)
        L24_2 = L27_2
        if L24_2 == false then
          L27_2 = L1_2.checkWifiPasswd(L7_2, L8_2)
        end
      end
    elseif L5_2 == 3 then
      L22_2 = true
    end
  end
  if L4_2 ~= 0 then
    L24_2 = L1_1.getErrorMessage(L27_2)
    L3_2.msg = L24_2
  end
  L3_2.code = L4_2
  L0_1.write_json(L3_2)
  if L4_2 == 0 then
    L0_1.close()
    if L22_2 then
      if L23_2 then
        L2_2.forkRestartWifiNotify()
      else
        L2_2.forkRestartWifiNotifyButMiio()
      end
    end
  end
end


function setWifiWithoutRestart()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = {}
  L4_2 = 0
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L0_1.formvalue("wifiIndex")
  L5_2 = tonumber(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L6_2 = L0_1.formvalue("ssid")
  L7_2 = L0_1.formvalue("pwd")
  L8_2 = L0_1.formvalue("encryption")
  L9_2 = L0_1.formvalue("channel")
  L10_2 = L0_1.formvalue("bandwidth")
  L11_2 = L0_1.formvalue("txpwr")
  L12_2 = L0_1.formvalue("hidden")
  L13_2 = L0_1.formvalue("on")
  L14_2 = L0_1.formvalue("txbf")
  L15_2 = L0_1.formvalue("ax")
  if L13_2 ~= nil then
    L16_2 = tonumber(L13_2)
    L13_2 = L16_2
  end
  if L9_2 == "0" then
    L10_2 = "0"
  end
  if L5_2 == 1 then
    if L9_2 then
      L0_2.check(0, L0_2.KEY_FUNC_2G_CHANNEL, L9_2)
    end
    if L11_2 then
      L0_2.check(0, L0_2.KEY_FUNC_2G_SIGNAL, L11_2)
    end
  elseif L5_2 == 2 then
    if L9_2 then
      L0_2.check(0, L0_2.KEY_FUNC_5G_CHANNEL, L9_2)
    end
    if L11_2 then
      L0_2.check(0, L0_2.KEY_FUNC_5G_SIGNAL, L11_2)
    end
  elseif L5_2 == 3 then
  end
  L16_2 = true
  L17_2 = false
  if L5_2 == 1 then
    L18_2 = L1_2.getWifiBasicInfo(L5_2)
    L19_2 = L18_2.password
    if L19_2 == nil then
      L18_2.password = ""
    end
    L19_2 = L18_2.ssid
    if L19_2 == L6_2 then
      L19_2 = L18_2.password
      if L19_2 == L7_2 then
        L19_2 = L18_2.encryption
        if L19_2 == L8_2 then
          goto lbl_124
        end
      end
    end
    L17_2 = true
  end
  ::lbl_124::
  L18_2 = L1_2.checkSSID(L6_2, 31)
  L4_2 = L18_2
  if L4_2 == 0 then
    if L5_2 == 1 or L5_2 == 2 then
      L18_2 = L1_2.setWifiBasicInfo
      L19_2 = L5_2
      L18_2 = L18_2(L19_2, L6_2, L7_2, L8_2, L9_2, L11_2, L12_2, L13_2, L10_2, nil, L14_2, nil, nil, nil, L15_2)
      if L18_2 == false then
        L19_2 = L1_2.checkWifiPasswd(L7_2, L8_2)
        L4_2 = L19_2
      end
    elseif L5_2 == 3 then
      L18_2 = require("xiaoqiang.module.XQGuestWifi")
      L19_2 = require("xiaoqiang.module.XQWifiShare")
      L20_2 = L18_2.setGuestWifi(1, L6_2, L8_2, L7_2, 1, L13_2)
      if L20_2 == false then
        L4_2 = 1615
      else
        if L8_2 ~= "none" and L13_2 == 1 then
          L19_2.wifi_share_switch(0)
        end
        L16_2 = false
      end
    end
  end
  if L4_2 ~= 0 then
    L18_2 = L1_1.getErrorMessage(L4_2)
    L3_2.msg = L18_2
  end
  L3_2.code = L4_2
  L0_1.write_json(L3_2)
end


function get_http_formvalue_by_index(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = L0_1.formvalue("on" .. A0_2)
  L1_2.on = L2_2
  L2_2 = L0_1.formvalue("ssid" .. A0_2)
  L1_2.ssid = L2_2
  L2_2 = L0_1.formvalue("pwd" .. A0_2)
  if not L2_2 then
    L2_2 = ""
  end
  L1_2.passwd = L2_2
  L2_2 = L0_1.formvalue("encryption" .. A0_2)
  L1_2.encryption = L2_2
  L2_2 = L0_1.formvalue("channel" .. A0_2)
  L1_2.channel = L2_2
  L2_2 = L0_1.formvalue("txpwr" .. A0_2)
  L1_2.txpwr = L2_2
  L2_2 = L0_1.formvalue("hidden" .. A0_2)
  L1_2.hidden = L2_2
  L2_2 = L0_1.formvalue("bandwidth" .. A0_2)
  L1_2.bw = L2_2
  L2_2 = L0_1.formvalue("wifimode" .. A0_2)
  if not L2_2 then
    L2_2 = ""
  end
  L1_2.wifimode = L2_2
  L2_2 = L0_1.formvalue("bsd")
  if not L2_2 then
    L2_2 = "0"
  end
  L3_2 = L1_2.on
  if L3_2 == nil then
    if L2_2 == "1" then
      L1_2.on = 1
      return L1_2
    else
      return L1_2
    end
  else
    L3_2 = tonumber(L1_2.on)
    L1_2.on = L3_2
    return L1_2
  end
end


function check_wl_setting_info(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = 0
  L3_2 = A0_2.ssid
  if L3_2 then
    L3_2 = string.len(A0_2.ssid)
    if L3_2 ~= 0 then
      goto lbl_16
    end
  end
  L2_2 = 0
  goto lbl_32
  ::lbl_16::
  L3_2 = string.len(A0_2.ssid)
  if 31 < L3_2 then
    L2_2 = 1572
  else
    L3_2 = A0_2.on
    if L3_2 == 1 then
      L3_2 = L1_2.checkWifiPasswd(A0_2.passwd, A0_2.encryption)
      L2_2 = L3_2
    end
  end
  ::lbl_32::
  return L2_2
end


function getNfcInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = require("luci.model.uci")
  L0_2 = L0_2.cursor()
  L1_2 = require("xiaoqiang.util.XQNfcUtil")
  L2_2 = require("xiaoqiang.util.XQWifiUtil")
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L6_2 = 0
  L7_2 = L0_2.get(L0_2, "misc", "wireless", "ifname_2G")
  if not L7_2 then
    L7_2 = ""
  end
  L8_2 = L0_2.get(L0_2, "misc", "wireless", "ifname_5G")
  if not L8_2 then
    L8_2 = ""
  end
  L9_2 = L0_2.get(L0_2, "misc", "wireless", "ifname_5GH")
  if not L9_2 then
    L9_2 = ""
  end
  L10_2 = L2_2.getAllWifiInfo()
  L10_2, L11_2, L12_2 = pairs(L10_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = L14_2.ifname
    if L15_2 == L8_2 then
      L15_2 = L14_2.status
      if L15_2 == "1" then
        L4_2 = L14_2
        L6_2 = 1
        break
      end
    end
  end
  if L6_2 == 0 then
    L10_2, L11_2, L12_2 = pairs(L3_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.ifname
      if L15_2 == L9_2 then
        L15_2 = L14_2.status
        if L15_2 == "1" then
          L4_2 = L14_2
          L6_2 = 1
          break
        end
      end
    end
  end
  if L6_2 == 0 then
    L10_2, L11_2, L12_2 = pairs(L3_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.ifname
      if L15_2 == L7_2 then
        L15_2 = L14_2.status
        if L15_2 == "1" then
          L4_2 = L14_2
          L6_2 = 1
          break
        end
      end
    end
  end
  if L6_2 == 0 then
    L10_2, L11_2, L12_2 = pairs(L3_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.status
      if L15_2 == "1" then
        L4_2 = L14_2
        L6_2 = 1
        break
      end
    end
  end
  L5_2.code = 0
  L11_2, L12_2, L13_2, L14_2, L15_2 = L0_2.get(L0_2, "misc", "nfc", "nfc_support")
  L10_2 = tonumber(L11_2, L12_2, L13_2, L14_2, L15_2)
  if not L10_2 then
    L10_2 = 0
  end
  L5_2.nfc_support = L10_2
  L11_2, L12_2, L13_2, L14_2, L15_2 = L0_2.get(L0_2, "nfc", "nfc", "nfc_enable")
  L10_2 = tonumber(L11_2, L12_2, L13_2, L14_2, L15_2)
  if not L10_2 then
    L10_2 = 0
  end
  L5_2.nfc_enable = L10_2
  if L6_2 == 1 then
    L10_2 = L4_2.encryption
    if L10_2 == "ccmp" then
      L5_2.wpa3_only = 1
  end
  else
    L5_2.wpa3_only = 0
  end
  L0_1.write_json(L5_2)
end


function setNfcStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("luci.model.uci")
  L1_2 = L1_2.cursor()
  L2_2 = require("xiaoqiang.util.XQNfcUtil")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = L0_1.formvalue("nfc_enable")
  L5_2 = {}
  L5_2.code = 0
  L1_2.set(L1_2, "nfc", "nfc", "nfc_enable", L4_2)
  L1_2.commit(L1_2, "nfc")
  if L4_2 == "0" then
    L2_2.nfc_disable()
  else
    L2_2.nfc_update()
  end
  L6_2 = L3_2.isMeshRe()
  if L6_2 then
    L2_2.nfc_mesh_sync_disable()
  else
    L6_2 = L3_2.isMeshCap()
    if L6_2 then
      L6_2 = L3_2.GenRandID(8)
      L1_2.set(L1_2, "nfc", "nfc", "config_id", L6_2)
      L7_2 = {}
      L7_2.cmd = "sync_nfc"
      L8_2 = tostring(L4_2)
      L7_2.nfc_enable = L8_2
      L8_2 = require("luci.json")
      L9_2 = L8_2.encode(L7_2)
      L0_2.log(6, "CAP call RE do action msg:" .. L9_2)
      L3_2.forkExec("/sbin/whc_to_re_common_api.sh action '" .. L9_2 .. "'")
    end
  end
  L1_2.commit(L1_2, "nfc")
  L0_1.write_json(L5_2)
end


function getHostapMLO()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = require("luci.model.uci")
  L0_2 = L0_2.cursor()
  L1_2 = require("xiaoqiang.util.XQSysUtil")
  L2_2 = L1_2.isMLOSupport()
  L3_2 = {}
  L4_2 = L4_2.get(L2_1, "misc", "mld", "hostap")
  if not L4_2 then
    L4_2 = "NULL"
  end
  L3_2.code = 0
  if L2_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_28
    end
  end
  L5_2 = 0
  ::lbl_28::
  L3_2.mlo_support = L5_2
  if L4_2 == "NULL" then
    L3_2.mlo_enable = 0
  else
    L6_2, L7_2, L8_2, L9_2, L10_2 = L0_2.get(L0_2, "wireless", L4_2, "mlo_enable")
    L5_2 = tonumber(L6_2, L7_2, L8_2, L9_2, L10_2)
    if not L5_2 then
      L5_2 = 0
    end
    L3_2.mlo_enable = L5_2
  end
  L0_1.write_json(L3_2)
end


function setHostapMLO()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = {}
  L2_2.code = 0
  L4_2, L5_2 = L0_1.formvalue("mlo_enable")
  L3_2 = tonumber(L4_2, L5_2)
  if L3_2 == 1 then
    L0_2.mlo_hostap_enable()
  else
    L0_2.mlo_hostap_disable()
  end
  L0_1.write_json(L2_2)
  L1_2.forkRestartWifiNotify()
end


function getWpsInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = require("luci.model.uci")
  L0_2 = L0_2.cursor()
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L5_2 = 0
  L6_2 = L0_2.get(L0_2, "misc", "wireless", "ifname_2G")
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = L0_2.get(L0_2, "misc", "wireless", "ifname_5G")
  if not L7_2 then
    L7_2 = ""
  end
  L8_2 = L0_2.get(L0_2, "misc", "wireless", "ifname_5GH")
  if not L8_2 then
    L8_2 = ""
  end
  L9_2 = L1_2.getAllWifiInfo()
  L9_2, L10_2, L11_2 = pairs(L9_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L13_2.ifname
    if L14_2 == L7_2 then
      L14_2 = L13_2.status
      if L14_2 == "1" then
        L3_2 = L13_2
        L5_2 = 1
        break
      end
    end
  end
  if L5_2 == 0 then
    L9_2, L10_2, L11_2 = pairs(L2_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L13_2.ifname
      if L14_2 == L8_2 then
        L14_2 = L13_2.status
        if L14_2 == "1" then
          L3_2 = L13_2
          L5_2 = 1
          break
        end
      end
    end
  end
  if L5_2 == 0 then
    L9_2, L10_2, L11_2 = pairs(L2_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L13_2.ifname
      if L14_2 == L6_2 then
        L14_2 = L13_2.status
        if L14_2 == "1" then
          L3_2 = L13_2
          L5_2 = 1
          break
        end
      end
    end
  end
  if L5_2 == 0 then
    L9_2, L10_2, L11_2 = pairs(L2_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L13_2.status
      if L14_2 == "1" then
        L3_2 = L13_2
        L5_2 = 1
        break
      end
    end
  end
  L4_2.code = 0
  L10_2, L11_2, L12_2, L13_2, L14_2 = L0_2.get(L0_2, "wireless", "wps", "enable")
  L9_2 = tonumber(L10_2, L11_2, L12_2, L13_2, L14_2)
  if not L9_2 then
    L9_2 = 0
  end
  L4_2.wps_enable = L9_2
  if L5_2 == 1 then
    L9_2 = L3_2.encryption
    if L9_2 == "ccmp" then
      L4_2.wpa3_only = 1
  end
  else
    L4_2.wpa3_only = 0
  end
  L0_1.write_json(L4_2)
end


function setAllWifi()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = require("xiaoqiang.util.XQSysUtil")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = require("xiaoqiang.util.DedicatedWirelessBackhaulUtil")
  L5_2 = L1_2.getAllWifiInfo()
  L6_2 = L1_2.get_wlan_count()
  L7_2 = L1_2.getWifiDevNames()
  L8_2 = L1_2.get_ssid_len_limit_2g()
  L9_2 = {}
  L10_2 = {}
  L11_2 = {}
  L12_2 = {}
  L13_2 = 0
  L14_2 = 0
  L15_2 = L0_1.formvalue("user_confirm")
  L16_2 = require("luci.util")
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2 = L16_2.exec("getIspCapability wl_wifi5_vap 2>/dev/null")
  L17_2 = L16_2.trim(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2)
  L18_2 = require("luci.model.uci")
  L18_2 = L18_2.cursor()
  L19_2 = L18_2.get(L18_2, "misc", "mesh", "easymesh")
  if not L19_2 then
    L19_2 = ""
  end
  L20_2 = L0_1.formvalue("ver")
  L21_2 = L0_1.formvalue("bsd")
  L22_2 = L5_2[1].bsd
  L23_2 = L0_1.formvalue("ax")
  if L23_2 then
    L24_2 = type(L23_2)
    if L24_2 == "table" then
    end
  end
  L24_2 = tonumber(L23_2[1])
  L23_2 = L24_2
  if L15_2 == nil then
    L15_2 = "1"
  end
  L24_2 = 1
  L25_2 = L6_2
  L26_2 = 1
  for L27_2 = L24_2, L25_2, L26_2 do
    L28_2 = get_http_formvalue_by_index(L27_2)
    L11_2[L27_2] = L28_2
    L28_2 = L11_2[L27_2]
    if L28_2 then
      L28_2 = L11_2[L27_2].channel
      if L28_2 ~= nil then
        L28_2 = L1_2.verfiyChannelByWlIndex(L27_2, L11_2[L27_2].channel)
        if L28_2 == false then
          L28_2 = L11_2[L27_2]
          L28_2.channel = 0
        end
      end
    end
  end
  if L19_2 ~= nil then
    L24_2 = tonumber(L19_2)
    if L24_2 == 1 then
      L24_2 = L3_2.isMeshMode()
      if L24_2 then
        L24_2 = L11_2[1]
        L24_2.on = 1
        L24_2 = L11_2[2]
        L24_2.on = 1
      end
    end
  end
  if L21_2 ~= nil then
    L24_2 = tonumber(L21_2)
    if L24_2 == 1 then
      if L22_2 ~= nil then
        L24_2 = tonumber(L22_2)
        if L24_2 ~= 0 then
          goto lbl_140
        end
      end
      L24_2 = L11_2[1]
      L24_2.on = 1
      ::lbl_140::
      L24_2 = 2
      L25_2 = L6_2
      L26_2 = 1
      for L27_2 = L24_2, L25_2, L26_2 do
        L28_2 = L11_2[L27_2]
        if L28_2 then
          L28_2 = L11_2[L27_2]
          L29_2 = L11_2[1].on
          L28_2.on = L29_2
          L28_2 = L11_2[L27_2]
          L29_2 = L11_2[1].ssid
          L28_2.ssid = L29_2
          L28_2 = L11_2[L27_2]
          L29_2 = L11_2[1].encryption
          L28_2.encryption = L29_2
          L28_2 = L11_2[L27_2]
          L29_2 = L11_2[1].passwd
          L28_2.passwd = L29_2
          L28_2 = L11_2[L27_2]
          L29_2 = L11_2[1].hidden
          L28_2.hidden = L29_2
        end
      end
      L24_2 = L23_2 or L24_2
      if L23_2 == nil or not L23_2 then
        L24_2 = L1_2.ax_enabled()
      end
      if L22_2 ~= nil then
        L25_2 = tonumber(L22_2)
      end
      if L25_2 == 0 and L24_2 == 1 then
        L1_2.mlo_hostap_enable()
      end
      L0_2.check(0, L0_2.KEY_FUNC_WIFI_BSD, 1)
    end
  end
  if L22_2 ~= nil then
    L24_2 = tonumber(L22_2)
    if L24_2 == 1 and L21_2 ~= nil then
      L24_2 = tonumber(L21_2)
      if L24_2 == 0 then
        if L20_2 == nil then
          L24_2 = L11_2[1]
          L24_2.on = 1
          L24_2 = 2
          L25_2 = L6_2
          L26_2 = 1
          for L27_2 = L24_2, L25_2, L26_2 do
            L28_2 = L11_2[L27_2]
            if L28_2 then
              L28_2 = L11_2[L27_2]
              L29_2 = L11_2[1].on
              L28_2.on = L29_2
              if L27_2 == 2 then
                L28_2 = L2_2.getISPCode()
                if L28_2 ~= "" then
                  L29_2 = L2_2.is_ISP_CU()
                  if not L29_2 then
                    goto lbl_241
                  end
                end
                L29_2 = L11_2[L27_2]
                L30_2 = string.sub(L11_2[1].ssid .. "_5G", 1, 31)
                L29_2.ssid = L30_2
                goto lbl_267
                ::lbl_241::
                L29_2 = L11_2[L27_2]
                L30_2 = string.sub(L11_2[1].ssid .. "-5G", 1, 31)
                L29_2.ssid = L30_2
              elseif L27_2 == 3 then
                L28_2 = L11_2[L27_2]
                L31_2 = L1_2.get5G2BandSuffix()
                L29_2 = string.sub(L11_2[1].ssid .. 1, 1, 31)
                L28_2.ssid = L29_2
              end
              ::lbl_267::
              L28_2 = L11_2[L27_2]
              L29_2 = L11_2[1].encryption
              L28_2.encryption = L29_2
              L28_2 = L11_2[L27_2]
              L29_2 = L11_2[1].passwd
              L28_2.passwd = L29_2
              L28_2 = L11_2[L27_2]
              L29_2 = L11_2[1].hidden
              L28_2.hidden = L29_2
            end
          end
        end
        L1_2.mlo_hostap_disable()
      end
    end
  end
  L24_2 = 1
  L25_2 = L6_2
  L26_2 = 1
  for L27_2 = L24_2, L25_2, L26_2 do
    L28_2 = L11_2[L27_2]
    if L28_2 then
      L28_2 = check_wl_setting_info(L11_2[L27_2])
      L12_2 = L28_2
      if 0 < L12_2 then
        L28_2 = #L10_2 + 1
        L29_2 = {}
        L10_2[L28_2] = L29_2
        L28_2 = L10_2[#L10_2]
        L28_2.code = L12_2
        L28_2 = L10_2[#L10_2]
        L29_2 = L1_1.getErrorMessage(L12_2)
        L28_2.msg = L29_2
        L13_2 = L12_2
      end
    end
  end
  L24_2 = L11_2[1].ssid
  if L24_2 then
    L24_2 = string.len(L11_2[1].ssid)
    L25_2 = tonumber(L8_2)
    if L24_2 > L25_2 then
      L24_2 = #L10_2 + 1
      L25_2 = {}
      L10_2[L24_2] = L25_2
      L24_2 = L10_2[#L10_2]
      L24_2.code = 1572
      L24_2 = L10_2[#L10_2]
      L25_2 = L1_1.getErrorMessage(1572)
      L24_2.msg = L25_2
      L13_2 = 1572
    end
  end
  L9_2.code = L13_2
  if L13_2 ~= 0 then
    L24_2 = L1_1.getErrorMessage(1516)
    L9_2.msg = L24_2
    L9_2.errorDetails = L10_2
    L0_1.write_json(L9_2)
    return
  end
  if L21_2 ~= nil then
    L24_2 = tonumber(L21_2)
    if L24_2 ~= 0 then
      goto lbl_384
    end
  end
  L24_2 = 2
  L25_2 = L6_2
  L26_2 = 1
  for L27_2 = L24_2, L25_2, L26_2 do
    L28_2 = L11_2[L27_2].on
    if L28_2 == 1 then
      L28_2 = L3_2.get_cac_time("cfg_user", L7_2[L27_2], L11_2[L27_2].channel, L11_2[L27_2].bw)
      cac_time_new = L28_2
      L28_2 = cac_time_new
      if L14_2 < L28_2 then
        L14_2 = cac_time_new
      end
    end
  end
  goto lbl_385
  ::lbl_384::
  L14_2 = 0
  ::lbl_385::
  if L14_2 == 600 and L15_2 == "0" then
    L9_2.need_confirm = 1
    L9_2.cac_time = L14_2
    L9_2.code = 0
    L0_1.write_json(L9_2)
    L24_2 = true
    return L24_2
  end
  L24_2 = L0_1.formvalue("txbf")
  L25_2 = L0_1.formvalue("weakenable")
  L26_2 = L0_1.formvalue("weakthreshold")
  L27_2 = L0_1.formvalue("kickthreshold")
  if L4_2 then
    L28_2 = L4_2.is_supported()
    if L28_2 then
      L4_2.mesh_sync_dwb_ssid(L5_2, L11_2, L21_2)
    end
  end
  L28_2 = 1
  L29_2 = L6_2
  L30_2 = 1
  for L31_2 = L28_2, L29_2, L30_2 do
    L32_2 = L11_2[L31_2]
    if L32_2 then
      L32_2 = L1_2.setWifiBasicInfo
      L33_2 = L31_2
      L34_2 = L11_2[L31_2].ssid
      L35_2 = L11_2[L31_2].passwd
      L36_2 = L11_2[L31_2].encryption
      L37_2 = L11_2[L31_2].channel
      L38_2 = L11_2[L31_2].txpwr
      L32_2(L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L11_2[L31_2].hidden, L11_2[L31_2].on, L11_2[L31_2].bw, L21_2, L24_2, L25_2, L26_2, L27_2, L23_2, L11_2[L31_2].wifimode)
      if L17_2 ~= nil and L17_2 == "1" then
        L32_2 = nil
        L34_2 = string.len(L11_2[L31_2].ssid .. "-WiFi5")
        if 31 < L34_2 then
          L38_2 = string.len(L33_2)
          L34_2 = string.sub(L33_2, 1, #L33_2 - L38_2 - 25)
        end
        logger.log(6, "ssid=" .. L33_2 .. " wifi5_ssid=" .. L34_2 .. "-WiFi5")
        L1_2.setWifi5BackupInfo(L31_2, L32_2, L11_2[L31_2].passwd, L11_2[L31_2].encryption, L11_2[L31_2].hidden)
      end
    end
  end
  L9_2.cac_time = L14_2
  L28_2 = L9_2.code
  if L28_2 == 0 then
    L29_2 = "milog.sh -m '{\"tag\":\"sec_sys_wlanpwd\"}'"
    os.execute(L29_2)
  end
  L0_1.write_json(L9_2)
  L0_1.close()
  L3_2.forkRestartWifiNotify()
end


function checkWiredLink()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_2.checkWiredLink()
  L2_2 = {}
  L2_2.code = 0
  L2_2.link = L1_2
  L0_1.write_json(L2_2)
end


function getLanInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_2.getLanWanInfo("lan")
  L2_2 = L0_2.getLanLinkList()
  L3_2 = {}
  L3_2.code = 0
  L3_2.info = L1_2
  L3_2.linkList = L2_2
  L0_1.write_json(L3_2)
end


function getWanInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L2_2 = L0_1.formvalue("wan_name")
  if not L2_2 then
  end
  L2_2 = L1_2.PS_WAN_SERVICE_NAME_MAP["WAN1"] or L2_2
  if not L3_2 then
  end
  L3_2 = L0_2.getLanWanInfo("wan")
  L4_2 = {}
  L4_2.code = 0
  L4_2.info = L3_2
  L0_1.write_json(L4_2)
end


function getWanStatistics()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQDeviceUtil")
  L1_2 = L0_2.getWanLanNetworkStatistics("wan")
  L2_2 = {}
  L2_2.code = 0
  L2_2.statistics = L1_2
  L0_1.write_json(L2_2)
end


function getDevsStatistics()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQDeviceUtil")
  L1_2 = L0_2.getDevNetStatisticsList()
  L2_2 = {}
  L2_2.code = 0
  L2_2.statistics = L1_2
  L0_1.write_json(L2_2)
end


function getDevStatistics()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.util.XQDeviceUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = {}
  L3_2 = L0_1.formvalue("mac")
  L4_2 = L0_2.getDevNetStatisticsDict()
  L5_2 = L1_2.macFormat(L3_2)
  L5_2 = L4_2[L5_2]
  L2_2.code = 0
  L2_2.statistics = L5_2
  L0_1.write_json(L2_2)
end


function getAutoWanType()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.XQPreference")
  L2_2 = require("xiaoqiang.common.XQConfigs")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = luci.model.uci.cursor()
  L5_2 = {}
  L6_2 = 0
  L7_2 = L0_2.getAutoWanType()
  if L7_2 == false then
    L6_2 = 1524
  else
    L5_2.wanType = L7_2
    L8_2 = L4_2.get(L4_2, "network", "wan", "username")
    L5_2.pppoeName = L8_2
    L8_2 = L4_2.get(L4_2, "network", "wan", "password")
    L5_2.pppoePassword = L8_2
    L8_2 = L3_2.isSupport160Mhz()
    L5_2.support160Mhz = L8_2
  end
  if L6_2 ~= 0 then
    L8_2 = L1_1.getErrorMessage(L6_2)
    L5_2.msg = L8_2
  end
  L5_2.code = L6_2
  L0_1.write_json(L5_2)
end


function getAutoWanLink()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("luci.util")
  L2_2 = {}
  L3_2 = 0
  os.execute("/etc/init.d/autowan off")
  os.execute("/etc/init.d/network reload_warm 2 eth0; sleep 1")
  L4_2 = L1_2.exec("ssdk_sh port linkstatus get 2 | grep ENABLE | wc -l")
  L8_2 = L1_2.trim(L4_2)
  L7_2 = "==== getAutoWanLink() get eth0 link: " .. L8_2
  logger.log(6, L7_2)
  L5_2 = L1_2.trim(L4_2)
  L2_2.code = L5_2
  L0_1.write_json(L2_2)
end


function getLanDhcp()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = {}
  L2_2 = L0_2.getLanDHCPService()
  L1_2.code = 0
  L1_2.info = L2_2
  L0_1.write_json(L1_2)
end


function getChannels()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2, L3_2, L4_2 = L0_1.formvalue("wifiIndex")
  L1_2 = tonumber(L2_2, L3_2, L4_2)
  L2_2 = {}
  L2_2.code = 0
  L3_2 = L0_2.getDefaultWifiChannels(L1_2)
  L2_2.list = L3_2
  L0_1.write_json(L2_2)
end


function wanDown()
  local L0_2, L1_2, L2_2
  luci.sys.call("env -i /sbin/ifdown wan")
  L0_2 = {}
  L0_2.code = 0
  L0_1.write_json(L0_2)
end


function wanUp()
  local L0_2, L1_2, L2_2
  luci.sys.call("env -i /sbin/ifup wan")
  L0_2 = {}
  L0_2.code = 0
  L0_1.write_json(L0_2)
end


function setLanIp()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = require("xiaoqiang.XQFeatures")
  L0_2 = L0_2.FEATURES
  L1_2 = require("xiaoqiang.util.XQLanWanUtil")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("luci.cbi.datatypes")
  L4_2 = require("xiaoqiang.util.XQSysUtil")
  L5_2 = require("xiaoqiang.module.XQIPConflict")
  L6_2 = {}
  L7_2 = 0
  L8_2 = L0_1.formvalue("ip")
  L9_2 = L0_1.formvalue("mask")
  L10_2 = L3_2.ipaddr(L8_2)
  if not L10_2 then
    L7_2 = 1525
  else
    L10_2 = L5_2.lan_wan_ip_conflict_chk(L8_2, L9_2)
    if L10_2 then
      L7_2 = 1526
    else
      L10_2 = L1_2.checkLanIpMask(L8_2, L9_2)
      L7_2 = L10_2
    end
  end
  if L7_2 == 0 then
    L1_2.setLanIp(L8_2, L9_2)
    L5_2.lan_ip_conflict_resolution()
    L6_2.ip = L8_2
  else
    L10_2 = L1_1.getErrorMessage(L7_2)
    L6_2.msg = L10_2
  end
  L6_2.code = L7_2
  L0_1.write_json(L6_2)
  if L7_2 == 0 then
    L0_1.close()
    L10_2 = L0_2.system.tr069
    if L10_2 then
      L10_2 = L0_2.system.tr069
      if L10_2 == "1" then
        L10_2 = nil
        L11_2 = L2_2.isMeshCap()
        if L11_2 then
          L13_2, L14_2, L15_2 = string.format("@ activate cmd=%s!", "sh /sbin/whc_to_re_common_api.sh gw_update " .. L8_2 .. "; sleep 3;")
          logger.log(4, L13_2, L14_2, L15_2)
        end
        L11_2 = L0_1.formvalue("is_tr069")
        if not L11_2 then
          if L10_2 then
            L10_2 = L10_2 .. "reboot"
          else
          end
        end
        if L10_2 then
          L2_2.forkExec("reboot")
        end
    end
    else
      L10_2 = L2_2.isMeshCap()
      if L10_2 then
        L13_2, L14_2, L15_2 = string.format("@ activate cmd=%s!", "sh /sbin/whc_to_re_common_api.sh gw_update " .. L8_2 .. "; sleep 3; reboot")
        logger.log(4, L13_2, L14_2, L15_2)
        L2_2.forkExec(L10_2)
      else
        L2_2.forkReboot()
      end
    end
  end
end


function _setWan(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.util.XQLanWanUtil")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = require("xiaoqiang.XQFeatures")
  L4_2 = L4_2.FEATURES
  L5_2 = 0
  L6_2 = L3_2.isStrNil(A0_2.wanType)
  if L6_2 then
    L6_2 = L3_2.isStrNil(A0_2.username)
    if L6_2 then
      L6_2 = L3_2.isStrNil(A0_2.password)
      if L6_2 then
        L6_2 = L3_2.isStrNil(A0_2.ip)
        if L6_2 then
          L6_2 = L3_2.isStrNil(A0_2.mask)
          if L6_2 then
            L6_2 = L3_2.isStrNil(A0_2.gw)
            if L6_2 then
              L6_2 = L3_2.isStrNil(A0_2.dns1)
              if L6_2 then
                L6_2 = L3_2.isStrNil(A0_2.dns2)
                if L6_2 then
                  L6_2 = L3_2.isStrNil(A0_2.autoset)
                  if L6_2 then
                    L6_2 = L3_2.isStrNil(A0_2.special)
                    if L6_2 then
                      L6_2 = 1502
                      return L6_2
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L6_2 = L3_2.isStrNil(A0_2.dns1)
  if L6_2 then
    L6_2 = L3_2.isStrNil(A0_2.dns2)
    if L6_2 then
      A0_2.autoset = "1"
  end
  else
    A0_2.autoset = "0"
  end
  L6_2 = L2_2.get_wanDevCfg(A0_2.wanConn, "Router", A0_2.wanType, 4)
  A0_2.wanDevCfg = L6_2
  L6_2 = A0_2.wanDevCfg
  if not L6_2 then
    L1_2.log(3, "_setWan: get wanDevCfg failed!")
    L6_2 = 1529
    return L6_2
  end
  L6_2 = A0_2.wanType
  if L6_2 == "pppoe" then
    L6_2 = A0_2.client
    if L6_2 == "web" then
      L1_2.check(0, L1_2.KEY_VALUE_NETWORK_PPPOE, 1)
    end
    L6_2 = L2_2.chkWan4PPPoE(A0_2.autoset, A0_2.username, A0_2.password, A0_2.mtu, A0_2.dns1, A0_2.dns2, A0_2.service)
    L5_2 = L6_2
    if L5_2 == 0 then
      L6_2 = L3_2.isStrNil(A0_2.dns1)
      if L6_2 then
        L6_2 = L3_2.isStrNil(A0_2.dns2)
        if L6_2 then
          L6_2 = A0_2.autoset
          if L6_2 == "0" then
            A0_2.autoset = "1"
          end
        end
      end
      L6_2 = L2_2.setWan4PPPoE(A0_2)
      L5_2 = L6_2
    end
  else
    L6_2 = A0_2.wanType
    if L6_2 == "dhcp" then
      L6_2 = A0_2.client
      if L6_2 == "web" then
        L1_2.check(0, L1_2.KEY_VALUE_NETWORK_DHCP, 1)
      end
      L6_2 = L2_2.chkWan4Dhcp(A0_2.autoset, A0_2.dns1, A0_2.dns2)
      L5_2 = L6_2
      if L5_2 == 0 then
        L6_2 = L2_2.setWan4Dhcp(A0_2)
        L5_2 = L6_2
      end
    else
      L6_2 = A0_2.wanType
      if L6_2 == "static" then
        L6_2 = A0_2.client
        if L6_2 == "web" then
          L1_2.check(0, L1_2.KEY_VALUE_NETWORK_STATIC, 1)
        end
        L6_2 = L2_2.chkWan4StaticIP(A0_2.ipChk, A0_2.ip, A0_2.mask, A0_2.gw, A0_2.dns1, A0_2.dns2)
        L5_2 = L6_2
        if L5_2 == 0 then
          L6_2 = L2_2.setWan4StaticIP(A0_2)
          L5_2 = L6_2
        end
      end
    end
  end
  L6_2 = L4_2.system.international
  if L6_2 then
    L6_2 = L4_2.system.international
    if L6_2 == "1" then
      L6_2 = A0_2.wanType
      if L6_2 ~= "l2tp" then
        L6_2 = A0_2.wanType
        if L6_2 ~= "pptp" then
          goto lbl_263
        end
      end
      L6_2 = A0_2.client
      if L6_2 == "web" then
        L1_2.check(0, L1_2.KEY_VALUE_NETWORK_VPN, 1)
      end
      L6_2 = A0_2.baseWanType
      if L6_2 then
        L6_2 = A0_2.baseWanType
        if L6_2 == "dhcp" then
          L6_2 = L2_2.chkWan4Dhcp(A0_2.autoset, A0_2.dns1, A0_2.dns2)
          L5_2 = L6_2
          if L5_2 == 0 then
            L6_2 = L2_2.setWan4Dhcp(A0_2)
            L5_2 = L6_2
          end
        else
          L6_2 = A0_2.baseWanType
          if L6_2 == "static" then
            L6_2 = L2_2.chkWan4StaticIP(A0_2.ipChk, A0_2.ip, A0_2.mask, A0_2.gw, A0_2.dns1, A0_2.dns2)
            L5_2 = L6_2
            if L5_2 == 0 then
              L6_2 = L2_2.setWan4StaticIP(A0_2)
              L5_2 = L6_2
            end
          end
        end
      end
      if L5_2 == 0 then
        L6_2 = L2_2.chkWan4VPN(A0_2.wanType, A0_2.vpnServer, A0_2.vpnUsername, A0_2.vpnPassword)
        L5_2 = L6_2
        if L5_2 == 0 then
          L6_2 = L2_2.setWan4VPN(A0_2)
          L5_2 = L6_2
          goto lbl_267
          ::lbl_263::
          L6_2 = L2_2.stopWan4VPN(A0_2)
          L5_2 = L6_2
        end
      end
    end
  end
  ::lbl_267::
  return L5_2
end


function setWan()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L3_2 = L0_1.formvalue("wan_name")
  if not L3_2 then
    L3_2 = "WAN1"
  end
  L4_2 = L0_1.formvalue("client")
  L1_2.client = L4_2
  L4_2 = L0_1.formvalue("wanType")
  L1_2.wanType = L4_2
  L4_2 = L0_1.formvalue("pppoeName")
  L1_2.username = L4_2
  L4_2 = L0_1.formvalue("pppoePwd")
  L1_2.password = L4_2
  L4_2 = L0_1.formvalue("staticIp")
  L1_2.ip = L4_2
  L4_2 = L0_1.formvalue("staticMask")
  L1_2.mask = L4_2
  L4_2 = L0_1.formvalue("staticGateway")
  L1_2.gw = L4_2
  L4_2 = L0_1.formvalue("dns1")
  L1_2.dns1 = L4_2
  L4_2 = L0_1.formvalue("dns2")
  L1_2.dns2 = L4_2
  L4_2 = L0_1.formvalue("special")
  if not L4_2 then
    L4_2 = "0"
  end
  L1_2.special = L4_2
  L4_2 = L0_1.formvalue("mtu")
  L1_2.mtu = L4_2
  L4_2 = L0_1.formvalue("service")
  L1_2.service = L4_2
  L4_2 = L0_1.formvalue("autoset")
  if not L4_2 then
    L4_2 = "0"
  end
  L1_2.autoset = L4_2
  L4_2 = L2_2.PS_WAN_SERVICE_NAME_MAP[L3_2]
  if not L4_2 then
    L4_2 = "wan"
  end
  L1_2.wanConn = L4_2
  L1_2.ipChk = "1"
  L4_2 = L0_1.formvalue("baseWanType")
  L1_2.baseWanType = L4_2
  L4_2 = L0_1.formvalue("vpnServer")
  L1_2.vpnServer = L4_2
  L4_2 = L0_1.formvalue("vpnUsername")
  L1_2.vpnUsername = L4_2
  L4_2 = L0_1.formvalue("vpnPassword")
  L1_2.vpnPassword = L4_2
  L4_2 = _setWan(L1_2)
  L0_2.code = L4_2
  L4_2 = L0_2.code
  if L4_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(L0_2.code)
    L0_2.msg = L4_2
  end
  L0_1.write_json(L0_2)
end


function setWanNew()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L3_2 = L0_1.formvalue("wan_name")
  if not L3_2 then
    L3_2 = "WAN1"
  end
  L4_2 = L0_1.formvalue("client")
  L1_2.client = L4_2
  L4_2 = L0_1.formvalue("wanType")
  L1_2.wanType = L4_2
  L4_2 = L0_1.formvalue("pppoeName")
  L1_2.username = L4_2
  L4_2 = L0_1.formvalue("pppoePwd")
  L1_2.password = L4_2
  L4_2 = L0_1.formvalue("staticIp")
  L1_2.ip = L4_2
  L4_2 = L0_1.formvalue("staticMask")
  L1_2.mask = L4_2
  L4_2 = L0_1.formvalue("staticGateway")
  L1_2.gw = L4_2
  L4_2 = L0_1.formvalue("dns1")
  L1_2.dns1 = L4_2
  L4_2 = L0_1.formvalue("dns2")
  L1_2.dns2 = L4_2
  L4_2 = L0_1.formvalue("special")
  if not L4_2 then
    L4_2 = "0"
  end
  L1_2.special = L4_2
  L4_2 = L0_1.formvalue("mtu")
  L1_2.mtu = L4_2
  L4_2 = L0_1.formvalue("service")
  L1_2.service = L4_2
  L4_2 = L0_1.formvalue("autoset")
  if not L4_2 then
    L4_2 = "0"
  end
  L1_2.autoset = L4_2
  L4_2 = L2_2.PS_WAN_SERVICE_NAME_MAP[L3_2]
  if not L4_2 then
    L4_2 = "wan"
  end
  L1_2.wanConn = L4_2
  L1_2.ipChk = "0"
  L4_2 = _setWan(L1_2)
  L0_2.code = L4_2
  L4_2 = L0_2.code
  if L4_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(L0_2.code)
    L0_2.msg = L4_2
  end
  L0_1.write_json(L0_2)
end


function setWan6()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.util.XQSecureUtil")
  L3_2 = 0
  L4_2 = {}
  L5_2 = L0_1.formvalue("wanType")
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L0_1.formvalue("ipaddr")
  L6_2 = L2_2.parseCmdline(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L0_1.formvalue("gw")
  L7_2 = L2_2.parseCmdline(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L0_1.formvalue("prefix")
  L8_2 = L2_2.parseCmdline(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L0_1.formvalue("assign")
  L9_2 = L2_2.parseCmdline(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L0_1.formvalue("dns1")
  L10_2 = L2_2.parseCmdline(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L0_1.formvalue("dns2")
  L11_2 = L2_2.parseCmdline(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L12_2 = L1_2.isStrNil(L5_2)
  if L12_2 then
    L12_2 = L1_2.isStrNil(L6_2)
    if L12_2 then
      L12_2 = L1_2.isStrNil(L7_2)
      if L12_2 then
        L12_2 = L1_2.isStrNil(L8_2)
        if L12_2 then
          L3_2 = 1502
      end
    end
  end
  elseif L5_2 ~= "native" and L5_2 ~= "nat" and L5_2 ~= "static" and L5_2 ~= "off" then
    L3_2 = 1606
  else
    L0_2.setWan6(L5_2, L10_2, L11_2, L6_2, L7_2, L8_2, L9_2)
  end
  L4_2.code = L3_2
  if L3_2 ~= 0 then
    L12_2 = L1_1.getErrorMessage(L3_2)
    L4_2.msg = L12_2
  end
  L0_1.write_json(L4_2)
end


function setWan6V2()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2
  L0_2 = require("luci.model.uci")
  L0_2 = L0_2.cursor()
  L1_2 = require("luci.cbi.datatypes")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("xiaoqiang.util.XQLanWanUtil")
  L4_2 = require("xiaoqiang.util.XQSecureUtil")
  L5_2 = 0
  L6_2 = {}
  L7_2 = {}
  L8_2 = 0
  L9_2 = 64
  L10_2 = "wan"
  L12_2 = L0_1.formvalue("wan6_name")
  if not L12_2 then
  end
  L11_2 = L4_2.parseCmdline("wan6")
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("automode")
  L12_2 = tonumber(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  if not L12_2 then
    L12_2 = 1
  end
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("ipv6_mode")
  L13_2 = L4_2.parseCmdline(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("dns1")
  L14_2 = L4_2.parseCmdline(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("dns2")
  L15_2 = L4_2.parseCmdline(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("nat6_enabled")
  L16_2 = tonumber(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  if not L16_2 then
    L16_2 = 0
  end
  L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("ip6prefix")
  L17_2 = L4_2.parseCmdline(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("ip6prefixlen")
  L18_2 = tonumber(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  if not L18_2 then
    L18_2 = L9_2
  end
  L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("ipv6DialAccount")
  L19_2 = L4_2.parseCmdline(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("ipv6DialPassword")
  L20_2 = L4_2.parseCmdline(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("use_pppoev4")
  L21_2 = tonumber(L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  if not L21_2 then
    L21_2 = 1
  end
  L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("ip6addr")
  L22_2 = L4_2.parseCmdline(L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("ip6gw")
  L23_2 = L4_2.parseCmdline(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("peeraddr")
  L24_2 = L4_2.parseCmdline(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("tunnelid")
  L25_2 = L4_2.parseCmdline(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_1.formvalue("use_dhcp")
  L26_2 = tonumber(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
  if not L26_2 then
    L26_2 = 1
  end
  L27_2 = string.find(L11_2, "_")
  if L27_2 then
    L28_2 = string.len("wan6")
    if L27_2 > L28_2 then
      L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = string.sub(L11_2, L27_2 + 1)
      L28_2 = tonumber(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
    end
  end
  if L8_2 and 0 < L8_2 then
  end
  L28_2 = L3_2.get_wanDevCfg(L10_2 .. "_" .. L28_2, "Router", nil, 4)
  L29_2 = L0_2.get(L0_2, "ipv6", L11_2, "permession")
  if not L29_2 then
    L29_2 = "1"
  end
  L30_2 = L0_2.get(L0_2, "ipv6", "globals", "enabled")
  if not L30_2 then
    L30_2 = "1"
  end
  if L30_2 == "0" then
    L5_2 = 2609
  elseif L29_2 == "0" then
    L5_2 = 2608
  else
    L31_2 = L2_2.isStrNil(L13_2)
    if L31_2 then
      L5_2 = 1502
    else
      if L28_2 and L8_2 then
        L31_2 = L28_2.wanSection
        if L31_2 == L10_2 then
          goto lbl_213
        end
      end
      L5_2 = 1523
      goto lbl_435
      ::lbl_213::
      L31_2 = L3_2.chkWan6Mode(L11_2, L13_2)
      if L31_2 ~= 0 then
        L5_2 = 2606
      else
        L31_2 = {}
        L32_2 = L2_2.isStrNil(L14_2)
        if L32_2 then
          L32_2 = L2_2.isStrNil(L15_2)
          if L32_2 then
            L7_2.peerdns = 1
        end
        else
          L7_2.peerdns = 0
          L32_2 = L2_2.isStrNil(L14_2)
          if not L32_2 then
            L32_2 = L1_2.ip6addr(L14_2)
            if L32_2 then
              table.insert(L31_2, L14_2)
            end
          end
          L32_2 = L2_2.isStrNil(L15_2)
          if not L32_2 then
            L32_2 = L1_2.ip6addr(L15_2)
            if L32_2 then
              table.insert(L31_2, L15_2)
            end
          end
          L7_2.dnsList = L31_2
        end
        if L13_2 == "native" then
        elseif L13_2 == "dhcpv6" then
          L32_2 = L3_2.chkWan6CfgDHCPv6(L16_2, L17_2, L18_2)
          L5_2 = L32_2
          if L5_2 == 0 then
            if L16_2 ~= 0 then
              L7_2.nat6Enabled = 1
              L32_2 = L17_2 .. "/" .. L18_2
              L7_2.ip6prefix = L32_2
            else
              L7_2.nat6Enabled = 0
            end
          end
        elseif L13_2 == "pppoev6" then
          L32_2 = L3_2.chkWan6CfgPPPoEv6(L16_2, L17_2, L18_2, L21_2, L19_2, L20_2)
          L5_2 = L32_2
          if L5_2 == 0 then
            if L16_2 ~= 0 then
              L7_2.nat6Enabled = 1
              L32_2 = L17_2 .. "/" .. L18_2
              L7_2.ip6prefix = L32_2
            else
              L7_2.nat6Enabled = 0
            end
            if L21_2 == 0 then
              L7_2.username = L19_2
              L7_2.password = L20_2
              L7_2.usePPPoEv4 = 0
            else
              L7_2.usePPPoEv4 = 1
            end
          end
        elseif L13_2 == "static" then
          L32_2 = L3_2.chkWan6CfgStatic(L22_2, L23_2, L17_2, L18_2)
          L5_2 = L32_2
          if L5_2 == 0 then
            L7_2.ip6addr = L22_2
            L7_2.ip6gw = L23_2
            L32_2 = L17_2 .. "/" .. L18_2
            L7_2.ip6prefix = L32_2
          end
        elseif L13_2 == "passthrough" then
        elseif L13_2 == "relay" then
        elseif L13_2 == "pi_relay" then
        elseif L13_2 == "6in4" then
          L32_2 = L3_2.chkWan6Cfg6in4(L24_2, L22_2, L17_2, L18_2, L25_2, L19_2, L20_2)
          L5_2 = L32_2
          if L5_2 == 0 then
            L7_2.peeraddr = L24_2
            L7_2.ip6addr = L22_2
            L32_2 = L17_2 .. "/" .. L18_2
            L7_2.ip6prefix = L32_2
            L32_2 = L2_2.isStrNil(L25_2)
            if not L32_2 then
              L7_2.tunnelid = L25_2
              L7_2.username = L19_2
              L7_2.password = L20_2
            end
          end
        elseif L13_2 == "6to4" then
          L33_2 = L0_1.formvalue("peeraddr")
          if not L33_2 then
          end
          L32_2 = L4_2.parseCmdline("192.88.99.1")
          L7_2.peeraddr = L32_2
          L32_2 = L3_2.chkWan6Cfg6to4(L7_2.peeraddr)
          L5_2 = L32_2
        elseif L13_2 == "6rd" then
          L32_2 = L3_2.chkWan6Cfg6rd(L26_2, L24_2, L17_2, L18_2)
          L5_2 = L32_2
          if L5_2 == 0 then
            if L26_2 == 0 then
              L7_2.useDHCP = 0
              L7_2.peeraddr = L24_2
              L7_2.ip6prefix = L17_2
              L7_2.ip6prefixlen = L18_2
            else
              L7_2.useDHCP = 1
            end
          end
        elseif L13_2 == "464xlat" then
          L32_2 = L3_2.chkWan6Cfg464xlat(L17_2, L18_2)
          L5_2 = L32_2
          if L5_2 == 0 then
            L32_2 = L17_2 .. "/" .. L18_2
            L7_2.ip6prefix = L32_2
          end
        elseif L13_2 == "off" then
        else
          L5_2 = 2606
        end
      end
    end
  end
  ::lbl_435::
  if L5_2 == 0 then
    if L13_2 ~= "off" then
      L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2 = L0_2.get(L0_2, "network", L10_2, "mru")
      L31_2 = tonumber(L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2)
      if not L31_2 then
        L31_2 = 1280
      end
      if L31_2 < 1280 then
        L0_2.set(L0_2, "network", L10_2, "mru", 1280)
        L0_2.commit(L0_2, "network")
        L2_2.forkExec("ubus call network reload")
      end
    end
    L7_2.autoMode = L12_2
    L7_2.wanIface = L10_2
    L7_2.wan6Iface = L11_2
    L7_2.wan6IfaceID = L8_2
    L31_2 = L28_2.wanIfname
    if not L31_2 then
      L31_2 = ""
    end
    L7_2.wan6Ifame = L31_2
    L31_2 = L28_2.wantype
    L7_2.wantype = L31_2
    L3_2.setWan6Cfg(L13_2, L7_2, true, false)
    if L12_2 == 1 then
      L2_2.forkExec("/usr/sbin/ipv6.sh autocheck " .. L11_2 .. " clear_result")
    end
  else
    L31_2 = L1_1.getErrorMessage(L5_2)
    L6_2.msg = L31_2
  end
  L6_2.code = L5_2
  L0_1.write_json(L6_2)
end


function getWan6V2()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = 0
  L1_2 = {}
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = require("xiaoqiang.util.XQSecureUtil")
  L4_2 = require("xiaoqiang.util.XQLanWanUtil")
  L5_2 = L2_2.get(L2_2, "ipv6", "globals", "enabled")
  if not L5_2 then
    L5_2 = "1"
  end
  if L5_2 == "0" then
    L0_2 = 2609
  else
    L7_2 = L0_1.formvalue("wan6_name")
    if not L7_2 then
    end
    L6_2 = L3_2.parseCmdline("wan6")
    L7_2 = L4_2.get_wanDevCfg(L6_2, "Router", nil, 6)
    L8_2 = L4_2.getWan6Cfg(L6_2)
    if L8_2 then
      L1_2.wan6_cfg = L8_2
    end
  end
  if L0_2 ~= 0 then
    L6_2 = L1_1.getErrorMessage(L0_2)
    L1_2.msg = L6_2
  end
  L1_2.code = L0_2
  L0_1.write_json(L1_2)
end


function ipv6Status()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_2.getWan6Info()
  L2_2 = {}
  L2_2.code = 0
  L2_2.info = L1_2
  L0_1.write_json(L2_2)
end


function wan6InfoV2Handle(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = require("xiaoqiang.util.XQSecureUtil")
  L2_2 = require("xiaoqiang.util.XQLanWanUtil")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = L3_2.isStrNil(A0_2)
  if L4_2 then
    A0_2 = "wan6"
  end
  L4_2 = 0
  L5_2 = {}
  L6_2 = L1_2.parseCmdline(A0_2)
  L7_2 = L2_2.getWan6InfoV2(L6_2)
  if L7_2 then
    L5_2.wan6_info = L7_2
  end
  if L4_2 ~= 0 then
    L8_2 = L1_1.getErrorMessage(L4_2)
    L5_2.msg = L8_2
  end
  L5_2.code = L4_2
  return L5_2
end


function getWan6InfoV2()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1.formvalue("wan6_name")
  if not L0_2 then
  end
  L1_2 = wan6InfoV2Handle("wan6")
  L0_1.write_json(L1_2)
end


function setWan6SwitchV2()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = {}
  L2_2 = require("xiaoqiang.util.XQSecureUtil")
  L3_2 = require("xiaoqiang.util.XQLanWanUtil")
  L5_2, L6_2 = L0_1.formvalue("enabled")
  L4_2 = tonumber(L5_2, L6_2)
  if not L4_2 then
    L0_2 = 1502
  elseif L4_2 ~= 0 and L4_2 ~= 1 then
  end
  if L0_2 == 0 then
    L3_2.setWan6Switch(L4_2)
  else
    L5_2 = L1_1.getErrorMessage(1523)
    L1_2.msg = L5_2
  end
  L1_2.code = L0_2
  L0_1.write_json(L1_2)
end


function getWan6SwitchV2()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 0
  L1_2 = {}
  L2_2 = require("xiaoqiang.util.XQLanWanUtil")
  L3_2 = L2_2.getWan6Switch()
  if not L3_2 then
    L3_2 = 1
  end
  L1_2.enabled = L3_2
  L1_2.code = L0_2
  L0_1.write_json(L1_2)
end


function setLan6V2()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = 0
  L1_2 = {}
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = require("luci.cbi.datatypes")
  L4_2 = require("xiaoqiang.util.XQLanWanUtil")
  L5_2 = L2_2.get(L2_2, "ipv6", "globals", "enabled")
  if not L5_2 then
    L5_2 = "1"
  end
  if L5_2 == "0" then
    L0_2 = 2609
  else
    L6_2 = {}
    L8_2, L9_2, L10_2, L11_2 = L0_1.formvalue("mode")
    L7_2 = tonumber(L8_2, L9_2, L10_2, L11_2)
    if not L7_2 then
      L7_2 = 0
    end
    L9_2, L10_2, L11_2 = L0_1.formvalue("ip6assign")
    L8_2 = tonumber(L9_2, L10_2, L11_2)
    if not L8_2 then
    end
    if L7_2 < 0 or 3 < L7_2 then
      L0_2 = 2607
    else
      L9_2 = L3_2.ip6prefix(64)
      if not L9_2 then
        L0_2 = 2604
      else
        L6_2.ip6assign = L8_2
        L4_2.setLan6Cfg(L7_2, L6_2)
      end
    end
  end
  if L0_2 ~= 0 then
    L6_2 = L1_1.getErrorMessage(L0_2)
    L1_2.msg = L6_2
  end
  L1_2.code = L0_2
  L0_1.write_json(L1_2)
end


function getLan6V2()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = 0
  L1_2 = {}
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = require("xiaoqiang.util.XQLanWanUtil")
  L4_2 = L2_2.get(L2_2, "ipv6", "globals", "enabled")
  if not L4_2 then
    L4_2 = "1"
  end
  if L4_2 == "0" then
  else
    L5_2 = L3_2.getLan6Cfg()
    if L5_2 then
      L1_2.lan6_cfg = L5_2
    end
  end
  if L0_2 ~= 0 then
    L5_2 = L1_1.getErrorMessage(2609)
    L1_2.msg = L5_2
  end
  L1_2.code = L0_2
  L0_1.write_json(L1_2)
end


function setIpv6Firewall()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_1.formvalue("mode")
  if not L2_2 then
  end
  L0_2.setIpv6FirewallV2("0")
  L0_1.write_json(L1_2)
end


function getIpv6Firewall()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_2.getIpv6FirewallV2()
  L2_2 = {}
  L2_2.code = L1_2
  L0_1.write_json(L2_2)
end


function setLanDhcp()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("luci.cbi.datatypes")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = 0
  L4_2 = {}
  L5_2 = L0_1.formvalue("start")
  L6_2 = L0_1.formvalue("end")
  L7_2 = L0_1.formvalue("startip")
  L8_2 = L0_1.formvalue("endip")
  L9_2 = L0_1.formvalue("leasetime")
  L10_2 = L0_1.formvalue("ignore")
  L11_2 = L0_1.formvalue("router")
  L12_2 = L0_1.formvalue("dns1")
  L13_2 = L0_1.formvalue("dns2")
  L14_2 = [[
 sleep 2;
                   /etc/init.d/network restart;
                   /sbin/phyhelper restart lan;
                   [ -f "/usr/sbin/port_service" ] && /usr/sbin/port_service restart;
                ]]
  L15_2 = tonumber(L10_2)
  if L15_2 == 1 then
    L0_2.setLanDHCPService(nil, nil, nil, nil, nil, L10_2, nil, nil, nil)
    L2_2.forkExec(L14_2)
  else
    L15_2 = nil
    L16_2 = unit
    if L9_2 then
      L16_2, L17_2 = L9_2.match(L9_2, "^(%d+)(%S+)")
      unit = L17_2
    end
    L16_2 = tonumber(L16_2)
    L15_2 = L16_2
    if L15_2 ~= nil then
      L16_2 = unit
      if L16_2 ~= "h" then
        L16_2 = unit
        if L16_2 ~= "m" then
          goto lbl_102
        end
      end
      if L12_2 and L12_2 ~= "" then
        L16_2 = L1_2.ipaddr(L12_2)
        if not L16_2 then
          goto lbl_102
        end
      end
      if not L13_2 or L13_2 == "" then
        goto lbl_104
      end
      L16_2 = L1_2.ipaddr(L13_2)
      if L16_2 then
        goto lbl_104
      end
    end
    ::lbl_102::
    L3_2 = 1537
    goto lbl_184
    ::lbl_104::
    L16_2 = unit
    if L16_2 ~= "h" or not (L15_2 < 1) and not (48 < L15_2) then
      L16_2 = unit
      if not (L16_2 == "m" and (L15_2 < 2 or 2880 < L15_2)) then
        goto lbl_120
      end
    end
    L3_2 = 1536
    goto lbl_184
    ::lbl_120::
    if L11_2 and L11_2 ~= "" then
      L16_2 = L1_2.ipaddr(L11_2)
      if not L16_2 then
        L3_2 = 1532
    end
    elseif L7_2 and L8_2 then
      L16_2 = L0_2.checkDhcpIpPool(0, L7_2, L8_2)
      L3_2 = L16_2
      if L3_2 == 0 then
        L0_2.setLanDHCPService(nil, nil, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
        L2_2.forkExec(L14_2)
      end
    elseif L5_2 and L6_2 then
      L16_2 = L0_2.checkDhcpIpPool(1, L5_2, L6_2)
      L3_2 = L16_2
      if L3_2 == 0 then
        L0_2.setLanDHCPService(L5_2, L6_2, nil, nil, L9_2, L10_2, L11_2, L12_2, L13_2)
        L2_2.forkExec(L14_2)
      end
    else
    end
  end
  ::lbl_184::
  L4_2.code = L3_2
  if L3_2 ~= 0 then
    L15_2 = L1_1.getErrorMessage(1537)
    L4_2.msg = L15_2
  end
  L0_1.write_json(L4_2)
end


function setWanMac()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.util.XQLanWanUtil")
  L2_2 = require("luci.cbi.datatypes")
  L3_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L4_2 = 0
  L5_2 = {}
  L6_2 = L0_1.formvalue("mac")
  L7_2 = L0_1.formvalue("wan_name")
  if not L7_2 then
    L7_2 = "WAN1"
  end
  if L6_2 then
    L8_2 = L2_2.macaddr(L6_2)
    if L8_2 then
      L8_2 = string.lower(L6_2)
      L8_2 = L6_2.match(L8_2, "^%x[1,3,5,7,9,b,d,f]")
      if L8_2 then
        L4_2 = 1637
      else
        L7_2 = L3_2.PS_WAN_SERVICE_NAME_MAP[L7_2] or L7_2
        if not L8_2 then
        end
        L8_2 = L1_2.setWanMac(L6_2, "wan")
        L0_2.check(0, L0_2.KEY_FUNC_MACCLONE, 1)
        if not L8_2 then
          L4_2 = 1537
        end
      end
  end
  else
  end
  L5_2.code = L4_2
  if L4_2 ~= 0 then
    L8_2 = L1_1.getErrorMessage(1523)
    L5_2.msg = L8_2
  end
  L0_1.write_json(L5_2)
end


function getWifiMacfilterInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = require("luci.util")
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = require("xiaoqiang.util.XQDeviceUtil")
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L0_1.formvalue("model")
  L3_2 = tonumber(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L4_2 = 0
  L5_2 = {}
  L6_2 = L1_2.getWiFiMacfilterInfo(L3_2)
  L7_2 = L2_2.getDeviceListV2(true, false, false)
  L8_2 = L2_2.getDeviceListV2(false, false, false)
  L9_2 = L6_2.enable
  L5_2.enable = L9_2
  L9_2 = L6_2.model
  L5_2.model = L9_2
  L9_2 = L6_2.maclist
  if L9_2 then
    L9_2, L10_2, L11_2 = ipairs(L7_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L13_2.added = 0
      L14_2, L15_2, L16_2 = ipairs(L6_2.maclist)
      for L17_2, L18_2 in L14_2, L15_2, L16_2 do
        L19_2 = L18_2.mac
        L20_2 = L13_2.mac
        if L19_2 == L20_2 then
          L13_2.added = 1
          break
        end
      end
    end
    L9_2, L10_2, L11_2 = ipairs(L8_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L0_2.contains(L6_2.weblist, L13_2.mac)
      if L14_2 then
        L13_2.added = 1
      else
        L13_2.added = 0
      end
    end
  end
  L5_2.code = 0
  L5_2.list = L7_2
  L9_2 = L6_2.maclist
  L5_2.macfilter = L9_2
  L9_2 = L6_2.weblist
  L5_2.weblist = L9_2
  L5_2.flist = L8_2
  L0_1.write_json(L5_2)
end


function setWifiMacfilter()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.util.XQWifiUtil")
  L3_2 = require("xiaoqiang.util.XQPushUtil")
  L4_2 = require("xiaoqiang.util.XQController")
  L5_2 = require("xiaoqiang.util.XQSynchrodata")
  L7_2, L8_2, L9_2, L10_2, L11_2 = L0_1.formvalue("enable")
  L6_2 = tonumber(L7_2, L8_2, L9_2, L10_2, L11_2)
  if L6_2 == 1 then
    L6_2 = true
    if L6_2 then
      goto lbl_31
    end
  end
  L6_2 = false
  ::lbl_31::
  L8_2, L9_2, L10_2, L11_2 = L0_1.formvalue("model")
  L7_2 = tonumber(L8_2, L9_2, L10_2, L11_2)
  if L6_2 then
    L11_2 = 0
    if L11_2 then
      goto lbl_46
    end
  end
  ::lbl_46::
  L0_2.check(0, L0_2.KEY_FUNC_WIRELESS_ACCESS, 1)
  if L7_2 and L7_2 == 0 then
    L0_2.check(0, L0_2.KEY_FUNC_WIRELESS_BLACK, 1)
  else
    L0_2.check(0, L0_2.KEY_FUNC_WIRELESS_WHITE, 1)
  end
  if L6_2 then
    L10_2 = "1"
    if L10_2 then
      goto lbl_70
    end
  end
  ::lbl_70::
  L3_2.pushConfig("auth", "0")
  if L6_2 then
    L9_2 = "1"
    if L9_2 then
      goto lbl_78
    end
  end
  ::lbl_78::
  L5_2.syncProtectionStatus("0", L7_2)
  L2_2.setWiFiMacfilterModel(L6_2, L7_2)
  L4_2.wifimacfilter(nil, L6_2, L7_2)
  L1_2.forkExec("/sbin/notice_tbus_device_maclist.sh")
  L8_2 = {}
  L8_2.code = 0
  L0_1.write_json(L8_2)
end


function editDevice()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = require("xiaoqiang.util.XQPushUtil")
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = require("xiaoqiang.util.XQController")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = require("luci.util")
  L5_2 = require("luci.cbi.datatypes")
  L6_2 = 0
  L7_2 = {}
  L11_2 = {}
  L11_2.name = "regex"
  L11_2.arg = "^[^`|$&]+$"
  L8_2 = L0_1.formvalue("mac", nil, L11_2)
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L0_1.formvalue("model")
  L9_2 = tonumber(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L0_1.formvalue("option")
  L10_2 = tonumber(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L11_2 = L3_2.isStrNil(L8_2)
  if L11_2 then
    L6_2 = 1523
  else
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2.split(L8_2, ";")
    L11_2, L12_2, L13_2 = ipairs(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    for L14_2, L15_2 in L11_2, L12_2, L13_2 do
      L16_2 = L3_2.isStrNil(L15_2)
      if not L16_2 then
        L16_2 = L5_2.macaddr(L15_2)
        if L16_2 then
          goto lbl_68
        end
      end
      L6_2 = 1523
      do break end
      goto lbl_80
      ::lbl_68::
      L16_2 = string.upper(L15_2)
      L16_2 = L15_2.match(L16_2, "^%x[1,3,5,7,9,B,D,F]")
      if L16_2 then
        L6_2 = 1637
        break
      end
      ::lbl_80::
    end
    if 0 == L6_2 then
      L13_2 = L4_2.split(L8_2, ";")
      L11_2 = L1_2.editWiFiMacfilterList(L9_2, L13_2, L10_2)
      if L11_2 and L11_2 == 1 then
      end
    end
  end
  L7_2.code = L6_2
  if L6_2 ~= 0 then
    L11_2 = L1_1.getErrorMessage(1591)
    L7_2.msg = L11_2
  else
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2.split(L8_2, ";")
    L11_2, L12_2, L13_2 = ipairs(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    for L14_2, L15_2 in L11_2, L12_2, L13_2 do
      L16_2 = os.execute
      L17_2 = string.format
      L18_2 = "milog.sh -m '{\"tag\":\"sec_nic_%slist\",\"mac\":\"%s\",\"enabled\":%s}'"
      if L9_2 == 1 then
        L19_2 = "white"
        if L19_2 then
          goto lbl_124
        end
      end
      ::lbl_124::
      if L10_2 == 1 then
        L21_2 = "false"
        if L21_2 then
          goto lbl_131
        end
      end
      ::lbl_131::
      L17_2, L18_2, L19_2, L20_2, L21_2 = L17_2(L18_2, "black", L15_2, "true")
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
    end
    L11_2 = require("xiaoqiang.util.XQSynchrodata")
    L0_2.pushConfig("auth", "1")
    L11_2.syncProtectionStatus("1", L9_2)
    L3_2.forkExec("/sbin/notice_tbus_device_maclist.sh")
  end
  L0_1.write_json(L7_2)
end


function manuallyAdd()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = require("xiaoqiang.util.XQPushUtil")
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("xiaoqiang.util.XQSecureUtil")
  L4_2 = require("luci.cbi.datatypes")
  L5_2 = 0
  L6_2 = {}
  L7_2 = L0_1.formvalue("mac")
  if not L7_2 then
    L7_2 = ""
  end
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L0_1.formvalue("name")
  L8_2 = L3_2.hackCharsCheck(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if not L8_2 then
    L8_2 = ""
  end
  L10_2, L11_2, L12_2, L13_2, L14_2 = L0_1.formvalue("model")
  L9_2 = tonumber(L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = L2_2.isStrNil(L7_2)
  if not L10_2 then
    L10_2 = L4_2.macaddr(L7_2)
    if L10_2 then
      goto lbl_52
    end
  end
  L6_2.code = 1523
  goto lbl_80
  ::lbl_52::
  L10_2 = string.upper(L7_2)
  L10_2 = L7_2.match(L10_2, "^%x[1,3,5,7,9,B,D,F]")
  if L10_2 then
    L5_2 = 1637
  else
    L10_2 = L1_2.addDevice(L9_2, L7_2, L8_2)
    if L10_2 and L10_2 == 1 then
      L5_2 = 1591
    elseif L10_2 and L10_2 == 3 then
    end
  end
  ::lbl_80::
  L6_2.code = L5_2
  if L5_2 ~= 0 then
    L10_2 = L1_1.getErrorMessage(1676)
    L6_2.msg = L10_2
  else
    L12_2 = "milog.sh -m '{\"tag\":\"sec_nic_%slist\",\"mac\":\"%s\",\"enabled\":true}'"
    if L9_2 == 1 then
      L13_2 = "white"
      if L13_2 then
        goto lbl_100
      end
    end
    ::lbl_100::
    L11_2, L12_2, L13_2, L14_2 = string.format(L12_2, "black", L7_2)
    os.execute(L11_2, L12_2, L13_2, L14_2)
    L10_2 = require("xiaoqiang.util.XQSynchrodata")
    L0_2.pushConfig("auth", "1")
    L10_2.syncProtectionStatus("1", L9_2)
    L2_2.forkExec("/sbin/notice_tbus_device_maclist.sh")
  end
  L0_1.write_json(L6_2)
end


function macBind()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = require("xiaoqiang.module.XQMacBind")
  L1_2 = require("xiaoqiang.util.XQSecureUtil")
  L2_2 = require("json")
  L3_2 = 0
  L4_2 = 0
  L5_2 = {}
  L7_2, L8_2 = L0_1.formvalue("data")
  L6_2 = L1_2.xssCheck(L7_2, L8_2)
  if L6_2 then
    L7_2 = L2_2.decode(L6_2)
    L7_2 = L0_2.addBinds(L7_2)
    L4_2 = L7_2
  else
    L3_2 = 1523
  end
  if L4_2 == 1 then
    L3_2 = 1593
  elseif L4_2 == 2 then
    L3_2 = 1592
  elseif L4_2 == 3 then
  end
  L5_2.code = L3_2
  if L3_2 ~= 0 then
    L7_2 = L1_1.getErrorMessage(1613)
    L5_2.msg = L7_2
  else
    L0_2.reload()
  end
  L0_1.write_json(L5_2)
end


function macUnbind()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = require("luci.util")
  L1_2 = require("xiaoqiang.module.XQMacBind")
  L2_2 = 0
  L3_2 = {}
  L4_2 = L0_1.formvalue("mac", nil, "string")
  L5_2 = nil
  if L4_2 then
    L6_2 = L0_2.split(L4_2, ";")
    L7_2 = #L6_2
    if 1 < L7_2 then
      L7_2 = L1_2.removeBinds(L6_2)
      L5_2 = L7_2
    else
      L7_2 = L1_2.removeBind(L4_2)
      L5_2 = L7_2
    end
  end
  if not L5_2 then
  end
  L3_2.code = L2_2
  if L2_2 ~= 0 then
    L6_2 = L1_1.getErrorMessage(1594)
    L3_2.msg = L6_2
  else
    L1_2.reload()
  end
  L0_1.write_json(L3_2)
end


function saveBind()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQMacBind")
  L2_2 = {}
  L2_2.code = 0
  L1_2.saveBindInfo()
  L1_2.reload()
  L0_1.write_json(L2_2)
end


function unbindAll()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQMacBind")
  L2_2 = {}
  L2_2.code = 0
  L1_2.unbindAll()
  L1_2.reload()
  L0_1.write_json(L2_2)
end


function getMacBindInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.util.XQDeviceUtil")
  L2_2 = require("xiaoqiang.module.XQMacBind")
  L3_2 = {}
  L3_2.code = 0
  L4_2 = {}
  L5_2 = L2_2.macBindInfo()
  L6_2 = L1_2.getDeviceList(true, true)
  if not L6_2 then
    L6_2 = {}
  end
  L7_2 = {}
  L8_2, L9_2, L10_2 = ipairs(L6_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = string.lower(L12_2.mac)
    if L13_2 then
      L14_2 = L5_2[L13_2].tag
      L12_2.tag = L14_2
    else
      L12_2.tag = 0
    end
    L14_2 = L12_2.port
    if L14_2 then
      L14_2 = L12_2.port
      if L14_2 ~= 3 then
        L14_2 = L12_2.isap
        if L14_2 == 0 then
          table.insert(L7_2, L12_2)
        end
      end
    end
  end
  L8_2, L9_2, L10_2 = pairs(L5_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = table.insert
    L14_2 = L4_2
    L15_2 = {}
    L16_2 = L12_2.name
    L15_2.name = L16_2
    L16_2 = string.upper(L12_2.mac)
    L15_2.mac = L16_2
    L16_2 = L12_2.ip
    L15_2.ip = L16_2
    L16_2 = L12_2.tag
    L15_2.tag = L16_2
    L16_2 = L12_2.instance
    L15_2.instance = L16_2
    L13_2(L14_2, L15_2)
  end
  L3_2.list = L4_2
  L3_2.devicelist = L7_2
  L8_2 = L0_2.getLanMask()
  L3_2.lanmask = L8_2
  L0_1.write_json(L3_2)
end


function getWanStatus()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = pppoeStatusHandle()
  L0_2.ipv4 = L1_2
  L1_2 = wan6InfoV2Handle()
  L0_2.ipv6 = L1_2
  L0_2.code = 0
  L0_1.write_json(L0_2)
end


function pppoeStatusHandle(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.util.XQLanWanUtil")
  L3_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L4_2 = L1_2.isStrNil(A0_2)
  if L4_2 then
    A0_2 = "WAN1"
  end
  L4_2 = L3_2.PS_WAN_SERVICE_NAME_MAP[A0_2]
  A0_2 = L4_2 or A0_2
  if not L4_2 then
    A0_2 = "wan"
  end
  L4_2 = 0
  L5_2 = L2_2.getPPPoEStatus(A0_2)
  if L5_2 then
    L6_2 = L5_2.errtype
    if L6_2 == 1 then
      L4_2 = 1603
    else
      L6_2 = L5_2.errtype
      if L6_2 == 2 then
        L4_2 = 1604
      else
        L6_2 = L5_2.errtype
        if L6_2 == 3 then
          L4_2 = 1605
        end
      end
    end
  else
  end
  if L4_2 ~= 0 then
    if L4_2 ~= 1602 then
      L8_2 = L1_1.getErrorMessage(1602)
      L9_2, L10_2 = tostring(L5_2.errcode)
      L6_2 = string.format("%s(%s)", L8_2, L9_2, L10_2)
      L5_2.msg = L6_2
    else
      L6_2 = L1_1.getErrorMessage(L4_2)
      L5_2.msg = L6_2
    end
  end
  L5_2.code = L4_2
  return L5_2
end


function pppoeStatus()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L0_1.formvalue("wan_name")
  if not L0_2 then
  end
  L1_2 = pppoeStatusHandle("WAN1")
  L0_1.write_json(L1_2)
end


function pppoeStop()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L2_2 = L0_1.formvalue("wan_name")
  if not L2_2 then
  end
  L3_2 = {}
  L3_2.code = 0
  L2_2 = L1_2.PS_WAN_SERVICE_NAME_MAP["WAN1"] or L2_2
  if not L4_2 then
  end
  L0_2.pppoeStop("wan")
  L0_1.write_json(L3_2)
end


function pppoeStart()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L2_2 = L0_1.formvalue("wan_name")
  if not L2_2 then
  end
  L3_2 = {}
  L3_2.code = 0
  L2_2 = L1_2.PS_WAN_SERVICE_NAME_MAP["WAN1"] or L2_2
  if not L4_2 then
  end
  L0_2.pppoeStart("wan")
  L0_1.write_json(L3_2)
end


function getQosInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQQoSUtil")
  L1_2 = require("xiaoqiang.XQPreference")
  L2_2 = {}
  L2_2.code = 0
  L3_2 = L0_2.qosStatus()
  L2_2.status = L3_2
  L4_2 = L3_2.on
  if L4_2 == 1 then
    L4_2 = L0_2.qosBand()
    L2_2.band = L4_2
    L4_2 = L0_2.qosList()
    L2_2.list = L4_2
    L4_2 = L0_2.guestQoSInfo()
    L2_2.guest = L4_2
  else
    L4_2 = L0_2.qosBandinConf()
    L2_2.band = L4_2
  end
  L0_1.write_json(L2_2)
end


function qosSwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.util.XQQoSUtil")
  L2_2 = {}
  L2_2.code = 0
  L4_2, L5_2, L6_2, L7_2 = L0_1.formvalue("on")
  L3_2 = tonumber(L4_2, L5_2, L6_2, L7_2)
  if L3_2 == 1 then
    L3_2 = true
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = false
  ::lbl_21::
  if L3_2 then
    L7_2 = 0
    if L7_2 then
      goto lbl_30
    end
  end
  ::lbl_30::
  L0_2.check(0, L0_2.KEY_FUNC_QOS, 1)
  L4_2 = L1_2.qosSwitch(L3_2)
  if not L4_2 then
    L2_2.code = 1606
  end
  L5_2 = L2_2.code
  if L5_2 ~= 0 then
    L5_2 = L1_1.getErrorMessage(L2_2.code)
    L2_2.msg = L5_2
  end
  L0_1.write_json(L2_2)
end


function qosMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQQoSUtil")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2, L5_2, L6_2 = L0_1.formvalue("mode")
  L2_2 = tonumber(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L0_2.qosStatus()
  L4_2 = nil
  if L3_2 then
    L5_2 = L3_2.on
    if L5_2 == 1 then
      L5_2 = L0_2.setQoSMode(L2_2)
      L4_2 = L5_2
  end
  else
    L1_2.code = 1607
  end
  if not L4_2 then
    L5_2 = L1_2.code
    if L5_2 == 0 then
      L1_2.code = 1606
    end
  end
  L5_2 = L1_2.code
  if L5_2 ~= 0 then
    L5_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L5_2
  else
    L5_2 = require("xiaoqiang.util.XQSynchrodata")
    L5_2.syncQosInfo()
  end
  L0_1.write_json(L1_2)
end


function qosLimit()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = require("xiaoqiang.util.XQQoSUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_1.formvalue("mac")
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L0_1.formvalue("upload")
  L3_2 = tonumber(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L0_1.formvalue("download")
  L4_2 = tonumber(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L0_1.formvalue("level")
  L5_2 = tonumber(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = nil
  L7_2 = L0_2.qosStatus()
  if L7_2 then
    L8_2 = L7_2.on
    if L8_2 == 1 then
      if L2_2 and L3_2 and L4_2 and L5_2 then
        L8_2 = L0_2.qosOnLimit(L2_2, L3_2 / 100, L4_2 / 100, L5_2, L5_2)
        L6_2 = L8_2
      else
        L1_2.code = 1523
      end
  end
  else
    L1_2.code = 1607
  end
  if not L6_2 then
    L8_2 = L1_2.code
    if L8_2 == 0 then
      L1_2.code = 1606
    end
  end
  L8_2 = L1_2.code
  if L8_2 ~= 0 then
    L8_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L8_2
  end
  L0_1.write_json(L1_2)
end


function qosOffLimit()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQQoSUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_1.formvalue("mac")
  L3_2 = L0_2.qosStatus()
  L4_2 = nil
  if L3_2 then
    L5_2 = L3_2.on
    if L5_2 == 1 then
      L5_2 = L0_2.qosOffLimit(L2_2)
      L4_2 = L5_2
  end
  else
    L1_2.code = 1607
  end
  if not L4_2 then
    L5_2 = L1_2.code
    if L5_2 == 0 then
      L1_2.code = 1606
    end
  end
  L5_2 = L1_2.code
  if L5_2 ~= 0 then
    L5_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L5_2
  end
  L0_1.write_json(L1_2)
end


function setBand()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = require("xiaoqiang.util.XQQoSUtil")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L0_1.formvalue("upload")
  L2_2 = tonumber(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2, L5_2, L6_2, L7_2, L8_2 = L0_1.formvalue("download")
  L3_2 = tonumber(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = nil
  L5_2 = L0_2.qosStatus()
  if L2_2 and L3_2 then
    L6_2 = L0_2.setQosBand(L2_2, L3_2)
    L4_2 = L6_2
    if not L4_2 then
      L6_2 = L0_2.setQosBandinConf(L2_2, L3_2)
      L4_2 = L6_2
    end
  else
    L1_2.code = 1523
  end
  if not L4_2 then
    L6_2 = L1_2.code
    if L6_2 == 0 then
      L1_2.code = 1606
    end
  end
  L6_2 = L1_2.code
  if L6_2 ~= 0 then
    L6_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L6_2
  end
  L0_1.write_json(L1_2)
end


function ddnsStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.XQPreference")
  L1_2 = require("xiaoqiang.module.XQDDNS")
  L2_2 = {}
  L2_2.code = 0
  L3_2 = L0_2.get("DDNS_FLAG")
  if L3_2 then
    L2_2.flag = 0
  else
    L2_2.flag = 1
    L0_2.set("DDNS_FLAG", "1")
  end
  L4_2 = L1_2.ddnsInfo()
  L5_2 = L4_2.on
  L2_2.on = L5_2
  L5_2 = L4_2.list
  L2_2.list = L5_2
  L0_1.write_json(L2_2)
end


function ddnsSwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.module.XQDDNS")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2 = L0_1.formvalue("on")
  L2_2 = tonumber(L3_2, L4_2)
  if L2_2 == 1 then
    L2_2 = true
    if L2_2 then
      goto lbl_18
    end
  end
  ::lbl_18::
  L0_2.ddnsSwitch(false)
  L0_1.write_json(L1_2)
end


function addServer()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = require("xiaoqiang.module.XQDDNS")
  L1_2 = require("xiaoqiang.util.XQSecureUtil")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = {}
  L3_2.code = 0
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L0_1.formvalue("id")
  L4_2 = tonumber(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L0_1.formvalue("enable")
  L5_2 = tonumber(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if L5_2 == 1 then
    L5_2 = 1
    if L5_2 then
      goto lbl_30
    end
  end
  L5_2 = 0
  ::lbl_30::
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L0_1.formvalue("domain")
  L6_2 = L1_2.hackCharsCheck(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = L0_1.formvalue("username")
  if not L7_2 then
    L7_2 = ""
  end
  L8_2 = L0_1.formvalue("password")
  if not L8_2 then
    L8_2 = ""
  end
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L0_1.formvalue("checkinterval")
  L9_2 = tonumber(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L0_1.formvalue("forceinterval")
  L10_2 = tonumber(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if not (L4_2 and L9_2) or not L10_2 then
    L3_2.code = 1612
  else
    if not (L9_2 <= 0) and not (L10_2 <= 0) then
      L11_2 = L2_2.isStrNil(L6_2)
      if not L11_2 then
        goto lbl_84
      end
    end
    L3_2.code = 1523
    goto lbl_96
    ::lbl_84::
    L11_2 = L0_2.setDdns(L4_2, L5_2, L7_2, L8_2, L9_2, L10_2, L6_2)
    if not L11_2 then
      L3_2.code = 1606
    end
  end
  ::lbl_96::
  L11_2 = L3_2.code
  if L11_2 ~= 0 then
    L11_2 = L1_1.getErrorMessage(L3_2.code)
    L3_2.msg = L11_2
  end
  L0_1.write_json(L3_2)
end


function deleteServer()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.module.XQDDNS")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2 = L0_1.formvalue("id")
  L2_2 = tonumber(L3_2, L4_2)
  if not L2_2 then
    L1_2.code = 1612
  else
    L3_2 = L0_2.deleteDdns(L2_2)
    if not L3_2 then
      L1_2.code = 1606
    end
  end
  L3_2 = L1_2.code
  if L3_2 ~= 0 then
    L3_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L3_2
  end
  L0_1.write_json(L1_2)
end


function serverSwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.module.XQDDNS")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2, L5_2, L6_2 = L0_1.formvalue("id")
  L2_2 = tonumber(L3_2, L4_2, L5_2, L6_2)
  L4_2, L5_2, L6_2 = L0_1.formvalue("on")
  L3_2 = tonumber(L4_2, L5_2, L6_2)
  if L3_2 == 1 then
    L3_2 = true
    if L3_2 then
      goto lbl_24
    end
  end
  ::lbl_24::
  if not L2_2 then
    L1_2.code = 1612
  else
    L4_2 = L0_2.ddnsServerSwitch(L2_2, false)
    if not L4_2 then
      L1_2.code = 1606
    end
  end
  L4_2 = L1_2.code
  if L4_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L4_2
  end
  L0_1.write_json(L1_2)
end


function ddnsReload()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.module.XQDDNS")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.reload()
  if not L2_2 then
    L1_2.code = 1606
  end
  L2_2 = L1_2.code
  if L2_2 ~= 0 then
    L2_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L2_2
  end
  L0_1.write_json(L1_2)
end


function getServer()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.module.XQDDNS")
  L1_2 = {}
  L3_2, L4_2, L5_2 = L0_1.formvalue("id")
  L2_2 = tonumber(L3_2, L4_2, L5_2)
  L3_2 = L0_2.getDdns(L2_2)
  if L3_2 then
    L1_2.code = 0
  else
    L1_2.code = 1614
  end
  L4_2 = L3_2.code
  if L4_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L4_2
  end
  L0_1.write_json(L1_2)
end


function ddnsEdit()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = require("xiaoqiang.module.XQDDNS")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L0_1.formvalue("id")
  L2_2 = tonumber(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L0_1.formvalue("enable")
  L3_2 = tonumber(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  if L3_2 == 1 then
    L3_2 = 1
    if L3_2 then
      goto lbl_24
    end
  end
  L3_2 = 0
  ::lbl_24::
  L4_2 = L0_1.formvalue("domain")
  L5_2 = L0_1.formvalue("username")
  L6_2 = L0_1.formvalue("password")
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L0_1.formvalue("checkinterval")
  L7_2 = tonumber(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L0_1.formvalue("forceinterval")
  L8_2 = tonumber(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L9_2 = L0_2.editDdns(L2_2, L3_2, L5_2, L6_2, L7_2, L8_2, L4_2)
  if not L9_2 then
    L1_2.code = 1606
  end
  L10_2 = L1_2.code
  if L10_2 ~= 0 then
    L10_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L10_2
  end
  L0_1.write_json(L1_2)
end


function getWanSpeed()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_2.getWanSpeed()
  L2_2 = {}
  L2_2.code = 0
  L2_2.speed = L1_2
  L0_1.write_json(L2_2)
end


function setWanSpeed()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L2_2 = L0_1.formvalue("wan_name")
  if not L2_2 then
  end
  L4_2, L5_2, L6_2, L7_2 = L0_1.formvalue("speed")
  L3_2 = tonumber(L4_2, L5_2, L6_2, L7_2)
  L4_2 = {}
  L4_2.code = 0
  L2_2 = L1_2.PS_WAN_SERVICE_NAME_MAP["WAN1"] or L2_2
  if not L5_2 then
  end
  L5_2 = L0_2.setWanSpeed(L3_2, "wan")
  if not L5_2 then
    L4_2.code = 1523
  end
  L6_2 = L4_2.code
  if L6_2 ~= 0 then
    L6_2 = L1_1.getErrorMessage(L4_2.code)
    L4_2.msg = L6_2
  end
  L0_1.write_json(L4_2)
end


function GetSFPSpeed()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.XQPreference")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2, L5_2 = L0_2.get("SFP_SPEED", 0)
  L2_2 = tonumber(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.mode = L2_2
  L0_1.write_json(L1_2)
end


function SetSFPSpeed()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.XQPreference")
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = {}
  L4_2.code = 0
  L4_2.wait = 0
  L5_2 = L0_1.formvalue("sfp_mode", nil, "numberstr")
  L0_2.log(5, "SetSFPSpeed")
  L6_2 = L2_2.get(L2_2, "misc", "sw_reg", "sfp_port")
  L10_2 = tostring(L6_2)
  L12_2 = tostring(L5_2)
  L0_2.log(5, "sfp_port: " .. L10_2 .. " mode: " .. L12_2)
  if L5_2 and L6_2 then
    L1_2.set("SFP_SPEED", L5_2)
    L9_2 = tostring(L6_2)
    L11_2 = tostring(L5_2)
    L3_2.forkExec("/sbin/phyhelper mode set " .. L9_2 .. " " .. L11_2 .. " &")
  else
    L4_2.code = 1537
  end
  L7_2 = L4_2.code
  if L7_2 ~= 0 then
    L7_2 = L1_1.getErrorMessage(L4_2.code)
    L4_2.msg = L7_2
  end
  L0_1.write_json(L4_2)
end


function setWanLanSwap()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_1.formvalue("mode")
  L2_2 = L0_1.formvalue("flg")
  if not L2_2 then
  end
  L3_2 = {}
  L3_2.code = 0
  L4_2 = L0_2.setWanLanSwap(L1_2, "0")
  if not L4_2 then
    L3_2.code = 1523
  end
  L5_2 = L3_2.code
  if L5_2 ~= 0 then
    L5_2 = L1_1.getErrorMessage(L3_2.code)
    L3_2.msg = L5_2
  end
  L0_1.write_json(L3_2)
end


function getWanPortStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_1.formvalue("mode")
  L2_2 = {}
  L2_2.code = 0
  L3_2 = L0_2.getWanPortStatus(L1_2)
  if L3_2 == 0 then
    L2_2.code = 99
  elseif L3_2 == 1 then
    L2_2.code = 0
  elseif L3_2 == 2 then
    L2_2.code = 1
  else
    L2_2.code = 1523
  end
  L4_2 = L2_2.code
  if L4_2 == 1523 then
    L4_2 = L1_1.getErrorMessage(L2_2.code)
    L2_2.msg = L4_2
  end
  L0_1.write_json(L2_2)
end


function getWanLanPort()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.XQPreference")
  L2_2 = require("xiaoqiang.common.XQConfigs")
  L3_2 = L0_1.formvalue("mode")
  L4_2 = require("luci.model.uci")
  L4_2 = L4_2.cursor()
  L5_2 = {}
  L6_2 = 0
  if L3_2 then
    L7_2 = L0_2.getWanLanType(L3_2)
    if L7_2 == false then
      L6_2 = 1524
    elseif L3_2 == "2.5G" then
      L5_2["2GwanType"] = L7_2
      L8_2 = L4_2.get(L4_2, "network", "wan", "username")
      L5_2["2GpppoeName"] = L8_2
      L8_2 = L4_2.get(L4_2, "network", "wan", "password")
      L5_2["2GpppoePassword"] = L8_2
    else
      L5_2["1GwanType"] = L7_2
      L8_2 = L4_2.get(L4_2, "network", "wan", "username")
      L5_2["1GpppoeName"] = L8_2
      L8_2 = L4_2.get(L4_2, "network", "wan", "password")
      L5_2["1GpppoePassword"] = L8_2
    end
  end
  if L6_2 ~= 0 then
    L7_2 = L1_1.getErrorMessage(L6_2)
    L5_2.msg = L7_2
  end
  L5_2.code = L6_2
  L0_1.write_json(L5_2)
end


function getWanLanMode()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = {}
  L2_2 = L0_2.getWanLanMode()
  L1_2.mode = L2_2
  L0_1.write_json(L1_2)
end


function setWanLanPort()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_1.formvalue("mode")
  L2_2 = {}
  L2_2.code = 0
  L3_2 = L0_2.setWanLanPort(L1_2)
  if not L3_2 then
    L2_2.code = 1523
  end
  L4_2 = L2_2.code
  if L4_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(L2_2.code)
    L2_2.msg = L4_2
  end
  L0_1.write_json(L2_2)
end


function pppoeCatch()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = {}
  L1_2.code = 0
  L1_2.service = ""
  L1_2.name = ""
  L1_2.passwd = ""
  L2_2 = L0_2.pppoeCatch(50)
  L3_2 = L2_2.code
  if L3_2 == 0 then
    L3_2 = L2_2.service
    L1_2.service = L3_2
    L3_2 = L2_2.pppoename
    L1_2.name = L3_2
    L3_2 = L2_2.pppoepasswd
    L1_2.passwd = L3_2
  else
    L1_2.code = 1621
  end
  L3_2 = L1_2.code
  if L3_2 ~= 0 then
    L3_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L3_2
  end
  L0_1.write_json(L1_2)
end


function getScanList()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = {}
  L2_2.ssid = ""
  L2_2.band = ""
  L3_2 = L0_2.apcli_get_scanlist(L2_2)
  L1_2.list = L3_2
  L0_1.write_json(L1_2)
end


function disableap()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.module.XQAPModule")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = L0_2.apcli_get_active()
  L5_2 = {}
  L5_2.code = 0
  L1_2.check(0, L1_2.KEY_FUNC_WIFI_RELAY, 1)
  L6_2, L7_2, L8_2, L9_2 = L2_2.disableWifiAPMode(L4_2)
  L5_2.ssid = L7_2
  L5_2.ssid5G = L8_2
  L5_2.ssid5G2 = L9_2
  L5_2.lanip = L6_2
  L0_1.write_json(L5_2)
end


function getMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.XQPreference")
  L2_2 = require("xiaoqiang.util.XQWifiUtil")
  L3_2 = require("xiaoqiang.util.XQLanWanUtil")
  L4_2 = nil
  L5_2 = {}
  L5_2.code = 0
  L5_2.mode = 0
  L6_2 = L0_2.getNetMode()
  L7_2 = L3_2.getLanGwaddr()
  L8_2 = L1_2.get("ap_hostname", "")
  if L6_2 == "lanapmode" then
    L5_2.mode = 2
    L5_2.hostip = L7_2
    L5_2.hostname = L8_2
  elseif L6_2 == "wifiapmode" then
    L5_2.mode = 1
    L5_2.hostip = L7_2
    L5_2.hostname = L8_2
    L9_2 = L2_2.apcli_get_active()
    L9_2 = L2_2.apcli_get_wifinet(L9_2)
    if L9_2 then
      L10_2 = L9_2.ssid(L9_2)
      L5_2.ssid = L10_2
    else
      L5_2.mode = 0
    end
  end
  L0_1.write_json(L5_2)
end


function getWanLinkStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = L0_1.formvalue("wan_sec")
  if not L1_2 then
  end
  L2_2 = {}
  L2_2.code = 0
  L2_2.link = 0
  L3_2 = L0_2.getWanLink("wan")
  if L3_2 then
    L2_2.link = 1
  end
  L0_1.write_json(L2_2)
end


function _savePassword(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = require("xiaoqiang.util.XQSecureUtil")
  L4_2 = 0
  L5_2 = luci.dispatcher.getremotemac()
  L6_2 = L3_2.checkNonce(A0_2, L5_2)
  if L6_2 then
    L7_2 = L3_2.checkUser("admin", A0_2, A1_2)
    if L7_2 then
      L8_2 = L3_2.saveCiphertextPwd("admin", A2_2)
      if L8_2 then
        L4_2 = 0
      else
        L4_2 = 1553
      end
    else
      L4_2 = 1552
    end
  else
    L4_2 = 1582
  end
  return L4_2
end


function setWifiApMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.module.XQAPModule")
  L3_2 = require("xiaoqiang.util.XQSysUtil")
  L4_2 = require("xiaoqiang.util.XQWifiUtil")
  L5_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L6_2 = {}
  L6_2.code = 0
  L7_2 = L0_1.formvalue("ssid")
  L8_2 = L0_1.formvalue("password")
  L9_2 = L0_1.formvalue("nssid")
  L10_2 = L0_1.formvalue("nencryption")
  L11_2 = L0_1.formvalue("npassword")
  L12_2 = L0_1.formvalue("nssid5G")
  L13_2 = L0_1.formvalue("nssid5G2")
  L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2 = L0_1.formvalue("initialize")
  L14_2 = tonumber(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
  if L14_2 == 1 then
    L14_2 = 1
    if L14_2 then
      goto lbl_61
    end
  end
  L14_2 = 0
  ::lbl_61::
  L15_2 = L0_1.formvalue("nonce")
  L16_2 = L0_1.formvalue("band")
  L17_2 = L0_1.formvalue("newPwd")
  L18_2 = L0_1.formvalue("oldPwd")
  L19_2 = L0_1.formvalue("channel")
  L20_2 = L0_1.formvalue("enctype")
  L21_2 = L0_1.formvalue("encryption")
  L22_2 = nil
  L0_2.check(0, L0_2.KEY_FUNC_WIFI_RELAY, 1)
  L23_2 = L5_2.psMultiwanEnable()
  if 1 == L23_2 then
    L6_2.code = 3000
  elseif not L7_2 then
    L6_2.code = 1523
  end
  L23_2 = L6_2.code
  if 0 == L23_2 then
    L23_2 = L2_2.setWifiAPMode(L7_2, L8_2, L20_2, L21_2, L16_2, L19_2, bandwidth, L9_2, L10_2, L11_2, L12_2)
    L23_2 = L23_2.scan
    if not L23_2 then
      L6_2.code = 1617
    else
      L23_2 = L22_2.connected
      if L23_2 then
        L23_2 = L1_2.isStrNil(L22_2.ip)
        if L23_2 then
          L6_2.code = 1615
        else
          L23_2 = L22_2.ip
          L6_2.ip = L23_2
          L23_2, L24_2, L25_2 = L4_2.getWifissid()
          L6_2.ssid5G2 = L25_2
          L6_2.ssid5G = L24_2
          L6_2.ssid = L23_2
        end
      else
        L6_2.code = 1616
        L23_2 = L1_1.getErrorMessage(L6_2.code)
        L25_2 = tostring(L22_2.conerrmsg)
        L23_2 = L23_2 .. "(" .. L25_2 .. ")"
        L6_2.msg = L23_2
      end
    end
  end
  L23_2 = L6_2.code
  if L23_2 ~= 0 then
    L23_2 = L6_2.code
    if L23_2 ~= 1616 then
      L23_2 = L1_1.getErrorMessage(L6_2.code)
      L6_2.msg = L23_2
  end
  else
    L23_2 = L6_2.code
    if L23_2 == 0 then
      if L14_2 == 1 then
        L23_2 = L1_2.isStrNil(L22_2.ssid)
        if not L23_2 then
          L3_2.setRouterName(L22_2.ssid)
          if L15_2 and L17_2 and L18_2 then
            L23_2 = _savePassword(L15_2, L18_2, L17_2)
            L6_2.code = L23_2
          end
        end
      end
      L3_2.setInited()
      L2_2.actionForEnableWifiAP()
    end
  end
  L0_1.write_json(L6_2)
end


function appSetWifiApMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.module.XQAPModule")
  L3_2 = require("xiaoqiang.util.XQSysUtil")
  L4_2 = require("xiaoqiang.util.XQWifiUtil")
  L5_2 = require("luci.json")
  L6_2 = L0_1.formvalue("ssid")
  L7_2 = L0_1.formvalue("password")
  L8_2 = L0_1.formvalue("nssid")
  L9_2 = L0_1.formvalue("nencryption")
  L10_2 = L0_1.formvalue("npassword")
  L11_2 = L0_1.formvalue("nssid5G")
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L0_1.formvalue("initialize")
  L12_2 = tonumber(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  if L12_2 == 1 then
    L12_2 = 1
    if L12_2 then
      goto lbl_55
    end
  end
  L12_2 = 0
  ::lbl_55::
  L13_2 = L0_1.formvalue("nonce")
  L14_2 = L0_1.formvalue("band")
  L15_2 = L0_1.formvalue("newPwd")
  L16_2 = L0_1.formvalue("oldPwd")
  L17_2 = L0_1.formvalue("channel")
  L18_2 = L0_1.formvalue("enctype")
  L19_2 = L0_1.formvalue("encryption")
  L20_2 = nil
  L0_2.check(0, L0_2.KEY_FUNC_WIFI_RELAY, 1)
  L21_2 = {}
  L21_2.code = 0
  L22_2 = L0_1.formvalue("band")
  L21_2.band = L22_2
  L22_2 = L0_1.formvalue("nonce")
  L21_2.nonce = L22_2
  L22_2 = L0_1.formvalue("newPwd")
  L21_2.newPwd = L22_2
  L22_2 = L0_1.formvalue("oldPwd")
  L21_2.oldPwd = L22_2
  L22_2 = L0_1.formvalue("nssid")
  L21_2.nssid = L22_2
  L22_2 = L0_1.formvalue("nencryption")
  L21_2.nencryption = L22_2
  L22_2 = L0_1.formvalue("npassword")
  L21_2.npassword = L22_2
  L22_2 = L0_1.formvalue("nssid5G")
  L21_2.nssid5G = L22_2
  if L6_2 then
    L22_2 = L2_2.appSetWifiAPMode(L6_2, L7_2, L18_2, L19_2, L14_2, L17_2, bandwidth, L8_2, L9_2, L10_2, L11_2)
    L22_2 = L22_2.scan
    if not L22_2 then
      L21_2.code = 1617
    else
      L22_2 = L20_2.connected
      if L22_2 then
        L22_2 = L20_2.ifname
        L21_2.ifname = L22_2
        L22_2 = L20_2.ssid
        L21_2.ssid = L22_2
        L22_2 = L20_2.password
        L21_2.password = L22_2
        L22_2 = L20_2.enctype
        L21_2.enctype = L22_2
        L22_2 = L20_2.encryption
        L21_2.encryption = L22_2
        L22_2 = L20_2.conerrmsg
        L21_2.conerrmsg = L22_2
        L22_2 = L20_2.oldlan
        L21_2.oldlan = L22_2
      else
        L21_2.code = 1616
        L22_2 = L1_1.getErrorMessage(L21_2.code)
        L24_2 = tostring(L20_2.ssid)
        L22_2 = L22_2 .. "(" .. L24_2 .. ")"
        L21_2.msg = L22_2
      end
    end
  else
    L21_2.code = 1523
  end
  L22_2 = L21_2.code
  if L22_2 ~= 0 then
    L22_2 = L21_2.code
    if L22_2 ~= 1616 then
      L22_2 = L1_1.getErrorMessage(L21_2.code)
      L21_2.msg = L22_2
    end
  end
  L23_2 = "cat /proc/uptime | awk '{print $1}'"
  L22_2 = io.popen(L23_2)
  L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L22_2.read(L22_2, "*all")
  L23_2 = string.trim(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L21_2.uptime = L23_2
  L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = io.open("/tmp/luci_set_wifi_ap_mode_result", "w")
  L23_2 = assert(L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L24_2 = L5_2.encode(L21_2)
  L23_2.write(L23_2, L24_2)
  L23_2.close(L23_2)
  L25_2 = L21_2.code
  if L25_2 == 0 then
    L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = os.execute("sleep 2;dhcp_apclient.sh start " .. L21_2.ifname)
    L25_2 = tonumber(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    L0_2.log(6, "dhcpcode:", L25_2)
    if L25_2 ~= 0 then
      L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = os.execute("sleep 2;dhcp_apclient.sh start br-lan")
      L26_2 = tonumber(L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      L25_2 = L26_2
    end
  end
  L0_1.write_json(L21_2)
end


function wifiAPserviceRestart()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.util.XQSysUtil")
  L2_2 = require("xiaoqiang.module.XQAPModule")
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L0_1.formvalue("initialize")
  L3_2 = tonumber(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L3_2 == 1 then
    L3_2 = 1
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = 0
  ::lbl_22::
  L4_2 = require("luci.json")
  L5_2 = {}
  L5_2.code = ""
  L6_2 = io.open("/tmp/luci_set_wifi_ap_mode_result", "r")
  if L6_2 == nil then
    L5_2.code = 2
  else
    L7_2 = L6_2.read(L6_2, "*a")
    L8_2 = L4_2.decode(L7_2)
    L6_2.close(L6_2)
    L10_2 = "cat /proc/uptime | awk '{print $1}'"
    L9_2 = io.popen(L10_2)
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2.read(L9_2, "*all")
    L10_2 = string.trim(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2 = L10_2 - L8_2.uptime
    if 300 < L11_2 then
      L5_2.code = 3
    end
    L11_2 = L8_2.code
    if L11_2 then
      L11_2 = L8_2.code
      if L11_2 == 0 then
        L5_2.code = 0
        L11_2 = L5_2.nonce
        L12_2 = L5_2.newPwd
        L13_2 = L5_2.oldPwd
        if L3_2 == 1 then
          L14_2 = XQFunction.isStrNil(L5_2.ssid)
          if not L14_2 then
            L1_2.setRouterName(L5_2.ssid)
            if L11_2 and L12_2 and L13_2 then
              L14_2 = _savePassword(L11_2, L13_2, L12_2)
              L5_2.code = L14_2
            end
          end
        end
        L2_2.setWifiAPModeConfig()
        L1_2.setInited()
        L2_2.actionForEnableWifiAP()
      end
    end
    L11_2 = L8_2.msg
    L5_2.msg = L11_2
  end
  L0_1.write_json(L5_2)
end


function getModeStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("luci.json")
  L1_2 = {}
  L1_2.code = ""
  L2_2 = io.open("/tmp/luci_set_wifi_ap_mode_result", "r")
  if L2_2 == nil then
    L1_2.code = 2
  else
    L3_2 = L2_2.read(L2_2, "*a")
    L4_2 = L0_2.decode(L3_2)
    L2_2.close(L2_2)
    L5_2 = L4_2.ipaddr
    if L5_2 then
      L5_2 = L4_2.code
      if L5_2 == 0 then
        L1_2.code = 0
    end
    else
      L1_2.code = 1
    end
  end
  L0_1.write_json(L1_2)
end


function getActiveApcliIndex()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = L1_2.get_active_apcli_index()
  L0_2.index = L2_2
  L0_1.write_json(L0_2)
end


function write_json_tmpfile(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    return
  else
    L1_2 = type(A0_2)
    if L1_2 == "table" then
      L1_2 = require("luci.json")
      L3_2 = L1_2.decode(A0_2)
      os.execute("echo \"" .. L3_2 .. "\" > /tmp/luci_set_auto_wifi_ap_mode_result")
    else
      L1_2 = type(A0_2)
      if L1_2 ~= "number" then
        L1_2 = type(A0_2)
        if L1_2 ~= "boolean" then
          goto lbl_36
        end
      end
      do return end
      goto lbl_37
      ::lbl_36::
      return
    end
  end
  ::lbl_37::
end


function setPeerWifiAutoAPMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("xiaoqiang.module.XQAPModule")
  L4_2 = require("xiaoqiang.util.XQSysUtil")
  L5_2 = require("xiaoqiang.util.XQWifiUtil")
  L6_2 = require("xiaoqiang.module.XQAPModule")
  L7_2 = require("xiaoqiang.module.XQExtendWifi")
  L8_2 = require("luci.model.uci")
  L8_2 = L8_2.cursor()
  L9_2 = {}
  L9_2.code = 0
  L10_2 = L0_1.formvalue("ssid")
  L11_2 = L0_1.formvalue("password")
  L12_2 = L0_1.formvalue("band")
  L13_2 = L0_1.formvalue("channel")
  L14_2 = L0_1.formvalue("enctype")
  L15_2 = L0_1.formvalue("encryption")
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2 = L1_2.log
  L19_2(1, "ssid:" .. L10_2 .. " password:" .. L11_2 .. "band:" .. L12_2 .. "channel:" .. L13_2 .. "enctype:" .. L14_2 .. "enctyption" .. L15_2)
  L19_2 = L5_2.getAllWifiInfo()
  L20_2 = L19_2[1]
  if L20_2 then
    L20_2 = L19_2[1].status
    if L20_2 == "1" then
      L20_2 = L19_2[1].ssid
      self_ssid = L20_2
      L17_2 = L19_2[1].password
      if L17_2 == nil then
        L17_2 = ""
      end
      L18_2 = "2g"
  end
  else
    L20_2 = L19_2[2]
    if L20_2 then
      L20_2 = wifinfo[2].status
      if L20_2 == "1" then
        L20_2 = L19_2[2].ssid
        self_ssid = L20_2
        L1_2.log(1, "ssid:" .. self_ssid .. " password: " .. L19_2[2].password .. " admin_password: " .. admin_password .. " band" .. "5g")
    end
    else
      L9_2.code = 1646
      L20_2 = L1_1.getErrorMessage(L9_2.code)
      L9_2.msg = L20_2
      L1_2.log("get self wifi info error")
      L0_1.write_json(L9_2)
      return
    end
  end
  L20_2 = L8_2.get(L8_2, "account", "common", "admin")
  L21_2 = L6_2.extendwifi_set_connect(L10_2, L11_2, L14_2, L15_2, L12_2, L13_2)
  L22_2 = L21_2.ip
  if L22_2 ~= "" then
    L9_2.code = 0
    L9_2.msg = "connect succces!"
  else
    L22_2 = L21_2.connected
    if L22_2 then
      L22_2 = L21_2.dhcpcode
      if L22_2 == 100 then
        L9_2.code = 1646
        L22_2 = L1_1.getErrorMessage(L9_2.code)
        L9_2.msg = L22_2
      else
        L22_2 = L21_2.dhcpcode
        if L22_2 == 2 then
          L9_2.code = 1647
          L22_2 = L1_1.getErrorMessage(L9_2.code)
          L9_2.msg = L22_2
        else
          L22_2 = L21_2.dhcpcode
          if L22_2 == 102 then
            L9_2.code = 1648
            L22_2 = L1_1.getErrorMessage(L9_2.code)
            L9_2.msg = L22_2
          else
            L22_2 = L21_2.dhcpcode
            if L22_2 ~= 105 then
              L22_2 = L21_2.dhcpcode
              if L22_2 ~= 106 then
                goto lbl_198
              end
            end
            L9_2.code = 1649
            L22_2 = L1_1.getErrorMessage(L9_2.code)
            L9_2.msg = L22_2
            goto lbl_236
            ::lbl_198::
            L22_2 = L21_2.dhcpcode
            if L22_2 == 107 then
              L9_2.code = 1650
              L22_2 = L1_1.getErrorMessage(L9_2.code)
              L9_2.msg = L22_2
            else
              L22_2 = L21_2.dhcpcode
              if L22_2 ~= 110 then
                L22_2 = L21_2.dhcpcode
                if L22_2 ~= 111 then
                  goto lbl_221
                end
              end
              L9_2.code = 1651
              L22_2 = L1_1.getErrorMessage(L9_2.code)
              L9_2.msg = L22_2
              goto lbl_236
              ::lbl_221::
              L22_2 = L21_2.dhcpcode
              if L22_2 ~= 115 then
                L22_2 = L21_2.dhcpcode
                if L22_2 ~= 116 then
                  goto lbl_234
                end
              end
              L9_2.code = 1652
              L22_2 = L1_1.getErrorMessage(L9_2.code)
              L9_2.msg = L22_2
              goto lbl_236
              ::lbl_234::
              L9_2.code = 1619
              L9_2.msg = "dhcp failed!"
            end
          end
        end
      end
      ::lbl_236::
      L0_1.write_json(L9_2)
      L1_2.log("dhcp failed")
      return
    else
      L9_2.code = 1616
      L9_2.msg = "wifi connect faild!"
      L0_1.write_json(L9_2)
      L1_2.log("wifi connect failed")
      return
    end
  end
  L1_2.log(1, "connect peer success")
  L1_2.log(1, "params:" .. "admin_password=" .. L20_2 .. "&ssid=" .. self_ssid .. "&password=" .. L17_2 .. "&band=" .. L18_2)
  L23_2 = L7_2.ExtendWifiRequestRemoteAPIForLua("/api/xqnetwork/set_wifi_auto_ap_mode", "", L22_2)
  L24_2 = L23_2.code
  if L24_2 == 0 then
    L24_2 = require("cjson")
    L25_2 = L24_2.decode(L23_2.msg)
    L26_2 = L25_2.code
    if L26_2 == 0 then
      L1_2.log(1, "auto wifi ap mode success")
      L26_2 = {}
      L26_2.code = 0
      L27_2 = self_ssid
      L26_2.ssid_24g = L27_2
      L27_2 = self_ssid .. "_5G"
      L26_2.ssid_5g = L27_2
      L26_2.password_24g = L17_2
      L26_2.password_5g = L17_2
      L0_1.write_json(L26_2)
    else
      L1_2.log(1, "auto wifi ap mode error")
      L0_1.write(L23_2.msg)
    end
  else
    L1_2.log(1, "auto wifi ap mode http request error")
    L24_2 = L1_1.getErrorMessage(L9_2.code)
    L23_2.msg = L24_2
    L0_1.write_json(L23_2)
  end
  L6_2.extednwifi_disconnect(L18_2)
end


function setWifiAutoApMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.module.XQAPModule")
  L3_2 = require("xiaoqiang.util.XQSysUtil")
  L4_2 = require("xiaoqiang.util.XQWifiUtil")
  L5_2 = require("luci.model.uci")
  L5_2 = L5_2.cursor()
  L6_2 = {}
  L6_2.code = 0
  L0_1.write_json(L6_2)
  L7_2 = L0_1.formvalue("ssid")
  L8_2 = L0_1.formvalue("password")
  L9_2 = L0_1.formvalue("admin_password")
  L10_2 = L0_1.formvalue("band")
  L0_2.log(1, "recv ssid:" .. L7_2 .. " password" .. L8_2 .. " band" .. L10_2)
  L0_2.log(1, "run cmd:" .. "lua /usr/sbin/set_wifi_auto_ap_mode.lua " .. L7_2 .. " " .. L8_2 .. " " .. L10_2 .. " " .. L9_2)
  L1_2.forkExec(L11_2)
end


function apcli_get_signal()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2 = {}
  L2_2.code = 0
  L2_2.ssid = ""
  L2_2.signal = 0
  L2_2.band = ""
  L3_2 = nil
  L4_2 = L0_2.getNetMode()
  if L4_2 == "wifiapmode" then
    L5_2 = L1_2.apcli_get_active()
    L6_2 = L1_2.apcli_get_wifinet(L5_2)
    if L6_2 then
      L8_2, L9_2 = L6_2.signal(L6_2)
      L7_2 = L0_2.isStrNil(L8_2, L9_2)
      if not L7_2 then
        L8_2, L9_2 = L6_2.signal(L6_2)
        L7_2 = L1_2.miwifiutil_rssi_to_signal(L8_2, L9_2)
        L2_2.signal = L7_2
        L7_2, L8_2 = L1_2.apcli_get_connect(L5_2)
        if L7_2 == false then
          L2_2.signal = 0
        end
      end
    end
    L7_2 = L6_2.ssid(L6_2)
    L2_2.ssid = L7_2
    L7_2 = L1_2.apcli_get_real_signal(L5_2)
    if nil ~= L3_2 then
      L7_2 = L1_2.miwifiutil_rssi_to_signal(L7_2)
      L2_2.signal = L7_2
    end
  end
  L0_1.write_json(L2_2)
end


function serviceRestart()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.module.XQAPModule")
  L1_2 = {}
  L1_2.code = 0
  L0_2.actionForEnableWifiAP()
  L0_1.write_json(L1_2)
end


function setLanAP()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQAPModule")
  L2_2 = require("xiaoqiang.util.XQSysUtil")
  L3_2 = require("xiaoqiang.util.XQWifiUtil")
  L4_2 = require("xiaoqiang.util.XQPortServiceUtil")
  L5_2 = L0_1.formvalue("ssid")
  L6_2 = L0_1.formvalue("password")
  L7_2 = L0_1.formvalue("nonce")
  L8_2 = L0_1.formvalue("newPwd")
  L9_2 = L0_1.formvalue("oldPwd")
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L0_1.formvalue("initialize")
  L10_2 = tonumber(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  if L10_2 == 1 then
    L10_2 = 1
    if L10_2 then
      goto lbl_48
    end
  end
  L10_2 = 0
  ::lbl_48::
  L11_2 = L0_2.getNetMode()
  L12_2 = {}
  L12_2.code = 0
  L13_2 = L4_2.psMultiwanEnable()
  if 1 == L13_2 then
    L12_2.code = 3000
  elseif L11_2 == "wifiapmode" then
    L12_2.code = 1618
  end
  L13_2 = L12_2.code
  if 0 == L13_2 then
    if L10_2 == 1 and L5_2 and L6_2 and L7_2 and L8_2 and L9_2 then
      L13_2 = _savePassword(L7_2, L9_2, L8_2)
      L12_2.code = L13_2
      L13_2 = L12_2.code
      if L13_2 == 0 then
        L3_2.setWifiBasicInfo(1, L5_2, L6_2, "psk2", nil, nil, 0)
        L3_2.setWifiBasicInfo(2, L5_2 .. "_5G", L6_2, "psk2", nil, nil, 0)
        L2_2.setInited()
        L2_2.setRouterName(L5_2)
      end
    end
    L13_2 = L12_2.code
    if L13_2 == 0 then
      L13_2 = L1_2.setLanAPMode()
      if L13_2 then
        L12_2.ip = L13_2
        L14_2 = L2_2.isEasymeshSupport()
        if L14_2 then
          L0_2.setUserModifiedModeFlag()
        end
      else
        L12_2.code = 1619
      end
    end
  end
  L13_2 = L12_2.code
  if L13_2 ~= 0 then
    L13_2 = L1_1.getErrorMessage(L12_2.code)
    L12_2.msg = L13_2
  else
    L1_2.lanApServiceRestart(true, true, false)
  end
  L0_1.write_json(L12_2)
end


function disableLanAP()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.util.XQSysUtil")
  L1_2 = require("xiaoqiang.module.XQAPModule")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = {}
  L3_2.code = 0
  L4_2 = L1_2.disableLanAP()
  L3_2.ip = L4_2
  L1_2.lanApServiceRestart(false, true, false)
  L4_2 = L0_2.isEasymeshSupport()
  if L4_2 then
    L2_2.setUserModifiedModeFlag()
  end
  L0_1.write_json(L3_2)
end


function channelScanStart()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L0_2.wifiChannelQuality()
  L0_1.write_json(L1_2)
end


function getScanResult()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.getAllWifiInfo()
  L3_2 = L2_2[1]
  if L3_2 then
    L3_2 = L2_2[1].status
    if L3_2 == "1" then
      L3_2 = L0_2.scanWifiChannel(1)
      L1_2["2G"] = L3_2
    end
  end
  L3_2 = 0
  L4_2 = L1_2["2G"]
  if L4_2 then
    L4_2 = L1_2["2G"].code
    if L4_2 ~= 0 then
      L3_2 = 1
    end
  end
  L1_2.status = L3_2
  L0_1.write_json(L1_2)
end


function setChannel()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L2_2, L3_2, L4_2, L5_2, L6_2 = L0_1.formvalue("channel1")
  L1_2 = tonumber(L2_2, L3_2, L4_2, L5_2, L6_2)
  L3_2, L4_2, L5_2, L6_2 = L0_1.formvalue("channel2")
  L2_2 = tonumber(L3_2, L4_2, L5_2, L6_2)
  L3_2 = {}
  L3_2.code = 0
  L0_2.iwprivSetChannel(L1_2, L2_2)
  L0_1.write_json(L3_2)
end


function getDiagDeviceList()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L0_2 = require("luci.util")
  L1_2 = require("xiaoqiang.util.XQDeviceUtil")
  L2_2 = require("xiaoqiang.util.XQWifiUtil")
  L3_2 = require("luci.model.uci")
  L3_2 = L3_2.cursor()
  L4_2 = {}
  L4_2.code = 0
  L5_2 = io.open("/tmp/diag_sta_sig", "w+")
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = string.format("date")
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L0_2.exec(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L6_2 = L0_2.trim(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = string.format("station test get signal at %s, result is:\n", L6_2)
  L5_2.write(L5_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L7_2 = L1_2.getDeviceList(true, true)
  if not L7_2 then
    L7_2 = {}
  end
  L8_2 = {}
  L9_2, L10_2, L11_2 = ipairs(L7_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = 0
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    L18_2 = tonumber(L13_2.port)
    if L18_2 ~= 1 then
      L18_2 = tonumber(L13_2.port)
      if L18_2 ~= 2 then
        L18_2 = tonumber(L13_2.port)
        if L18_2 ~= 3 then
          goto lbl_106
        end
      end
    end
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = string.upper(L13_2.mac)
    L18_2 = L2_2.getWifiDeviceSignal(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L14_2 = L18_2
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = string.upper(L13_2.mac)
    L18_2 = L2_2.getWifiDeviceSpeed(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L16_2 = L18_2.upspeed / 1000
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = string.upper(L13_2.mac)
    L18_2 = L2_2.getWifiDeviceSpeed(L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L17_2 = L18_2.downspeed / 1000
    L19_2 = L3_2.get(L3_2, "diag", "config", "signal_thr")
    if not L19_2 then
    end
    L18_2 = tonumber("-60")
    signal_thr = L18_2
    L18_2 = signal_thr
    if L14_2 < L18_2 then
      L15_2 = 1
    end
    ::lbl_106::
    L18_2 = table.insert
    L19_2 = L8_2
    L20_2 = {}
    L21_2 = L13_2.name
    L20_2.name = L21_2
    L21_2 = string.upper(L13_2.mac)
    L20_2.mac = L21_2
    L21_2 = L13_2.ip
    L20_2.ip = L21_2
    L21_2 = L13_2.port
    L20_2.port = L21_2
    L20_2.signal = L14_2
    L20_2.signal_warning = L15_2
    L20_2.upspeed = L16_2
    L20_2.downspeed = L17_2
    L21_2 = L13_2.statistics.online
    L20_2.onlinetime = L21_2
    L18_2(L19_2, L20_2)
    L18_2 = "PASS"
    if L15_2 == 1 then
      L18_2 = "FAIL"
    end
    L19_2 = L13_2.port
    if L19_2 ~= 0 then
      L24_2 = string.upper(L13_2.mac)
      L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = string.format("name:%s, mac: %s, signal:%s, result:%s\n", L13_2.name, L24_2, L14_2, L18_2)
      L5_2.write(L5_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    end
  end
  L5_2.flush(L5_2)
  L5_2.close(L5_2)
  L4_2.devicelist = L8_2
  L0_1.write_json(L4_2)
end


function getDiagDiskInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = require("luci.util")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = {}
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = string.format("ls -1d /sys/block/sd*")
  L3_2 = L0_2.execl(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2, L5_2, L6_2 = ipairs(L3_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L11_2, L12_2, L13_2, L14_2 = string.format("basename %s", L8_2)
    L10_2, L11_2, L12_2, L13_2, L14_2 = L0_2.exec(L11_2, L12_2, L13_2, L14_2)
    L9_2 = L0_2.trim(L10_2, L11_2, L12_2, L13_2, L14_2)
    L12_2, L13_2, L14_2 = string.format("getdisk bus %s", L9_2)
    L11_2, L12_2, L13_2, L14_2 = L0_2.exec(L12_2, L13_2, L14_2)
    L10_2 = L0_2.trim(L11_2, L12_2, L13_2, L14_2)
    L13_2 = {}
    L13_2.diskname = L9_2
    L13_2.disktype = L10_2
    table.insert(L2_2, L13_2)
  end
  L1_2.disklist = L2_2
  return L1_2
end


function getDiagUdiskStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L0_2.code = 0
  L0_2.status = 0
  L1_2 = getDiagDiskInfo()
  L3_2, L4_2, L5_2 = ipairs(L1_2.disklist)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L8_2.match(L7_2.disktype, "^USB")
    if L8_2 then
      L0_2.status = 1
      break
    end
  end
  L0_1.write_json(L0_2)
end


function getDiagDiskStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L0_2.code = 0
  L0_2.status = 0
  L1_2 = getDiagDiskInfo()
  L3_2, L4_2, L5_2 = ipairs(L1_2.disklist)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L8_2.match(L7_2.disktype, "^SATA")
    if L8_2 then
      L0_2.status = 1
      break
    end
  end
  L0_1.write_json(L0_2)
end


function diagWifiTest()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L0_2 = require("luci.util")
  L1_2 = require("xiaoqiang.util.XQDeviceUtil")
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L4_2 = 2 * 8 + 2
  L5_2 = nil
  L6_2 = L2_2.get(L2_2, "diag", "config", "iperf_test_thr")
  if not L6_2 then
    L6_2 = 25
  end
  L7_2 = 1
  L8_2 = "/tmp/iperf_test_result"
  L9_2 = {}
  L9_2.code = 0
  L10_2 = io.open("/tmp/diag_sta_iperf", "w+")
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = string.format("date")
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L0_2.exec(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L11_2 = L0_2.trim(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = string.format("station iperf test at %s, result is:\n", L11_2)
  L10_2.write(L10_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
  L12_2 = L1_2.getDeviceList(true, true)
  if not L12_2 then
    L12_2 = {}
  end
  L13_2 = {}
  L14_2 = nil
  L15_2 = nil
  L16_2 = nil
  L17_2 = nil
  L18_2 = nil
  L19_2, L20_2, L21_2 = ipairs(L12_2)
  for L22_2, L23_2 in L19_2, L20_2, L21_2 do
    L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = string.format("timeout -t %d /usr/bin/iperf -c %s -d -t %d > %s.%d", L4_2, L23_2.ip, L3_2, L8_2, L7_2)
    L0_2.exec(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = string.format("cat %s.%d | grep \"Mbits/sec\" | wc -l", L8_2, L7_2)
    L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L0_2.exec(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    L24_2 = L0_2.trim(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    L24_2 = tonumber(L24_2)
    if L24_2 == 2 then
      L27_2 = "cat %s.%d | awk -F 'Bytes' '/Bytes/{print $2}' | awk -F ' ' '{print $1}' | awk 'NR==1'"
      L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = string.format(L27_2, L8_2, L7_2)
      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L0_2.exec(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      L24_2 = L0_2.trim(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      L16_2 = L24_2
      L27_2 = "cat %s.%d | awk -F 'Bytes' '/Bytes/{print $2}' | awk -F ' ' '{print $1}' | awk 'NR==2'"
      L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = string.format(L27_2, L8_2, L7_2)
      L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = L0_2.exec(L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      L24_2 = L0_2.trim(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      L24_2 = tonumber(L16_2)
      L25_2 = tonumber(L6_2)
      if L24_2 > L25_2 then
        L24_2 = tonumber(L24_2)
        L25_2 = tonumber(L6_2)
        if L24_2 > L25_2 then
          L14_2 = "PASS"
          L15_2 = "0"
      end
      else
        L14_2 = "FAIL"
        L15_2 = "2"
      end
    else
      L14_2 = "FAIL"
      L15_2 = "1"
      L16_2 = "0"
      L17_2 = "0"
    end
    L24_2 = table.insert
    L25_2 = L13_2
    L26_2 = {}
    L27_2 = L23_2.name
    L26_2.name = L27_2
    L27_2 = string.upper(L23_2.mac)
    L26_2.mac = L27_2
    L27_2 = L23_2.ip
    L26_2.ip = L27_2
    L26_2.testresult = L14_2
    L26_2.testresultcode = L15_2
    L26_2.downlink = L16_2
    L26_2.uplink = L17_2
    L24_2(L25_2, L26_2)
    L24_2 = tonumber(L15_2)
    if L24_2 == 2 then
      L18_2 = "throughput not meet standards"
    else
      L24_2 = tonumber(L15_2)
      if L24_2 == 1 then
        L18_2 = "iperf server not start"
      else
        L18_2 = "success"
      end
    end
    L25_2 = L10_2
    L29_2 = string.upper(L23_2.mac)
    L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2 = string.format("name:%s, mac: %s, downlink:%s, uplink:%s, result:%s, reason:%s\n", L23_2.name, L29_2, L16_2, L17_2, L14_2, L18_2)
    L10_2.write(L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
    L7_2 = L7_2 + 1
  end
  L10_2.flush(L10_2)
  L10_2.close(L10_2)
  L9_2.devicetestlist = L13_2
  L0_1.write_json(L9_2)
end


function diagUsbTest()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = require("luci.util")
  L1_2 = require("luci.model.uci")
  L1_2 = L1_2.cursor()
  L2_2 = {}
  L2_2.code = 0
  L2_2.usbname = "none"
  L2_2.usbtype = "none"
  L2_2.usbspeed = "0"
  L2_2.usbtestresult = "FAIL"
  L3_2 = 0
  L4_2 = nil
  L5_2 = "/tmp/usbtestrst.txt"
  L7_2 = L1_2.get(L1_2, "diag", "config", "usb_write_thr")
  if not L7_2 then
  end
  L6_2 = tostring(2.561E-320)
  L8_2 = L1_2.get(L1_2, "diag", "config", "usb_read_thr")
  if not L8_2 then
  end
  L7_2 = tostring(1.0435E-320)
  L8_2 = 1
  L9_2 = 0
  L10_2 = io.open("/tmp/diag_usb_test", "w+")
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("date")
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L11_2 = L0_2.trim(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("usb test at %s, result is:", L11_2)
  L10_2.write(L10_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("[ -d /sys/bus/usb/devices/3-1 ] && echo 1 || echo 0")
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L12_2 = L0_2.trim(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L8_2 = L12_2
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("[ -d /sys/bus/usb/devices/4-1 ] && echo 1 || echo 0")
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L12_2 = L0_2.trim(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L12_2 = tonumber(L12_2)
  if L12_2 == 1 then
    L2_2.usbtype = "3.0"
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("cat /sys/bus/usb/devices/4-1/speed")
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L12_2 = L0_2.trim(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L2_2.usbspeed = L12_2
  else
    L12_2 = tonumber(L8_2)
    if L12_2 == 1 then
      L2_2.usbtype = "2.0"
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("cat /sys/bus/usb/devices/3-1/speed")
      L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L12_2 = L0_2.trim(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      L2_2.usbspeed = L12_2
    end
  end
  L12_2 = getDiagDiskInfo()
  L14_2, L15_2, L16_2 = ipairs(L12_2.disklist)
  for L17_2, L18_2 in L14_2, L15_2, L16_2 do
    L19_2 = L19_2.match(L18_2.disktype, "^USB")
    if L19_2 then
      L4_2 = L18_2.diskname
      break
    end
  end
  L14_2 = tonumber(1)
  if L14_2 == 1 then
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("ls -1 /dev/%s[0-9]", L4_2)
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L0_2.trim(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L2_2.usbname = L14_2
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("date > %s", L5_2)
    L0_2.exec(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("ubenchmark_disk '%s' 64 '%s' '%s' >> '%s' 2>&1 && echo PASS || echo FAIL", L14_2, L6_2, L7_2, L5_2)
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L15_2 = L0_2.trim(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("echo 'wr_thr:%s, rd_thr:%s, result:%s' >> %s", L6_2, L7_2, L15_2, L5_2)
    L0_2.exec(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L16_2 = L15_2.match(L15_2, "^PASS")
    if L16_2 then
      L2_2.usbtestresult = "PASS"
    end
    L18_2, L19_2, L20_2, L21_2, L22_2 = string.format("cat %s", L5_2)
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L0_2.exec(L18_2, L19_2, L20_2, L21_2, L22_2)
    L16_2 = L0_2.trim(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L2_2.usbtestlog = L16_2
  end
%s
usbtype:%s, usbspeed:%s
]]
  L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = string.format([[, L2_2.usbtestresult, L2_2.usbtype, L2_2.usbspeed)
  L10_2.write(L10_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  L10_2.flush(L10_2)
  L10_2.close(L10_2)
  L0_1.write_json(L2_2)
end


function diagHddStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = require("luci.util")
  L1_2 = {}
  L1_2.code = 0
  L1_2.diskname = "none"
  L1_2.hddstatus = "PASS"
  L2_2 = io.open("/tmp/diag_disk_smart", "w+")
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = string.format("date")
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L0_2.exec(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = L0_2.trim(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = string.format("disk smart info test at %s, result is:", L3_2)
  L2_2.write(L2_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L4_2 = 0
  L5_2 = getDiagDiskInfo()
  L7_2, L8_2, L9_2 = ipairs(L5_2.disklist)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L12_2.match(L11_2.disktype, "^SATA")
    if L12_2 then
      L12_2 = L11_2.diskname
      L1_2.diskname = L12_2
      break
    end
  end
  L7_2 = tonumber(1)
  if L7_2 == 1 then
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = string.format("/usr/sbin/hddstatus && echo PASS || echo FAIL")
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L0_2.exec(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = L0_2.trim(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = L7_2.match(L7_2, "^FAIL")
    if L8_2 then
      L1_2.hddstatus = "FAIL"
    end
  end
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = string.format("%s\n", L1_2.hddstatus)
  L2_2.write(L2_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2.flush(L2_2)
  L2_2.close(L2_2)
  L0_1.write_json(L1_2)
end


function diagDiskTest()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = require("luci.util")
  L1_2 = require("luci.model.uci")
  L1_2 = L1_2.cursor()
  L2_2 = {}
  L2_2.code = 0
  L2_2.diskname = "none"
  L2_2.diskrdtestresult = "PASS"
  L3_2 = nil
  L4_2 = 0
  L5_2 = "/tmp/disktestrst.txt"
  L7_2 = L1_2.get(L1_2, "diag", "config", "disk_write_thr")
  if not L7_2 then
  end
  L6_2 = tostring(3.573E-320)
  L8_2 = L1_2.get(L1_2, "diag", "config", "disk_read_thr")
  if not L8_2 then
  end
  L7_2 = tostring(3.573E-320)
  L8_2 = io.open("/tmp/diag_disk_rd_test", "w+")
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = string.format("date")
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L0_2.exec(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = L0_2.trim(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = string.format("disk rd test at %s, result is:", L9_2)
  L8_2.write(L8_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L10_2 = getDiagDiskInfo()
  L12_2, L13_2, L14_2 = ipairs(L10_2.disklist)
  for L15_2, L16_2 in L12_2, L13_2, L14_2 do
    L17_2 = L17_2.match(L16_2.disktype, "^SATA")
    if L17_2 then
      L3_2 = L16_2.diskname
      L2_2.diskname = L3_2
      break
    end
  end
  L12_2 = tonumber(1)
  if L12_2 == 1 then
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = string.format("ls -1 /dev/%s[0-9]", L3_2)
    L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L0_2.exec(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L12_2 = L0_2.trim(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = string.format("date > %s", L5_2)
    L0_2.exec(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = string.format("ubenchmark_disk %s 256 %s %s >> %s 2>&1 && echo PASS || echo FAIL", L12_2, L6_2, L7_2, L5_2)
    L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L0_2.exec(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L13_2 = L0_2.trim(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = string.format("echo 'wr_thr:%s, rd_thr:%s, result:%s' >> %s", L6_2, L7_2, L13_2, L5_2)
    L0_2.exec(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L14_2 = L13_2.match(L13_2, "^FAIL")
    if L14_2 then
      L2_2.diskrdtestresult = "FAIL"
    end
  end
  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = string.format("%s\n", L2_2.diskrdtestresult)
  L8_2.write(L8_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2.flush(L8_2)
  L8_2.close(L8_2)
  L0_1.write_json(L2_2)
end


function getDiagParas()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("luci.model.uci")
  L0_2 = L0_2.cursor()
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.get(L0_2, "diag", "config", "signal_thr")
  if not L2_2 then
    L2_2 = "-60"
  end
  L1_2.signal_thr = L2_2
  L2_2 = L0_2.get(L0_2, "diag", "config", "iperf_test_thr")
  if not L2_2 then
    L2_2 = 25
  end
  L1_2.iperf_test_thr = L2_2
  L2_2 = L0_2.get(L0_2, "diag", "config", "usb_write_thr")
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.usb_write_thr = L2_2
  L2_2 = L0_2.get(L0_2, "diag", "config", "usb_read_thr")
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.usb_read_thr = L2_2
  L2_2 = L0_2.get(L0_2, "diag", "config", "disk_write_thr")
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.disk_write_thr = L2_2
  L2_2 = L0_2.get(L0_2, "diag", "config", "disk_read_thr")
  if not L2_2 then
    L2_2 = 0
  end
  L1_2.disk_read_thr = L2_2
  L0_1.write_json(L1_2)
end


function setDiagParas()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = require("luci.model.uci")
  L0_2 = L0_2.cursor()
  L1_2 = L0_1.formvalue("signal_thr")
  L2_2 = L0_1.formvalue("iperf_test_thr")
  L3_2 = L0_1.formvalue("usb_write_thr")
  L4_2 = L0_1.formvalue("usb_read_thr")
  L5_2 = L0_1.formvalue("disk_write_thr")
  L6_2 = L0_1.formvalue("disk_read_thr")
  L7_2 = {}
  L7_2.code = 0
  L9_2 = string.find(L3_2, "[`$|;&]")
  if not L9_2 then
    L9_2 = string.find(L4_2, L8_2)
    if not L9_2 then
      L9_2 = string.find(L5_2, L8_2)
      if not L9_2 then
        L9_2 = string.find(L6_2, L8_2)
        if not L9_2 then
          goto lbl_67
        end
      end
    end
  end
  L7_2.code = 4294967295
  L0_1.write_json(L7_2)
  do return end
  ::lbl_67::
  if L1_2 ~= nil then
    L0_2.set(L0_2, "diag", "config", "signal_thr", L1_2)
  end
  if L2_2 ~= nil then
    L0_2.set(L0_2, "diag", "config", "iperf_test_thr", L2_2)
  end
  if L3_2 ~= nil and L4_2 ~= nil and (L3_2 ~= 0 or L4_2 ~= 0) then
    L0_2.set(L0_2, "diag", "config", "usb_write_thr", L3_2)
    L0_2.set(L0_2, "diag", "config", "usb_read_thr", L4_2)
  end
  if L5_2 ~= nil and L6_2 ~= nil and (L5_2 ~= 0 or L6_2 ~= 0) then
    L0_2.set(L0_2, "diag", "config", "disk_write_thr", L5_2)
    L0_2.set(L0_2, "diag", "config", "disk_read_thr", L6_2)
  end
  if L1_2 ~= nil or L2_2 ~= nil or L3_2 ~= nil or L4_2 ~= nil then
    L0_2.commit(L0_2, "diag")
  end
  L0_1.write_json(L7_2)
end


function addtofile(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = io.open(A0_2, "r")
  if L3_2 then
    L4_2 = L3_2.read(L3_2, "*a")
    L2_2 = L4_2
    L3_2.close(L3_2)
    if L2_2 == nil then
      L4_2 = false
      return L4_2
    end
  else
    L4_2 = false
    return L4_2
  end
  L4_2 = io.open(A1_2, "a")
  if L4_2 then
    L5_2 = L4_2.write(L4_2, L2_2)
    if L5_2 == nil then
      L4_2.close(L4_2)
      L6_2 = false
      return L6_2
    end
    L8_2, L9_2 = string.format("\n")
    L4_2.write(L4_2, L8_2, L9_2)
    L4_2.close(L4_2)
    L6_2 = true
    return L6_2
  else
    L5_2 = false
    return L5_2
  end
end


function getDiagLog()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = require("xiaoqiang.util.XQNetUtil")
  L1_2 = require("luci.util")
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = require("nixio.fs")
  L4_2 = require("luci.sys")
  L5_2 = "/tmp/syslogbackup/"
  L6_2 = L2_2.get(L2_2, "network", "lan", "ipaddr")
  if not L6_2 then
    L6_2 = "192.168.31.1"
  end
  L7_2 = {}
  L7_2.code = 0
  addtofile("/tmp/diag_net_spd", "/tmp/diag_test.log")
  addtofile("/tmp/diag_sta_sig", L8_2)
  addtofile("/tmp/diag_sta_iperf", L8_2)
  addtofile("/tmp/diag_usb_test", L8_2)
  addtofile("/tmp/diag_disk_smart", L8_2)
  addtofile("/tmp/diag_disk_rd_test", L8_2)
  
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = L4_2.process.info("uid")
    L1_3 = L3_2.stat(L5_2, "uid")
    L0_3 = L0_3 == L1_3
    return L0_3
  end
  
  sane = L9_2
  
  function L9_2()
    local L0_3, L1_3, L2_3
    L3_2.mkdir(L5_2, 700)
  end
  
  prepare = L9_2
  L9_2 = sane()
  if not L9_2 then
    prepare()
  else
    os.execute("rm " .. L5_2 .. "*.diag.log")
  end
  L9_2 = L3_2.access(L8_2)
  if L9_2 then
    L9_2 = L0_2.getSN()
    L10_2, L11_2 = string.find(L9_2, "/")
    L12_2 = string.sub(L9_2, 1, L11_2 - 1)
    L16_2, L17_2, L18_2, L19_2, L20_2 = string.len(L9_2)
    L13_2 = string.sub(L9_2, L11_2 + 1, L16_2, L17_2, L18_2, L19_2, L20_2)
    L20_2 = os.time()
    L18_2 = os.date("%Y-%m-%d--%X", L20_2)
    L1_2.exec("cp " .. L8_2 .. " " .. L5_2 .. L12_2 .. "-" .. L13_2 .. "--" .. L18_2 .. ".diag.log")
    L1_2.exec("rm " .. L8_2)
    L15_2 = L6_2 .. "/backup/log/" .. L14_2
    L7_2.logUrl = L15_2
  else
    L7_2.code = 1
    L7_2.msg = "There is no diag test log, not test yet?"
  end
  L0_1.write_json(L7_2)
end


function setWifiWeakInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = {}
  L3_2 = 0
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L0_1.formvalue("wifiIndex")
  L4_2 = tonumber(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L0_1.formvalue("weakenable")
  L6_2 = L0_1.formvalue("weakthreshold")
  L7_2 = L0_1.formvalue("kickthreshold")
  L8_2 = L0_2.setWifiWeakInfo(L4_2, L5_2, L6_2, L7_2)
  if L8_2 == false then
  end
  if L3_2 ~= 0 then
    L9_2 = L1_1.getErrorMessage(1502)
    L2_2.msg = L9_2
  end
  L2_2.code = L3_2
  L0_1.write_json(L2_2)
  if L3_2 == 0 then
    L0_1.close()
    L1_2.forkRestartWifi()
  end
end


function getWifiWeakInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L2_2 = 0
  L3_2 = L0_2.getWifiWeakInfo()
  L1_2.info = L3_2
  L1_2.code = L2_2
  L0_1.write_json(L1_2)
end


function miscanSwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L3_2, L4_2, L5_2 = L0_1.formvalue("on")
  L2_2 = tonumber(L3_2, L4_2, L5_2)
  if L2_2 == 1 then
    L2_2 = true
    if L2_2 then
      goto lbl_18
    end
  end
  ::lbl_18::
  L3_2 = L0_2.miscanSwitch(false)
  if not L3_2 then
    L1_2.code = 1606
  end
  L4_2 = L1_2.code
  if L4_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(L1_2.code)
    L1_2.msg = L4_2
  end
  L0_1.write_json(L1_2)
end


function getMiscanSwitch()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L3_2 = L0_2.getMiscanSwitch()
  L2_2 = tonumber(L3_2)
  L1_2.enabled = L2_2
  L0_1.write_json(L1_2)
end


function miotrelaySwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("luci.util")
  L3_2 = require("luci.model.uci")
  L3_2 = L3_2.cursor()
  L4_2 = L3_2.get(L3_2, "wireless", "miot_2G", "bindstatus")
  if not L4_2 then
    L4_2 = "0"
  end
  L5_2 = L3_2.get(L3_2, "wireless", "miot_2G", "userswitch")
  if not L5_2 then
    L5_2 = "1"
  end
  L6_2 = L3_2.get(L3_2, "misc", "wireless", "if_2G")
  if not L6_2 then
    L6_2 = ""
  end
  L7_2 = {}
  L7_2.code = 0
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L0_1.formvalue("on")
  L8_2 = tonumber(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L8_2 == 1 then
    L8_2 = "1"
    if L8_2 then
      goto lbl_53
    end
  end
  L8_2 = "0"
  ::lbl_53::
  if L4_2 == "1" then
    if L5_2 == "0" and L8_2 == "1" then
      if "wifi0" == L6_2 then
        L2_2.exec("hostapd_cli -i wl13 -p /var/run/hostapd-wifi0 enable")
      elseif "wifi1" == L6_2 then
        L2_2.exec("hostapd_cli -i wl13 -p /var/run/hostapd-wifi1 enable")
      else
        L2_2.exec("ifconfig wl13 up")
      end
      L2_2.exec("/usr/sbin/sysapi miot")
    elseif L5_2 == "1" and L8_2 == "0" then
      if "wifi0" == L6_2 then
        L2_2.exec("hostapd_cli -i wl13 -p /var/run/hostapd-wifi0 disable")
      elseif "wifi1" == L6_2 then
        L2_2.exec("hostapd_cli -i wl13 -p /var/run/hostapd-wifi1 disable")
      else
        L2_2.exec("ifconfig wl13 down")
      end
    end
  end
  L3_2.set(L3_2, "wireless", "miot_2G", "userswitch", L8_2)
  L3_2.commit(L3_2, "wireless")
        [ -f "/etc/init.d/miot" ] && /etc/init.d/miot restart;
        /sbin/whc_to_re_common_api.sh whc_sync;
    ]]
  L1_2.forkExec([[)
  L9_2 = L1_2.isMeshController()
  if L9_2 then
    L10_2 = "ubus -t 3 call mapd event '{\"type\":6,\"op1\":0,\"op2\":\""
    L2_2.exec(L10_2 .. L8_2 .. "\"}'")
  end
  L0_1.write_json(L7_2)
end


function getMiotrelaySwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("luci.util")
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = L2_2.get(L2_2, "wireless", "miot_2G", "userswitch")
  if not L3_2 then
  end
  L4_2 = {}
  L4_2.code = 0
  L5_2 = tonumber("1")
  L4_2.enabled = L5_2
  L0_1.write_json(L4_2)
end


function setMeshSwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("luci.util")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.XQLog")
  L3_2 = require("luci.model.uci")
  L3_2 = L3_2.cursor()
  L4_2 = L3_2.get(L3_2, "xiaoqiang", "common", "MESH_SWITCH")
  if not L4_2 then
    L4_2 = "1"
  end
  L5_2 = {}
  L5_2.code = 0
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L0_1.formvalue("on")
  L6_2 = tonumber(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  if L6_2 == 1 then
    L6_2 = "1"
    if L6_2 then
      goto lbl_37
    end
  end
  ::lbl_37::
  L2_2.log(6, "old switch is " .. L4_2 .. " new switch is " .. "0")
  L7_2 = L1_2.isMeshMode()
  if L7_2 then
    L2_2.log(6, "already in mesh mode,no need to set switch")
  elseif L4_2 ~= L6_2 and L4_2 ~= "3" then
    L2_2.log(6, "need to set switch")
    L3_2.set(L3_2, "xiaoqiang", "common", "MESH_SWITCH", L6_2)
    L3_2.commit(L3_2, "xiaoqiang")
    if L6_2 == "0" then
      L8_2 = "[ -f /etc/init.d/mapd ] && ubus call mapd mesh_switch '{\"mesh_switch\":0}'"
      L0_2.exec(L8_2)
    else
      L8_2 = "[ -f /etc/init.d/mapd ] && ubus call mapd mesh_switch '{\"mesh_switch\":1}'"
      L0_2.exec(L8_2)
    end
  else
    L2_2.log(6, "no need to set switch")
  end
  L0_1.write_json(L5_2)
end


function getMeshSwitch()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("luci.util")
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = "2"
  L4_2 = L0_2.isMeshMode()
  if L4_2 then
  else
    L4_2 = L2_2.get(L2_2, "xiaoqiang", "common", "MESH_SWITCH")
    L3_2 = L4_2 or "2"
    if not L4_2 then
    end
  end
  L4_2 = {}
  L4_2.code = 0
  L5_2 = tonumber("1")
  L4_2.enabled = L5_2
  L0_1.write_json(L4_2)
end


function getRoamRssiThreshold()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("luci.util")
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = L2_2.get(L2_2, "roam", "ap_steering", "HighRssi24GThreshold")
  if not L3_2 then
    L3_2 = "35"
  end
  L4_2 = L2_2.get(L2_2, "roam", "ap_steering", "HighRssi5GThreshold")
  if not L4_2 then
    L4_2 = "35"
  end
  L5_2 = {}
  L5_2.code = 0
  L7_2 = tonumber(L3_2)
  L6_2 = tostring(L7_2 - 95)
  L5_2.RoamRssiThreshold2G = L6_2
  L7_2 = tonumber(L4_2)
  L6_2 = tostring(L7_2 - 95)
  L5_2.RoamRssiThreshold5G = L6_2
  L0_1.write_json(L5_2)
end


function setRoamRssiThreshold()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("luci.util")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.XQLog")
  L3_2 = require("luci.model.uci")
  L3_2 = L3_2.cursor()
  L4_2 = {}
  L4_2.code = 0
  L5_2 = L0_1.formvalue("roamrssithreshold1")
  if not L5_2 then
    L5_2 = "-60"
  end
  L6_2 = L0_1.formvalue("roamrssithreshold2")
  if not L6_2 then
  end
  L2_2.log(6, "RoamRssiThreshold2G=" .. L5_2 .. " RoamRssiThreshold5G=" .. "-60")
  L8_2 = tonumber(L5_2)
  L7_2 = tostring(L8_2 + 95)
  L8_2 = tonumber(L6_2)
  L7_2 = tostring(L8_2 + 95)
  L2_2.log(6, "RoamRssiThreshold2G=" .. L7_2 .. " RoamRssiThreshold5G=" .. L7_2)
  L3_2.set(L3_2, "roam", "ap_steering", "HighRssi24GThreshold", L5_2)
  L3_2.set(L3_2, "roam", "ap_steering", "HighRssi5GThreshold", L6_2)
  L3_2.set(L3_2, "roam", "band_steering", "BandSteering24GRssiThrehold", L5_2)
  L3_2.set(L3_2, "roam", "band_steering", "BandSteering5GRssiThrehold", L6_2)
  L3_2.commit(L3_2, "roam")
  L0_2.exec("[ -f /etc/init.d/mapd ] && /etc/init.d/mapd restart")
  L0_1.write_json(L4_2)
end


function getSonBackhaulMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("luci.model.uci")
  L1_2 = L1_2.cursor()
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L0_1.formvalue("mode")
  L2_2 = tonumber(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = {}
  L4_2 = L1_2.get(L1_2, "repacd", "WiFiLink", "2GIndependentChannelSelectionEnable")
  if L4_2 then
    L0_2.log(6, "get 2.4G backhaul_mode\239\188\154" .. L4_2)
    L3_2.mode = L4_2
    L3_2.code = 0
  else
    L0_2.log(6, "can not get 2.4G backhaul_mode, check hardware.")
    L3_2.code = 1
  end
  L0_1.write_json(L3_2)
end


function setSonBackhaulMode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.util.XQSysUtil")
  L2_2 = require("luci.model.uci")
  L2_2 = L2_2.cursor()
  L3_2 = require("xiaoqiang.XQLog")
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L0_1.formvalue("mode")
  L4_2 = tonumber(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = {}
  L5_2.code = 0
  L3_2.log(6, "setSonBackhaulMode mode:" .. L4_2)
  L6_2 = L0_2.isMeshCap()
  if L6_2 then
    L6_2 = {}
    L6_2.cmd = "set_backhaul_mode"
    L7_2 = tostring(L4_2)
    L6_2.backhaul_mode = L7_2
    L7_2 = require("luci.json")
    L8_2 = L7_2.encode(L6_2)
    L3_2.log(6, "CAP call RE do action msg:" .. L8_2)
    L0_2.forkExec("/sbin/whc_to_re_common_api.sh action '" .. L8_2 .. "'")
  end
  L2_2.set(L2_2, "repacd", "WiFiLink", "2GIndependentChannelSelectionEnable", L4_2)
  L2_2.commit(L2_2, "repacd")
  L2_2.set(L2_2, "xiaoqiang", "common", "son_no_24backhaul", L4_2)
  L2_2.commit(L2_2, "xiaoqiang")
  L0_1.write_json(L5_2)
end


function scanMeshNode()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.mesh_get_scanlist()
  L1_2.list = L2_2
  L0_1.write_json(L1_2)
end


function isMeshVer4_Node(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = io.open("/tmp/re_deal_list", "r")
  if L1_2 then
    L2_2, L3_2, L4_2 = L1_2.lines(L1_2)
    for L5_2 in L2_2, L3_2, L4_2 do
      if L5_2 == A0_2 then
        L1_2.close(L1_2)
        L6_2 = true
        return L6_2
      end
    end
    L1_2.close(L1_2)
  end
  L2_2 = false
  return L2_2
end


function addMeshNode()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.util.XQSysUtil")
  L3_2 = {}
  L3_2.code = 0
  L4_2 = L0_1.formvalue("mac")
  L5_2 = L0_1.formvalue("locate")
  L6_2 = L1_2.isStrNil(L4_2)
  if L6_2 then
    L3_2.code = 1502
  else
    L6_2 = L4_2.match(L4_2, "^(%x%x:%x%x:%x%x:%x%x:%x%x:%x%x)$")
    if L6_2 then
      L8_2, L9_2, L10_2, L11_2 = string.gsub(L4_2, ":", "")
      L7_2 = string.upper(L8_2, L9_2, L10_2, L11_2)
      os.remove("/tmp/" .. L7_2 .. "-status")
      L7_2 = isMeshVer4_Node(L4_2)
      if L7_2 then
        L0_2.mesh_ver4_add_node(L4_2, L5_2)
      else
        L0_2.mesh_add_node(L4_2, L5_2)
      end
    else
      L3_2.code = 1502
    end
  end
  L0_1.write_json(L3_2)
end


function getMeshNodeStatus()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_1.formvalue("mac")
  L3_2 = L0_2.mesh_get_status(L2_2)
  L1_2.status = L3_2
  L0_1.write_json(L1_2)
end


function getNetMode()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.getnetmode()
  L1_2.netmode = L2_2
  L0_1.write_json(L1_2)
end


function setDWBWifi()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = require("xiaoqiang.util.DedicatedWirelessBackhaulUtil")
  L1_2 = {}
  L1_2.code = 1502
  if L0_2 ~= nil then
    L2_2 = L0_2.is_supported()
    if L2_2 ~= false then
      goto lbl_20
    end
  end
  L0_1.write_json(L1_2)
  L0_1.close()
  do return end
  ::lbl_20::
  L2_2 = false
  L3_2 = require("xiaoqiang.util.XQWifiUtil")
  L4_2 = require("xiaoqiang.common.XQFunction")
  L5_2 = L0_2.mesh_get_dwb_band()
  L7_2 = L0_2.mesh_get_dwb_status()
  if not L7_2 then
  end
  L6_2 = tonumber("0")
  L7_2 = L3_2.getAllWifiInfo()
  L8_2 = L0_1.formvalue("status")
  if L7_2 and L5_2 then
    L9_2 = #L7_2
    if L5_2 <= L9_2 and L8_2 then
      L9_2 = tonumber(L8_2)
      L8_2 = L9_2
      L9_2 = 2
      if L5_2 == 3 then
        L9_2 = 2
      elseif L5_2 == 2 then
      end
      L11_2 = L0_2.mesh_get_dwb_bsd_channge()
      if not L11_2 then
      end
      L10_2 = tonumber("0")
      if L8_2 == 1 and L6_2 ~= 1 then
        if L10_2 == 1 then
          L11_2 = nil
          L12_2 = #L7_2[3].ssid
          if 28 < L12_2 then
            L11_2 = L7_2[L9_2].ssid
          else
            L12_2 = string.sub(L7_2[L9_2].ssid .. "_5G2", 1, 31)
          end
          L12_2 = L3_2.setWifiBasicInfo(L5_2, L12_2, L7_2[L9_2].password, L7_2[L9_2].encryption, nil, nil, nil, L8_2, nil)
          L2_2 = L12_2
        else
          L11_2 = L3_2.setWifiBasicInfo(L5_2, nil, L7_2[L9_2].password, L7_2[L9_2].encryption, nil, nil, nil, L8_2, nil)
          L2_2 = L11_2
        end
        if L2_2 == true then
          L0_2.mesh_set_dwb_status("1")
          L1_2.code = 0
        end
      elseif L8_2 == 0 and L6_2 == 1 then
        L11_2 = L3_2.setWifiBasicInfo(L5_2, nil, nil, nil, "0", "max", nil, L8_2, "0")
        L2_2 = L11_2
        if L2_2 == true then
          L11_2 = L7_2[L5_2].status
          if L11_2 == 0 then
            L0_2.mesh_set_dwb_status("2")
          else
            L0_2.mesh_set_dwb_status("0")
          end
          L1_2.code = 0
        end
      else
        L1_2.code = 0
      end
    end
  end
  L0_1.write_json(L1_2)
  L0_1.close()
  if L2_2 then
    L4_2.forkRestartWifiNotify()
  end
end


function getMultiwanBasicInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQMultiWanPolicy")
  L2_2, L3_2 = L1_2.getBandwidth()
  L4_2, L5_2 = L1_2.getWeight()
  L6_2 = {}
  L6_2.code = 0
  L7_2 = {}
  L6_2.info = L7_2
  L7_2 = L6_2.info
  L8_2 = L1_2.getStatus()
  L7_2.enable = L8_2
  L7_2 = L6_2.info
  L8_2 = L1_2.getPolicy()
  L7_2.policy = L8_2
  L7_2 = L6_2.info
  L8_2 = L1_2.getCurrentWan("ipv4")
  if not L8_2 then
    L8_2 = ""
  end
  L7_2.currwan = L8_2
  L7_2 = L6_2.info
  L7_2.weight1 = L4_2
  L7_2 = L6_2.info
  L7_2.weight2 = L5_2
  L7_2 = L6_2.info
  L7_2.bandwidth_wan1 = L2_2
  L7_2 = L6_2.info
  L7_2.bandwidth_wan2 = L3_2
  L0_1.write_json(L6_2)
end


function setMultiwanEnable()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQMultiWanPolicy")
  L2_2 = L0_1.formvalue("enable")
  L3_2 = L1_2.getStatus()
  L4_2 = {}
  L4_2.code = 0
  L5_2 = L0_2.isStrNil(L2_2)
  if L5_2 then
    L4_2.code = 1502
    L5_2 = L1_1.getErrorMessage(L4_2.code)
    L4_2.msg = L5_2
  else
    L5_2 = tostring(L2_2)
    L6_2 = tostring(L3_2)
    if L5_2 ~= L6_2 then
      L1_2.setStatus(L2_2)
    end
  end
  L0_1.write_json(L4_2)
end


function setMultiwanPolicy()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQMultiWanPolicy")
  L2_2 = L0_1.formvalue("policy")
  L3_2 = {}
  L3_2.code = 0
  L4_2 = L1_2.isValidPolicyCode(L2_2)
  if not L4_2 then
    L3_2.code = 1502
    L4_2 = L1_1.getErrorMessage(L3_2.code)
    L3_2.msg = L4_2
  else
    L1_2.setPolicy(L2_2)
  end
  L0_1.write_json(L3_2)
end


function setMultiwanWeight()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQMultiWanPolicy")
  L2_2 = L0_1.formvalue("bandwidth_wan1")
  L3_2 = L0_1.formvalue("bandwidth_wan2")
  L4_2 = {}
  L4_2.code = 0
  L5_2 = L0_2.isStrNil(L2_2)
  if not L5_2 then
    L5_2 = L0_2.isStrNil(L3_2)
    if not L5_2 then
      goto lbl_34
    end
  end
  L4_2.code = 1502
  L5_2 = L1_1.getErrorMessage(L4_2.code)
  L4_2.msg = L5_2
  goto lbl_38
  ::lbl_34::
  L1_2.setWeight(L2_2, L3_2)
  ::lbl_38::
  L0_1.write_json(L4_2)
end


function setMultiwanDevPolicy()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.module.XQMultiWanPolicy")
  L2_2 = require("luci.util")
  L3_2 = L0_1.formvalue("mac")
  L4_2 = L0_1.formvalue("wan")
  L5_2 = L0_1.formvalue("oname")
  L6_2 = L0_1.formvalue("manual")
  L7_2 = L0_1.formvalue("opt")
  L8_2 = nil
  L9_2 = {}
  L9_2.code = 0
  L10_2 = L0_2.isStrNil(L3_2)
  if not L10_2 then
    L10_2 = L0_2.isStrNil(L7_2)
    if not L10_2 then
      L10_2 = L0_2.isStrNil(L6_2)
      if not L10_2 then
        L10_2 = L1_2.isValidWanName(L4_2)
        if L10_2 then
          goto lbl_60
        end
      end
    end
  end
  L9_2.code = 1502
  L10_2 = L1_1.getErrorMessage(L9_2.code)
  L9_2.msg = L10_2
  goto lbl_204
  ::lbl_60::
  L10_2 = require("json")
  L11_2 = L2_2.exec("ubus call trafficd hw")
  L12_2 = L10_2.decode(L11_2)
  L11_2 = L12_2
  L12_2 = L3_2.upper(L3_2)
  if L6_2 == "0" then
    L12_2 = L2_2.split(L12_2, ",")
    L13_2 = 0
    L14_2 = #L12_2
    L15_2 = 1
    for L16_2 = L13_2, L14_2, L15_2 do
      L17_2 = L12_2[L16_2]
      if nil ~= L17_2 then
        if L7_2 == "0" or L7_2 == 0 then
          L8_2 = nil
          L17_2 = L11_2[L12_2[L16_2]]
          if L17_2 then
            L17_2 = L11_2[L12_2[L16_2]].ip_list
            if L17_2 then
              L17_2 = L11_2[L12_2[L16_2]].ip_list[1]
              if L17_2 then
                L17_2 = L11_2[L12_2[L16_2]].ip_list[1].ip
                if L17_2 then
                  L8_2 = L11_2[L12_2[L16_2]].ip_list[1].ip
                end
              end
            end
          end
          L17_2 = L11_2[L12_2[L16_2]]
          if L17_2 then
            L17_2 = L11_2[L12_2[L16_2]].hw
            if L17_2 then
              L17_2 = L11_2[L12_2[L16_2]].hostname
              if L17_2 then
                L5_2 = L11_2[L12_2[L16_2]].hostname
              end
            end
          end
          if L5_2 == "" then
          end
          L1_2.setDevPolicy(L12_2[L16_2], L8_2, "ipv4", "unknown", L4_2, L6_2)
        else
          L1_2.deleteDevPolicy(L12_2[L16_2])
        end
      end
    end
  elseif L6_2 == "1" then
    if L7_2 == "0" or L7_2 == 0 then
      L12_2 = L0_2.isStrNil(L5_2)
      if L12_2 then
        L9_2.code = 1502
        L12_2 = L1_1.getErrorMessage(L9_2.code)
        L9_2.msg = L12_2
      else
        L12_2 = L11_2[L3_2]
        if L12_2 then
          L12_2 = L11_2[L3_2].ip_list
          if L12_2 then
            L12_2 = L11_2[L3_2].ip_list[1]
            if L12_2 then
              L12_2 = L11_2[L3_2].ip_list[1].ip
              if L12_2 then
              end
            end
          end
        end
        L1_2.setDevPolicy(L3_2, L11_2[L3_2].ip_list[1].ip, "ipv4", L5_2, L4_2, L6_2)
      end
    else
      L1_2.deleteDevPolicy(L3_2)
    end
  end
  ::lbl_204::
  L0_1.write_json(L9_2)
end


function getMultiwanDevPolicies()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.module.XQMultiWanPolicy")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = {}
  L1_2.info = L2_2
  L2_2 = L1_2.info
  L3_2 = L0_2.getAllDevPolicies()
  L2_2.dev_policies = L3_2
  L0_1.write_json(L1_2)
end


function getMultiwanDevList()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = require("xiaoqiang.util.XQDeviceUtil")
  L1_2 = require("xiaoqiang.module.XQMultiWanPolicy")
  L2_2 = L0_2.getDeviceListV2(true, true)
  L3_2 = {}
  L4_2 = {}
  L4_2.code = 0
  L5_2 = {}
  L4_2.info = L5_2
  L5_2, L6_2, L7_2 = ipairs(L2_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L1_2.isDevPolicyExist(L9_2.mac)
    if not L10_2 then
      L10_2 = {}
      L11_2 = L9_2.mac
      L10_2.mac = L11_2
      L11_2 = L9_2.oname
      L10_2.oname = L11_2
      L11_2 = L10_2.oname
      if L11_2 == "" then
        L10_2.oname = "unknown"
      end
      L11_2 = L9_2.ip
      if L11_2 then
        L11_2 = L9_2.ip[1]
        if L11_2 then
          L11_2 = L9_2.ip[1].ip
          L10_2.ip = L11_2
        end
      end
      table.insert(L3_2, L10_2)
    end
  end
  L4_2.info = L3_2
  L0_1.write_json(L4_2)
end


function setCwmp()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.util.XQCwmpUtil")
  L2_2 = require("xiaoqiang.util.XQSecureUtil")
  L3_2 = {}
  L3_2.code = 0
  L4_2 = {}
  L5_2 = L0_1.formvalue("cwmp_enable")
  L4_2.cwmp_enable = L5_2
  L5_2 = L0_1.formvalue("cwmp_inform_enable")
  L4_2.cwmp_inform_enable = L5_2
  L5_2 = L0_1.formvalue("inform_interval")
  L4_2.inform_interval = L5_2
  L6_2, L7_2 = L0_1.formvalue("acs_url")
  L5_2 = L2_2.xssCheck(L6_2, L7_2)
  L4_2.acs_url = L5_2
  L5_2 = L0_1.formvalue("acs_username")
  L4_2.acs_username = L5_2
  L5_2 = L0_1.formvalue("acs_password")
  L4_2.acs_password = L5_2
  L5_2 = L0_1.formvalue("wan_label")
  L4_2.wan_label = L5_2
  L5_2 = L0_1.formvalue("conn_request_auth")
  L4_2.conn_request_auth = L5_2
  L5_2 = L0_1.formvalue("conn_username")
  L4_2.conn_username = L5_2
  L5_2 = L0_1.formvalue("conn_password")
  L4_2.conn_password = L5_2
  L5_2 = L0_1.formvalue("conn_port")
  if not L5_2 then
    L5_2 = ""
  end
  L4_2.conn_port = L5_2
  L5_2 = L0_1.formvalue("country")
  if not L5_2 then
    L5_2 = ""
  end
  L4_2.country = L5_2
  L5_2 = L0_1.formvalue("isp")
  if not L5_2 then
    L5_2 = ""
  end
  L4_2.isp = L5_2
  L5_2 = L0_1.formvalue("chk_network")
  if not L5_2 then
    L5_2 = ""
  end
  L4_2.chk_network = L5_2
  L5_2 = L0_1.formvalue("retry_inform")
  if not L5_2 then
    L5_2 = ""
  end
  L4_2.retry_inform = L5_2
  L5_2 = L0_1.formvalue("conn_failed_opt")
  if not L5_2 then
    L5_2 = ""
  end
  L4_2.conn_failed_opt = L5_2
  L5_2 = L0_2.isStrNil(L4_2.country)
  if L5_2 then
    L4_2.country = "common"
  end
  L5_2 = L4_2.cwmp_enable
  if L5_2 == "1" then
    L5_2 = L1_2.checkValue(L4_2)
    L3_2.code = L5_2
  end
  L5_2 = L3_2.code
  if L5_2 == 0 then
    L5_2 = L1_2.setCwmp(L4_2)
    L3_2.code = L5_2
  end
  L5_2 = L3_2.code
  if L5_2 ~= 0 then
    L5_2 = L1_1.getErrorMessage(L3_2.code)
    L3_2.msg = L5_2
  end
  L0_1.write_json(L3_2)
end


function getCwmpInfo()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.util.XQCwmpUtil")
  L2_2 = L0_1.formvalue("wan_label")
  if not L2_2 then
    L2_2 = nil
  end
  L3_2 = L0_1.formvalue("country")
  if not L3_2 then
  end
  L4_2 = L0_1.formvalue("isp")
  if not L4_2 then
  end
  L5_2 = L1_2.getCwmpSec(L2_2, "common", nil)
  L6_2 = {}
  L6_2.code = 0
  L7_2 = L0_2.isStrNil(L2_2)
  if not L7_2 then
    L7_2 = L0_2.isStrNil(L5_2)
    if L7_2 then
      L6_2.code = 1502
      L7_2 = L1_1.getErrorMessage(L6_2.code)
      L6_2.msg = L7_2
  end
  else
    L6_2.code = 0
    L7_2 = L1_2.getCwmpInfo(L5_2)
    L6_2.current = L7_2
  end
  L0_1.write_json(L6_2)
end

L4_1 = 4

function setRouterToBaidu()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L0_2 = {}
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L4_2 = require("luci.util")
  L5_2 = require("json")
  L6_2 = L0_1.formvalue("userName", nil, "commonstr")
  L7_2 = L0_1.formvalue("token", nil, "commonstr")
  L8_2 = L0_1.formvalue("localDire", nil, "json")
  L9_2 = L0_1.formvalue("remoteDire", nil, "commonstr")
  L10_2 = L0_1.formvalue("level", nil, "commonstr")
  L11_2 = require("xiaoqiang.XQStatPoints")
  L11_2.Log("storage.baidupan", "upload:1")
  L12_2 = L2_2.isStrNil(L7_2)
  if not L12_2 then
    L12_2 = L2_2.isStrNil(L8_2)
    if not L12_2 then
      L12_2 = L2_2.isStrNil(L9_2)
      if not L12_2 then
        L12_2 = L2_2.isStrNil(L10_2)
        if not L12_2 then
          L12_2 = L2_2.isStrNil(L6_2)
          if not L12_2 then
            goto lbl_85
          end
        end
      end
    end
  end
  L0_2.code = 1502
  L0_1.write_json(L0_2)
  do return end
  ::lbl_85::
  L1_2.log(L4_1, "BAIDUPAN setRouterToBaidu token " .. L7_2 .. " local: " .. L8_2 .. " remote: " .. L9_2 .. " mode: " .. L10_2 .. " username: " .. L6_2)
  L3_2.setUserName(L6_2)
  L12_2 = L3_2.checkLocalFileName(L8_2)
  L12_2 = L3_2.checkFileFormat(L12_2)
  if not L12_2 then
    L13_2 = L3_2.BDPAN_ERROR_CODE.ERROR_DIR_OR_FILE_NAME_EXCEPT
    L0_2.code = L13_2
    L0_1.write_json(L0_2)
    return
  end
  L13_2 = L3_2.getLocalPanDire()
  L14_2 = type(L13_2)
  if L14_2 == "number" then
    L0_2.code = L13_2
    L0_1.write_json(L0_2)
    return
  end
  L14_2 = L5_2.decode(L8_2)
  L15_2 = L3_2.parsesLocalDire(L14_2, L10_2)
  L16_2 = type(L15_2)
  if L16_2 == "number" then
    L0_2.code = L15_2
    L0_1.write_json(L0_2)
    return
  end
  L16_2 = {}
  L16_2.token = L7_2
  L16_2.remote_directory = L9_2
  L16_2.level = L10_2
  L16_2.directorys = L8_2
  L17_2 = L3_2.callUbus("upload", L16_2)
  L18_2 = L2_2.isStrNil(L17_2)
  if L18_2 then
    L18_2 = L3_2.BDPAN_ERROR_CODE.ERROR_UBUS_CALL_FAILED
    L0_2.code = L18_2
    L0_1.write_json(L0_2)
    return
  end
  L18_2 = L17_2.code
  L0_2.code = L18_2
  L0_1.write_json(L0_2)
end


function setBaiduToRouter()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = {}
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = require("luci.util")
  L5_2 = require("json")
  L6_2 = L0_1.formvalue("token", nil, "commonstr")
  L7_2 = L0_1.formvalue("userName", nil, "commonstr")
  L8_2 = L0_1.formvalue("info", nil, "json")
  L9_2 = require("xiaoqiang.XQStatPoints")
  L9_2.Log("storage.baidupan", "download:1")
  if not (L6_2 and L8_2) or not L7_2 then
    L0_2.code = 1502
    L0_1.write_json(L0_2)
    return
  end
  L1_2.log(L4_1, "BAIDUPAN setBaiduToRouter token " .. L6_2 .. " username: " .. L7_2 .. " info: " .. L8_2)
  L2_2.setUserName(L7_2)
  L10_2 = L2_2.checkRemoteFileName(L8_2)
  L1_2.log(L4_1, "BAIDUPAN setBaiduToRouter info: " .. L10_2)
  L10_2 = L2_2.getLocalPanDire()
  L11_2 = type(L10_2)
  if L11_2 == "number" then
    L11_2 = dir_result
    L0_2.code = L11_2
    L0_1.write_json(L0_2)
    return
  end
  L11_2 = L5_2.decode(L8_2)
  L12_2 = L2_2.parseDlink(L11_2)
  L13_2 = type(L12_2)
  if L13_2 == "number" then
    L13_2 = L2_2.BDPAN_ERROR_CODE.ERROR_UBUS_CALL_FAILED
    L0_2.code = L13_2
    L0_1.write_json(L0_2)
    return
  end
  L13_2 = {}
  L13_2.token = L6_2
  L13_2.local_directory = L10_2
  L13_2.info = L8_2
  L14_2 = L2_2.callUbus("download", L13_2)
  L15_2 = L3_2.isStrNil(L14_2)
  if L15_2 then
    L15_2 = L2_2.BDPAN_ERROR_CODE.ERROR_UBUS_CALL_FAILED
    L0_2.code = L15_2
    L0_1.write_json(L0_2)
    return
  end
  L15_2 = L14_2.code
  L0_2.code = L15_2
  L0_1.write_json(L0_2)
end


function deleteTransportList()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = {}
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("json")
  L3_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L4_2 = require("xiaoqiang.common.XQFunction")
  L5_2 = L0_1.formvalue("userName", nil, "commonstr")
  L6_2 = L0_1.formvalue("actiontype", nil, "commonstr")
  L7_2 = L0_1.formvalue("listtype", nil, "commonstr")
  L8_2 = L0_1.formvalue("actionids", nil, "json")
  L9_2 = require("luci.util")
  L10_2 = require("luci.model.uci")
  L10_2 = L10_2.cursor()
  L11_2 = L4_2.isStrNil(L5_2)
  if not L11_2 then
    L11_2 = L4_2.isStrNil(L7_2)
    if not L11_2 then
      L11_2 = L4_2.isStrNil(L8_2)
      if not L11_2 then
        L11_2 = L4_2.isStrNil(L6_2)
        if not L11_2 then
          goto lbl_72
        end
      end
    end
  end
  L0_2.code = 1502
  L0_1.write_json(L0_2)
  do return end
  ::lbl_72::
  L1_2.log(L4_1, "BAIDUPAN deleteTransportList: " .. L5_2 .. " listtype: " .. L7_2 .. " actiontids: " .. L8_2)
  L3_2.deleteTransportList(L6_2, L7_2, L8_2)
  L11_2 = {}
  L11_2.actiontype = L6_2
  L11_2.listtype = L7_2
  L11_2.actionid = L8_2
  L3_2.callUbus("deltranslistfile", L11_2)
  L0_2.code = 0
  L0_1.write_json(L0_2)
end


function time_cmp(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = require("luci.util")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = L3_2.isStrNil(A0_2)
  if not L4_2 then
    L4_2 = L3_2.isStrNil(A1_2)
    if not L4_2 then
      goto lbl_19
    end
  end
  L4_2 = true
  do return L4_2 end
  ::lbl_19::
  L4_2 = L2_2.split(A0_2, ":")
  L5_2 = tonumber(L4_2[2])
  L6_2 = tonumber(L4_2[5])
  L7_2 = L3_2.isStrNil(L6_2)
  if L7_2 then
    L6_2 = 2147483647
  end
  L7_2 = L2_2.split(A1_2, ":")
  L8_2 = tonumber(L7_2[2])
  L9_2 = tonumber(L7_2[5])
  L10_2 = L3_2.isStrNil(L9_2)
  if L10_2 then
  end
  L10_2 = L6_2 > 2147483647
  return L10_2
end


function getTransportList()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L5_2 = {}
  L6_2 = 10
  L7_2 = require("xiaoqiang.XQLog")
  L8_2 = require("json")
  L9_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L10_2 = require("xiaoqiang.common.XQFunction")
  L11_2 = require("luci.util")
  L12_2 = L0_1.formvalue("userName", nil, "commonstr")
  L13_2 = L0_1.formvalue("listtype", nil, "commonstr")
  L14_2 = L0_1.formvalue("listoffset", nil, "commonstr")
  L15_2 = require("luci.model.uci")
  L15_2 = L15_2.cursor()
  L16_2 = {}
  L16_2.code = 0
  L16_2.downloadlist = ""
  L16_2.uploadlist = ""
  if not (L12_2 and L13_2) or not L14_2 then
    L16_2.code = 1502
    L0_1.write_json(L16_2)
    return
  end
  L7_2.log(L4_1, "BAIDUPAN getTransportList: " .. L12_2 .. " mode: " .. L13_2 .. " offset: " .. L14_2)
  L17_2 = L15_2.get(L15_2, "baidupan", "user", "name")
  L3_2 = L17_2
  L17_2 = L15_2.get(L15_2, "baidupan", "user", "localdir")
  L4_2 = L17_2
  L17_2 = {}
  L17_2.listtype = L13_2
  L18_2 = L9_2.callUbus("gettranslist", L17_2)
  L19_2 = L10_2.isStrNil(L18_2)
  if L19_2 then
    L19_2 = L9_2.BDPAN_ERROR_CODE.ERROR_UBUS_CALL_FAILED
    L16_2.code = L19_2
    L0_1.write_json(L16_2)
    return
  end
  if L13_2 and L13_2 == "uploadlist" then
    L19_2 = L8_2.decode(L18_2.list)
    table.sort(L19_2, time_cmp)
    L20_2 = L9_2.splitList(L19_2)
    L16_2.uploadlist = L20_2
  elseif L13_2 and L13_2 == "downloadlist" then
    L19_2 = L8_2.decode(L18_2.list)
    table.sort(L19_2, time_cmp)
    L20_2 = L9_2.splitList(L19_2)
    L16_2.downloadlist = L20_2
  else
    L7_2.log(L4_1, "paramter error!")
  end
  L16_2.username = L3_2
  L16_2.localdir = L4_2
  L0_1.write_json(L16_2)
end


function setTransListAction()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = require("json")
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = L0_1.formvalue("userName", nil, "commonstr")
  L5_2 = L0_1.formvalue("actiontype", nil, "commonstr")
  L6_2 = L0_1.formvalue("listtype", nil, "commonstr")
  L7_2 = L0_1.formvalue("actionid", nil, "commonstr")
  L8_2 = require("luci.model.uci")
  L8_2 = L8_2.cursor()
  L9_2 = {}
  L9_2.code = 0
  L10_2 = L3_2.isStrNil(L4_2)
  if not L10_2 then
    L10_2 = L3_2.isStrNil(L5_2)
    if not L10_2 then
      L10_2 = L3_2.isStrNil(L7_2)
      if not L10_2 then
        goto lbl_65
      end
    end
  end
  L9_2.code = 1502
  L0_1.write_json(L9_2)
  do return end
  ::lbl_65::
  L1_2.log(L4_1, "BAIDUPAN setBaidupanAction: " .. L4_2 .. " actiontype: " .. L5_2 .. " actionid: " .. L7_2)
  L10_2 = {}
  L10_2.actiontype = L5_2
  L10_2.listtype = L6_2
  L10_2.actionid = L7_2
  L2_2.callUbus("translistaction", L10_2)
  L0_1.write_json(L9_2)
end


function getTransListFileStat()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = require("json")
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("luci.util")
  L3_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L4_2 = require("xiaoqiang.common.XQFunction")
  L5_2 = L0_1.formvalue("userName", nil, "commonstr")
  L6_2 = L0_1.formvalue("listtype", nil, "commonstr")
  L7_2 = L0_1.formvalue("actionid", nil, "commonstr")
  L8_2 = require("luci.model.uci")
  L8_2 = L8_2.cursor()
  L9_2 = {}
  L9_2.code = 0
  L10_2 = L4_2.isStrNil(L5_2)
  if not L10_2 then
    L10_2 = L4_2.isStrNil(L6_2)
    if not L10_2 then
      L10_2 = L4_2.isStrNil(L7_2)
      if not L10_2 then
        goto lbl_62
      end
    end
  end
  L9_2.code = 1502
  L0_1.write_json(L9_2)
  do return end
  ::lbl_62::
  L10_2 = {}
  L10_2.listtype = L6_2
  L10_2.actionid = L7_2
  L11_2 = L3_2.callUbus("transfilestat", L10_2)
  L12_2 = L4_2.isStrNil(L11_2)
  if L12_2 then
    L9_2.code = 1502
    L0_1.write_json(L9_2)
    return
  end
  L12_2 = L11_2.percent
  L9_2.percentage = L12_2
  L12_2 = L11_2.speed
  L9_2.speed = L12_2
  L0_1.write_json(L9_2)
end


function getTransListCount()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("luci.util")
  L4_2 = require("json")
  L5_2 = L0_1.formvalue("userName", nil, "commonstr")
  L6_2 = L2_2.isStrNil(L5_2)
  if L6_2 then
    L0_2.code = 1502
    L0_1.write_json(L0_2)
    return
  end
  L6_2 = {}
  L7_2 = L1_2.callUbus("gettranslistcount", L6_2)
  L8_2 = L2_2.isStrNil(L7_2)
  if L8_2 then
    L0_2.code = 1502
    L0_1.write_json(L0_2)
    return
  end
  L8_2 = L7_2.count
  L0_2.count = L8_2
  L0_1.write_json(L0_2)
end


function setBaiduPath()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = L0_1.formvalue("userName", nil, "commonstr")
  L3_2 = L0_1.formvalue("path", nil, "commonstr")
  L4_2 = {}
  L4_2.code = 0
  L5_2 = L1_2.isStrNil(L2_2)
  if not L5_2 then
    L5_2 = L1_2.isStrNil(L3_2)
    if not L5_2 then
      goto lbl_37
    end
  end
  L4_2.code = 1502
  L0_1.write_json(L4_2)
  do return end
  ::lbl_37::
  L5_2 = L0_2.setBaidupanPath(L3_2)
  code = L5_2
  L5_2 = code
  L4_2.code = L5_2
  L0_1.write_json(L4_2)
end


function getBaiduPath()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.module.XQBaiduPanUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = L0_1.formvalue("userName", nil, "commonstr")
  L3_2 = {}
  L4_2 = {}
  L4_2.code = 0
  L4_2.path = ""
  L4_2.bindStatus = ""
  L5_2 = L1_2.isStrNil(L2_2)
  if L5_2 then
    L4_2.code = 1502
    L0_1.write_json(L4_2)
    return
  end
  L5_2 = L0_2.getBaidupanPath()
  L5_2 = L5_2.path
  L4_2.path = L5_2
  L5_2 = L3_2.bindStatus
  L4_2.bindStatus = L5_2
  L0_1.write_json(L4_2)
end

L5_1 = 6

function setMiDocker()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("xiaoqiang.module.XQMiDockerUtil")
  L4_2 = require("luci.model.uci")
  L4_2 = L4_2.cursor()
  L5_2 = L0_1.formvalue("mode")
  L6_2 = L4_2.get(L4_2, "mi_docker", "settings", "docker_enable")
  L7_2 = L4_2.get(L4_2, "mi_docker", "settings", "docker_install")
  L8_2 = L3_2.DOCKER_ERROR_CODE
  L9_2 = L2_2.isStrNil(L5_2)
  if L9_2 then
    L0_2.code = 1502
    L0_1.write_json(L0_2)
    return
  end
  L1_2.log(L5_1, "setMiDocker mode : " .. L5_2 .. " enable: " .. L6_2 .. " install: " .. L7_2)
  if L7_2 and L7_2 == "0" then
    L9_2 = L3_2.getErrorInfo(L8_2.ERROR_NOT_INSTALL_DOCKER)
    L0_1.write_json(L9_2)
    return
  end
  L1_2.log(L5_1, "setMiDocker mode : " .. L5_2)
  if L5_2 == "1" then
    if L6_2 and L6_2 == "0" then
      L3_2.start()
    end
  elseif L6_2 and L6_2 == "1" then
    L3_2.stop()
  end
  L0_1.write_json(L0_2)
end


function setMiDockerEnv()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = require("xiaoqiang.module.XQStorage")
  L2_2 = require("xiaoqiang.XQLog")
  L3_2 = require("xiaoqiang.common.XQFunction")
  L4_2 = require("xiaoqiang.module.XQMiDockerUtil")
  L5_2 = require("luci.model.uci")
  L5_2 = L5_2.cursor()
  L6_2 = L0_1.formvalue("mode", nil, "numberstr")
  L7_2 = L0_1.formvalue("uuid", nil, "?commonstr")
  L8_2 = L5_2.get(L5_2, "mi_docker", "settings", "docker_install")
  if not L8_2 then
    L8_2 = "0"
  end
  L9_2 = L4_2.DOCKER_ERROR_CODE
  L10_2 = nil
  L11_2 = nil
  L12_2 = L3_2.isStrNil(L6_2)
  if not L12_2 then
    if L6_2 ~= "1" then
      goto lbl_60
    end
    L12_2 = L3_2.isStrNil(L7_2)
    if not L12_2 then
      goto lbl_60
    end
  end
  L0_2.code = 1502
  L0_1.write_json(L0_2)
  do return end
  ::lbl_60::
  L12_2 = L5_2.get(L5_2, "mi_docker", "settings", "device_uuid")
  if not L12_2 then
    L12_2 = ""
  end
  if L6_2 == "1" and L12_2 ~= L7_2 then
    L13_2 = L1_2.getStorageInfoByUuid(L7_2)
    if L11_2 then
      L13_2 = L13_2.type
      if L13_2 then
        L13_2 = L11_2.size
        if L13_2 then
          L18_2, L19_2, L20_2, L21_2, L22_2 = L18_2.upper(L11_2.type)
          L5_2.set(L5_2, "mi_docker", "settings", "device_type", L18_2, L19_2, L20_2, L21_2, L22_2)
          L19_2, L20_2, L21_2, L22_2 = L19_2.sub(L11_2.size, 1, 4294967289)
          L18_2 = tonumber(L19_2, L20_2, L21_2, L22_2)
          L5_2.set(L5_2, "mi_docker", "settings", "device_size", L18_2 / 2)
        end
      end
    end
    L5_2.set(L5_2, "mi_docker", "settings", "device_uuid", L7_2)
    L5_2.commit(L5_2, "mi_docker")
  end
  if L6_2 == "1" then
    L13_2 = L4_2.checkEnv()
    L10_2 = L13_2
    if L10_2 == 1 then
      L13_2 = L4_2.getErrorInfo(L9_2.ERROR_NOT_INSTALL_USB)
      L0_1.write_json(L13_2)
      return
    elseif L10_2 == 2 then
      L13_2 = L4_2.getErrorInfo(L9_2.ERROR_NOT_EXT4)
      L0_1.write_json(L13_2)
      return
    elseif L10_2 == 3 then
      L13_2 = L4_2.getErrorInfo(L9_2.ERROR_NOT_GREATER_32G)
      L0_1.write_json(L13_2)
      return
    end
  end
  if L6_2 == "0" then
    L13_2 = L4_2.checkRunning()
    if L13_2 then
      L13_2 = L4_2.getErrorInfo(L9_2.ERROR_NOW_RUNNING)
      L0_1.write_json(L13_2)
      return
    end
  end
  if L6_2 == "1" then
    if L8_2 == "0" then
      L4_2.install()
    else
      L13_2 = L4_2.getErrorInfo(L9_2.ERROR_DOCKER_ALREADY_INSTALL)
      L0_2 = L13_2
    end
  else
    L4_2.uninstall()
    L5_2.set(L5_2, "mi_docker", "settings", "docker_enable", "0")
    L5_2.delete(L5_2, "mi_docker", "settings", "device_uuid")
    L5_2.delete(L5_2, "mi_docker", "settings", "device_type")
    L5_2.delete(L5_2, "mi_docker", "settings", "device_size")
    L5_2.commit(L5_2, "mi_docker")
  end
  L0_1.write_json(L0_2)
end


function setPortainerEnv()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = require("xiaoqiang.module.XQMiDockerUtil")
  L3_2 = require("luci.model.uci")
  L3_2 = L3_2.cursor()
  L4_2 = L0_1.formvalue("mode")
  L5_2 = L3_2.get(L3_2, "mi_docker", "settings", "docker_enable")
  L6_2 = L3_2.get(L3_2, "mi_docker", "settings", "portainer_install")
  L8_2 = L1_2.isStrNil(L4_2)
  if L8_2 then
    L0_2.code = 1502
    L0_1.write_json(L0_2)
    return
  end
  if L5_2 and L5_2 == "0" then
    L8_2 = L2_2.getErrorInfo(L2_2.DOCKER_ERROR_CODE.ERROR_NOT_START_DOCKER)
    L0_1.write_json(L8_2)
    return
  end
  if L4_2 == "1" and L6_2 == "1" then
    L8_2 = L2_2.getErrorInfo(L7_2.ERROR_ALREADY_INSTALL)
    L0_1.write_json(L8_2)
    return
  end
  if L4_2 == "1" and L6_2 and L6_2 == "0" then
    L2_2.installPortainer()
  end
  L0_1.write_json(L0_2)
end


function setPortainerManage()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = require("xiaoqiang.XQLog")
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = require("xiaoqiang.module.XQMiDockerUtil")
  L4_2 = require("xiaoqiang.util.XQLanWanUtil")
  L5_2 = require("luci.model.uci")
  L5_2 = L5_2.cursor()
  L7_2 = L5_2.get(L5_2, "mi_docker", "settings", "docker_enable")
  if L7_2 and L7_2 == "0" then
    L8_2 = L3_2.getErrorInfo(L3_2.DOCKER_ERROR_CODE.ERROR_NOT_START_DOCKER)
    L0_1.write_json(L8_2)
    return
  end
  L8_2 = L4_2.getLanIp()
  L9_2 = L2_2.isStrNil(L8_2)
  if L9_2 then
    L9_2 = L3_2.getErrorInfo(L6_2.ERROR_LAN_NOT_EXIST_IP)
    L0_2.http = "error"
  else
    L9_2 = "http://" .. L8_2 .. ":9001"
    L0_2.http = L9_2
  end
  L0_1.write_json(L9_2)
end


function getDockerInfo()
  local L0_2, L1_2, L2_2
  L0_2 = require("xiaoqiang.module.XQMiDockerUtil")
  L2_2 = L0_2.getInfo()
  L0_1.write_json(L2_2)
end


function setMiDockerCancel()
  local L0_2, L1_2, L2_2
  L0_2 = require("xiaoqiang.module.XQMiDockerUtil")
  L0_2.cancelInstall()
  L2_2 = {}
  L2_2.code = 0
  L0_1.write_json(L2_2)
end


function setPortainerCancel()
  local L0_2, L1_2, L2_2
  L0_2 = require("xiaoqiang.module.XQMiDockerUtil")
  L0_2.cancelInstallPortainer()
  L2_2 = {}
  L2_2.code = 0
  L0_1.write_json(L2_2)
end


function getTwt()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = L0_2.get_twt_hostap()
  L1_2.status = L2_2
  L0_1.write_json(L1_2)
end


function setTwt()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = require("xiaoqiang.util.XQWifiUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = L0_1.formvalue("on")
  L3_2 = {}
  L3_2.code = 0
  L4_2 = L0_2.set_twt_hostap(L2_2)
  if not L4_2 then
    L3_2.code = 1537
  end
  L0_1.write_json(L3_2)
  L0_1.close()
  L1_2.forkRestartWifiNotify()
end


function netLocked_cmcc()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = require("xiaoqiang.common.XQFunction")
  L2_2 = L2_2.get(L2_1, "andlink", "@cfg_item[0]", "if6_clientIP")
  L3_2 = L1_2.isStrNil(L2_2)
  if L3_2 then
    L3_2 = L0_2.getLanWanIp("wan")
    L3_2 = L3_2[1]
    if not L3_2 then
      L4_2 = L0_2.getLanWanIp("lan")
    end
    if not L3_2 then
      L4_2 = {}
    end
    L2_2 = L4_2[1] or L4_2.ip or L2_2
    if not L4_2 then
      L2_2 = "192.168.10.1"
    end
  end
  L5_2, L6_2, L7_2 = string.format("<html><title>\232\174\190\229\164\135\233\148\129\229\174\154</title><body><h1>\230\156\172\232\183\175\231\148\177\229\153\168\232\174\190\229\164\135\233\153\144\229\136\182\229\156\168\228\184\173\229\155\189\231\167\187\229\138\168\229\174\189\229\184\166\231\189\145\231\187\156\228\184\139\228\189\191\231\148\168\239\188\140\232\175\183\229\136\135\230\141\162\231\189\145\231\187\156\233\135\141\232\175\149</h1>" .. "<h1>\232\174\190\229\164\135\229\189\147\229\137\141\231\189\145\231\187\156IP\229\156\176\229\157\128\228\184\186 %s</h1>" .. "</body></html>", L2_2)
  L0_1.write(L5_2, L6_2, L7_2)
end


function netLocked_cu()
  local L0_2, L1_2, L2_2
  L0_1.write("<html><title>\232\174\190\229\164\135\233\148\129\229\174\154</title><body><h1>\230\130\168\231\154\132\232\174\190\229\164\135\228\184\186\228\184\173\229\155\189\232\129\148\233\128\154\231\187\132\231\189\145\232\174\190\229\164\135\239\188\140\229\189\147\229\137\141\232\174\190\229\164\135\228\189\191\231\148\168\229\140\186\229\159\159\228\184\142\228\184\154\229\138\161\229\133\129\232\174\184\228\189\191\231\148\168\229\140\186\229\159\159\228\184\141\231\172\166\239\188\140\232\175\183\232\129\148\231\179\187\230\153\186\229\174\182\229\183\165\231\168\139\229\184\136\229\164\132\231\144\134</h1>" .. "</body></html>")
end


function setWifiSilence()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L0_1.formvalue("on")
  L0_2 = tonumber(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if L0_2 == 1 then
    L0_2 = "1"
    if L0_2 then
      goto lbl_13
    end
  end
  L0_2 = "0"
  ::lbl_13::
  L1_2 = require("luci.model.uci")
  L1_2 = L1_2.cursor()
  L2_2 = require("xiaoqiang.common.XQFunction")
  L3_2 = {}
  L3_2.code = 0
  L1_2.set(L1_2, "wireless", "wifi0", "disabled", L0_2)
  L1_2.set(L1_2, "wireless", "wifi1", "disabled", L0_2)
  L1_2.commit(L1_2, "wireless")
  os.execute("echo " .. L0_2 .. " > /tmp/wifi_silence")
  L2_2.forkExec("/sbin/wifi")
  L0_1.write_json(L3_2)
end


function getWifiSilence()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = {}
  L0_2.code = 0
  L0_2.on = 0
  L1_2 = io.popen("cat /tmp/wifi_silence 2>/dev/null")
  L3_2, L4_2, L5_2 = L1_2.read(L1_2, "*all")
  L2_2 = string.trim(L3_2, L4_2, L5_2)
  if not L2_2 then
  end
  L1_2.close(L1_2)
  L3_2 = tonumber("0")
  L0_2.on = L3_2
  L0_1.write_json(L0_2)
end


function setItms()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = require("xiaoqiang.common.XQFunction")
  L1_2 = require("xiaoqiang.util.XQLanWanUtil")
  L2_2 = require("luci.util")
  L3_2 = require("luci.model.uci")
  L3_2 = L3_2.cursor()
  L4_2 = L0_1.formvalue("username")
  L5_2 = L0_1.formvalue("userpwd")
  L6_2 = L0_1.formvalue("PPPOEuser")
  L7_2 = L0_1.formvalue("PPPOEpassword")
  L8_2 = L0_1.formvalue("area")
  L9_2 = L0_1.formvalue("action")
  L10_2 = L0_1.formvalue("sn")
  L11_2 = {}
  L11_2.Result = "Default Configuration Succ"
  L12_2 = L3_2.get(L3_2, "xiaoqiang", "common", "NETMODE")
  L13_2 = require("json")
  L14_2 = require("xiaoqiang.util.XQSysUtil")
  L15_2 = L0_2.isStrNil(L8_2)
  if not L15_2 then
    L3_2.set(L3_2, "isp-dp", "core", "province_code", L8_2)
    L3_2.commit(L3_2, "isp-dp")
  end
  if L9_2 == "GetRegStat" then
    L15_2 = L3_2.get(L3_2, "andlink", "core", "zero_cfg_stats")
    if L15_2 == "1" then
      L16_2 = L1_2.getPPPoEStatus()
      L20_2 = L13_2.encode(L16_2)
      logger.log(4, " wan_status :" .. L20_2)
      if not L16_2 then
        L17_2 = {}
      end
      L17_2 = L16_2 or L17_2.status
      if not L17_2 then
        L11_2.Result = "PPPOE Failed"
      else
        L17_2 = L16_2.status
        if 2 == L17_2 then
          L11_2.Result = "Getting WAN Address"
          L3_2.set(L3_2, "andlink", "core", "zero_cfg_stats", "2")
          L3_2.set(L3_2, "andlink", "core", "nv_zero_stats_hold_times", "1")
        else
          L17_2 = L16_2.status
          if 3 == L17_2 then
            L11_2.Result = "PPPOE Failed"
          else
            L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L3_2.get(L3_2, "andlink", "core", "nv_zero_stats_hold_times")
            L17_2 = tonumber(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
            if not L17_2 then
            end
            logger.log(4, "Setting Default Configuration nv_zero_stats_hold_times :" .. 1)
            if 10 <= L17_2 then
              L11_2.Result = "PPPOE Failed"
            else
              L23_2, L24_2 = tostring(L17_2 + 1)
              L3_2.set(L3_2, "andlink", "core", "nv_zero_stats_hold_times", L23_2, L24_2)
              L11_2.Result = "Setting Default Configuration"
            end
          end
        end
      end
      L0_1.write_json(L11_2)
    elseif L15_2 == "2" then
      L16_2 = L1_2.ubusWanStatus()
      L17_2 = L16_2.up
      if L17_2 then
        if not L18_2 then
          L18_2 = {}
        end
        L17_2 = L0_2.isStrNil(L16_2.ipv4[1].ip)
        if not L17_2 then
          L0_2.forkExec("andlink_restart")
          L11_2.Result = "Getting WAN Address"
          L3_2.set(L3_2, "andlink", "core", "zero_cfg_stats", "3")
      end
      else
        L11_2.Result = "Getting Address Failed"
      end
      L0_1.write_json(L11_2)
    elseif L15_2 == "3" then
      L16_2 = L2_2.exec("andlink_if6_status")
      L17_2 = tonumber(L16_2)
      if 0 == L17_2 then
        L11_2.Result = "Intelligent Platform Auth Succ"
        L3_2.set(L3_2, "andlink", "core", "zero_cfg_stats", "10")
        L3_2.set(L3_2, "andlink", "core", "nv_zero_stats_hold_times", "1")
      else
        L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L3_2.get(L3_2, "andlink", "core", "nv_zero_stats_hold_times")
        L17_2 = tonumber(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        if not L17_2 then
        end
        logger.log(4, " Registering Intelligent nv_zero_stats_hold_times :" .. 1)
        if 20 <= L17_2 then
          L11_2.Result = "Default Configuration Failed"
        else
          L23_2, L24_2 = tostring(L17_2 + 1)
          L3_2.set(L3_2, "andlink", "core", "nv_zero_stats_hold_times", L23_2, L24_2)
          L11_2.Result = "Getting WAN Address"
        end
      end
      L0_1.write_json(L11_2)
    elseif L15_2 == "10" then
      L11_2.Result = "Intelligent Platform Auth Succ"
      L0_1.write_json(L11_2)
    else
      L11_2.Result = "Intelligent Platform Auth Succ"
      L0_1.write_json(L11_2)
    end
  else
    while true do
      L15_2 = L0_2.isStrNil(L5_2)
      if L15_2 then
        L11_2.Result = "Auth Failed"
        L0_1.write_json(L11_2)
        logger.log(4, "username userpwd nil ")
        break
      else
        L15_2 = string.format("echo -n %sa2ffa5c9be07488bbb04a3a47d3c5f6a | openssl dgst -r -sha256 | cut -d' ' -f1", L5_2)
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L2_2.exec(L15_2)
        L16_2 = L2_2.trim(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L17_2 = L3_2.get(L3_2, "account", "common", "admin")
        logger.log(4, "sys_passwd  " .. L17_2)
        if L17_2 ~= L16_2 then
          L11_2.Result = "Auth Failed"
          L0_1.write_json(L11_2)
          logger.log(4, " userpwd err")
          break
        end
      end
      if L12_2 == "lanapmode" or L12_2 == "wifiapmode" then
        L11_2.Result = "Bridge Mode Failed"
        L0_1.write_json(L11_2)
        logger.log(4, "Bridge Mode Failed netmode :" .. L12_2)
        break
      end
      L15_2 = L14_2.getISPSN()
      if L10_2 ~= L15_2 then
        L11_2.Result = "SN Error"
        L0_1.write_json(L11_2)
        logger.log(4, "SN Error")
        break
      end
      L15_2 = L0_2.isStrNil(L6_2)
      if not L15_2 then
        L15_2 = L0_2.isStrNil(L7_2)
        if not L15_2 then
          goto lbl_365
        end
      end
      L11_2.Result = "PPPOEuser or PPPOEpassword is NULL"
      L0_1.write_json(L11_2)
      do break end
      goto lbl_425
      ::lbl_365::
      L15_2 = false
      if L15_2 then
        L11_2.Result = "Intelligent Platform Normal Error"
        L0_1.write_json(L11_2)
        break
      else
        L15_2 = {}
        L15_2.wanType = "pppoe"
        L15_2.username = L6_2
        L15_2.password = L7_2
        L15_2.special = "1"
        L15_2.autoset = "1"
        L15_2.wanConn = "wan"
        L15_2.ipChk = "1"
        L16_2 = L1_2.get_wanDevCfg(L15_2.wanConn, "Router", L15_2.wanType, 4)
        L15_2.wanDevCfg = L16_2
        L16_2 = L1_2.setWan4PPPoE(L15_2)
        if L16_2 then
          L11_2.Result = "Default Configuration Succ"
          L3_2.set(L3_2, "andlink", "core", "zero_cfg_stats", "1")
          L3_2.set(L3_2, "andlink", "core", "nv_zero_stats_hold_times", "1")
          L0_1.write_json(L11_2)
          break
        else
          logger.log(4, "setWanPPPoE failed ")
          L11_2.Result = "PPPOE Failed"
          L0_1.write_json(L11_2)
          break
        end
      end
      ::lbl_425::
    end
  end
  L3_2.commit(L3_2, "andlink")
end


function getBridgeLanStatus()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = require("xiaoqiang.util.XQLanWanUtil")
  L1_2 = {}
  L1_2.code = 0
  L2_2 = {}
  L1_2.ipv4 = L2_2
  L2_2 = {}
  L1_2.ipv6 = L2_2
  L2_2 = L0_2.getLanStatus()
  L1_2.ipv4 = L2_2
  L2_2 = L0_2.getLanV6Status()
  L1_2.ipv6 = L2_2
  L0_1.write_json(L1_2)
end


function setGwSecurity()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("luci.model.uci")
  L1_2 = L1_2.cursor()
  L2_2 = {}
  L2_2.code = 0
  L3_2 = L0_1.formvalue("on")
  if not L3_2 then
  end
  if L3_2 ~= "1" and L3_2 ~= "0" then
    L0_2.log(6, "Gateway Security switch is:" .. "0")
    L2_2.code = 1537
  else
    L1_2.set(L1_2, "local_gw_security", "settings", "enabled", L3_2)
    L1_2.commit(L1_2, "local_gw_security")
    os.execute("/etc/init.d/local_gw_security restart")
  end
  L4_2 = L2_2.code
  if L4_2 ~= 0 then
    L4_2 = L1_1.getErrorMessage(L2_2.code)
    L2_2.msg = L4_2
  end
  L0_1.write_json(L2_2)
end


function getGwSecurity()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = require("xiaoqiang.XQLog")
  L1_2 = require("luci.model.uci")
  L1_2 = L1_2.cursor()
  L2_2 = {}
  L2_2.code = 0
  L2_2.msg = "success"
  L3_2 = L1_2.get(L1_2, "local_gw_security", "settings", "enabled")
  if not L3_2 then
    L3_2 = "0"
  end
  L2_2.enable = L3_2
  L3_2 = L2_2.code
  if L3_2 ~= 0 then
    L3_2 = L1_1.getErrorMessage(L2_2.code)
    L2_2.msg = L3_2
  end
  L0_1.write_json(L2_2)
end

