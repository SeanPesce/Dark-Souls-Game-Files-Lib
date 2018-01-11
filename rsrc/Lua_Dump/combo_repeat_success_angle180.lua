REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboRepeat_SuccessAngle180, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboRepeat_SuccessAngle180, 1, "\141U\140\130\145\206\143\219", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboRepeat_SuccessAngle180, 2, "\144\172\140\247\139\151\151\163", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboRepeat_SuccessAngle180, 3, "\143\227\141U\140\130\138p\147x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ComboRepeat_SuccessAngle180, 4, "\137\186\141U\140\130\138p\147x", 0)
ENABLE_COMBO_ATK_CANCEL(GOAL_COMMON_ComboRepeat_SuccessAngle180)
ComboRepeat_SuccessAngle180_Activate = function(ai, goal)
   local func1_var2 = goal:GetLife()
   local func1_var3 = goal:GetParam(0)
   local func1_var4 = goal:GetParam(1)
   local func1_var5 = goal:GetParam(2)
   local func1_var6 = 180
   local func1_var7 = 0
   local func1_var8 = 90
   local func1_var9 = true
   local func1_var10 = true
   local func1_var11 = false
   local func1_var12 = false
   local func1_var13 = goal:GetParam(3)
   local func1_var14 = goal:GetParam(4)
   goal:AddSubGoal(GOAL_COMMON_CommonAttack, func1_var2, func1_var3, func1_var4, func1_var5, func1_var6, func1_var7, func1_var8, func1_var9, func1_var10, func1_var11, func1_var12, func1_var13, func1_var14)
end

ComboRepeat_SuccessAngle180_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ComboRepeat_SuccessAngle180_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ComboRepeat_SuccessAngle180, true)
ComboRepeat_SuccessAngle180_Interupt = function(ai, goal)
   return false
end


