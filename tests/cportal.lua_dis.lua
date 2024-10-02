local L0_1, L1_1, L2_1
module("luci.controller.api.cportal", package.seeall)

function index()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = node("api", "cportal")
  L1_2 = firstchild()
  L0_2.target = L1_2
  L0_2.title = ""
  L0_2.order = 200
  L0_2.index = true
  L2_2 = {}
  L2_2[1] = "api"
  L2_2[2] = "cportal"
  L3_2 = firstchild()
  entry(L2_2, L3_2, "", 200)
  L2_2 = {}
  L2_2[1] = "api"
  L2_2[2] = "cportal"
  L2_2[3] = "allow"
  L3_2 = call("captivePortalAllow")
  entry(L2_2, L3_2, "", 201, 1)
end

L0_1 = require("luci.http")
L1_1 = require("xiaoqiang.XQLog")

function captivePortalAllow()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = L0_1.formvalue("callback")
  L2_2 = luci.dispatcher.getremotemac()
  L3_2 = L0_1.formvalue("interval")
  L4_2 = tonumber(L3_2)
  if L4_2 == nil then
  end
  os.execute("/usr/sbin/captive_portal.sh allow " .. L2_2 .. " " .. "")
  L0_1.write_jsonp(L0_2, L1_2)
end

