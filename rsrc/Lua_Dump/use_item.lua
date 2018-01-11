REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_UseItem, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_UseItem, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_UseItem, 0, "\131A\131C\131e\131\128\131C\131\147\131f\131b\131N\131X", 0)
UseItem_Activate = function(ai, goal)
   local func1_var2 = goal:GetParam(0)
   ai:ChangeEquipItem(func1_var2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_Item, TARGET_NONE, DIST_None)
end

UseItem_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

UseItem_Terminate = function(ai, goal)
end

UseItem_Interupt = function(ai, goal)
   return false
end


