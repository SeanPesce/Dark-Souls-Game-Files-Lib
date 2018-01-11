REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Fall, 0.1, 0.2)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Fall, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 0, "\131^\129[\131Q\131b\131g\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 1, "\151\142\137\186\138J\142nEzState\148\212\141\134", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 2, "\151\142\137\186\146\226\142~EzState\148\212\141\134", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 3, "\151\142\137\186\146\226\142~\131}\129[\131W\131\147[m]", 0)
Fall_Activate = function(ai, goal)
   local func1_var2 = goal:GetParam(0)
   local func1_var3 = goal:GetParam(1)
   local func1_var4 = ai:GetDistYSigned(func1_var2)
   if func1_var4 <= 0 then
      ai:SetAttackRequest(func1_var3)
   end
end

Fall_Update = function(ai, goal)
   local func2_var2 = goal:GetParam(0)
   local func2_var3 = goal:GetParam(1)
   local func2_var4 = goal:GetParam(3)
   local func2_var5 = ai:GetDistYSigned(func2_var2)
   if func2_var4 < func2_var5 then
      return GOAL_RESULT_Success
   else
      ai:SetAttackRequest(func2_var3)
   end
   return GOAL_RESULT_Continue
end

Fall_Terminate = function(ai, goal)
   local func3_var2 = goal:GetParam(2)
   ai:SetAttackRequest(func3_var2)
end

Fall_Interupt = function(ai, goal)
   return false
end


