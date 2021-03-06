-----------------------------------
-- Area: Valkurm Dunes
--  NPC: Tsunashige, I.M.
-- Outpost Conquest Guards
-- !pos 139.394 -7.885 100.384 103
-----------------------------------
require("scripts/globals/conquest")
-----------------------------------

local guardNation = dsp.nation.BASTOK
local guardType   = dsp.conq.guard.OUTPOST
local guardRegion = dsp.region.ZULKHEIM
local guardEvent  = 32761

function onTrade(player,npc,trade)
    dsp.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    dsp.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

function onEventUpdate(player,csid,option)
    dsp.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    dsp.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end