REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboAttack, 0, "EzState\148\212\141\134", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboAttack, 1, "\141U\140\130\145\206\143\219\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboAttack, 2, "\144\172\140\247\139\151\151\163\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboAttack, 3, "\143\227\141U\140\130\138p\147x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonspinningComboAttack, 4, "\137\186\141U\140\130\138p\147x", 0)
NonspinningComboAttack_Activate = function(ai, goal)
   local func1_var2 = goal:GetLife()
   local func1_var3 = goal:GetParam(0)
   local func1_var4 = goal:GetParam(1)
   local func1_var5 = goal:GetParam(2)
   local func1_var6 = 180
   local func1_var7 = 0
   local func1_var8 = 180
   local func1_var9 = true
   local func1_var10 = true
   local func1_var11 = false
   local func1_var12 = true
   local func1_var13 = goal:GetParam(3)
   local func1_var14 = goal:GetParam(4)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, func1_var2, func1_var3, func1_var4, func1_var5, func1_var6, func1_var7, func1_var8, func1_var9, func1_var10, func1_var11, func1_var12, func1_var13, func1_var14)
end

NonspinningComboAttack_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

NonspinningComboAttack_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_NonspinningComboAttack, true)
NonspinningComboAttack_Interupt = function(ai, goal)
   return false
end


