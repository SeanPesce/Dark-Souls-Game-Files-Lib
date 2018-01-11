REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 0, "\136\218\147\174\145\206\143\219\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 1, "\141U\140\130\138J\142n\139\151\151\163\129ym\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 2, "\141U\140\130EzState\148\212\141\134", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack, 3, "\131K\129[\131hEzState\148\212\141\134", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_DashAttack, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_DashAttack, true)
DashAttack_Activate = function(ai, goal)
   ai:StartDash()
   local func1_var2 = goal:GetParam(0)
   local func1_var3 = goal:GetParam(1)
   local func1_var4 = goal:GetParam(3)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, func1_var2, func1_var3, TARGET_SELF, false, func1_var4)
   local func1_var5 = goal:GetParam(2)
   goal:AddSubGoal(GOAL_COMMON_DashAttack_Attack, 10, func1_var2, func1_var5)
end

DashAttack_Terminate = function(ai, goal)
   ai:EndDash()
end

DashAttack_Update = function(ai, goal, func3_param2)
   return GOAL_RESULT_Continue
end

DashAttack_Interupt = function(ai, goal)
   return false
end

REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack_Attack, 0, "\136\218\147\174\145\206\143\219\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_DashAttack_Attack, 1, "\141U\140\130EzState\148\212\141\134", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_DashAttack_Attack, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_DashAttack_Attack, true)
DashAttack_Attack_Activate = function(ai, goal)
   local func5_var2 = goal:GetParam(0)
   local func5_var3 = goal:GetParam(1)
   ai:MoveTo(func5_var2, AI_DIR_TYPE_CENTER, 0, false)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, func5_var3, func5_var2, DIST_None)
end

DashAttack_Attack_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DashAttack_Attack_Terminate = function(ai, goal)
end

DashAttack_Attack_Interupt = function(ai, goal)
   return false
end


