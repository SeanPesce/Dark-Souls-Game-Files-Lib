REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 0, "EzState\148\212\141\134", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 1, "\141U\140\130\145\206\143\219\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 2, "\144\249\137\241\138p\147x", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_SpecialTurn, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_SpecialTurn, true)
SpecialTurn_Activate = function(ai, goal)
   local func1_var2 = goal:GetParam(0)
   local func1_var3 = goal:GetParam(1)
   local func1_var4 = goal:GetParam(2)
   if ai:IsLookToTarget(func1_var3, func1_var4) then
      goal:SetNumber(0, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, goal:GetLife(), func1_var2, func1_var3, DIST_None, 0, -1)
   end
end

SpecialTurn_Update = function(ai, goal)
   if goal:GetNumber(0) == 1 then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

SpecialTurn_Terminate = function(ai, goal)
end

SpecialTurn_Interupt = function(ai, goal)
   return false
end


