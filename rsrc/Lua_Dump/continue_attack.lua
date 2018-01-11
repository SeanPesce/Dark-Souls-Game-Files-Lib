REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 0, "EzState\148\212\141\134", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 1, "\141U\140\130\145\206\143\219\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 2, "\144\172\140\247\139\151\151\163\129y\130\141\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 3, "\150\189\146\134\130\181\130\189\130\231\144\172\140\247\129H", 0)
ContinueAttack_Activate = function(ai, goal)
   local func1_var2 = goal:GetParam(0)
   local func1_var3 = goal:GetParam(1)
   ai:TurnTo(func1_var3)
   ai:SetAttackRequest(func1_var2)
   goal:AddGoalScopedTeamRecord(COORDINATE_TYPE_Attack, func1_var3, 0)
end

ContinueAttack_Update = function(ai, goal)
   local func2_var2 = goal:GetParam(0)
   local func2_var3 = goal:GetParam(1)
   local func2_var4 = goal:GetParam(2)
   local func2_var5 = goal:GetParam(3)
   local func2_var6 = ai:GetDist(func2_var3)
   if func2_var4 <= func2_var6 then
      return GOAL_RESULT_Failed
   elseif goal:GetLife() <= 0 then
      return GOAL_RESULT_Success
   elseif func2_var5 == true and ai:IsHitAttack() == true then
      return GOAL_RESULT_Success
   end
   ai:TurnTo(func2_var3)
   ai:SetAttackRequest(func2_var2)
   return GOAL_RESULT_Continue
end

ContinueAttack_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ContinueAttack, true)
ContinueAttack_Interupt = function(ai, goal)
   return false
end


