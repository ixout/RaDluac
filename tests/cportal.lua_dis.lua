local L0_1, L1_1, L2_1
L0_1 = module
L1_1 = "luci.controller.api.cportal"
L2_1 = package
L2_1 = L2_1.seeall
L0_1(L1_1, L2_1)

function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = node
  L1_2 = "api"
  L2_2 = "cportal"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = firstchild
  L1_2 = L1_2()
  L0_2.target = L1_2
  L0_2.title = ""
  L0_2.order = 200
  L0_2.index = true
  L1_2 = entry
  L2_2 = {}
  L3_2 = "api"
  L4_2 = "cportal"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L3_2 = firstchild
  L3_2 = L3_2()
  L4_2 = ""
  L5_2 = 200
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = entry
  L2_2 = {}
  L3_2 = "api"
  L4_2 = "cportal"
  L5_2 = "allow"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = call
  L4_2 = "captivePortalAllow"
  L3_2 = L3_2(L4_2)
  L4_2 = ""
  L5_2 = 201
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end

index = L0_1
L0_1 = require
L1_1 = "luci.http"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "xiaoqiang.XQLog"
L1_1 = L1_1(L2_1)

function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L0_2.code = 0
  L1_2 = L0_1
  L1_2 = L1_2.formvalue
  L2_2 = "callback"
  L1_2 = L1_2(L2_2)
  L2_2 = luci
  L2_2 = L2_2.dispatcher
  L2_2 = L2_2.getremotemac
  L2_2 = L2_2()
  L3_2 = L0_1
  L3_2 = L3_2.formvalue
  L4_2 = "interval"
  L3_2 = L3_2(L4_2)
  L4_2 = tonumber
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L3_2 = ""
  end
  L4_2 = os
  L4_2 = L4_2.execute
  L5_2 = "/usr/sbin/captive_portal.sh allow "
  L6_2 = L2_2
  L7_2 = " "
  L8_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L4_2(L5_2)
  L4_2 = L0_1
  L4_2 = L4_2.write_jsonp
  L5_2 = L0_2
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
end

captivePortalAllow = L2_1
