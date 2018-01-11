REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_KeepDistYAxis, 0.5, 0.6)
KeepDistYAxis_Activate = function(ai, goal)
   goal:SetNumber(0, 0)
   local func1_var2 = goal:GetParam(3)
   ai:TurnTo(func1_var2)
   local func1_var3 = goal:GetParam(0)
   local func1_var4 = ai:GetDistYSigned(func1_var3)
   local func1_var5 = goal:GetParam(1)
   local func1_var6 = goal:GetParam(2)
   if func1_var5 <= -func1_var4 and -func1_var4 <= func1_var6 then
      goal:SetNumber(0, 2)
   end
end

KeepDistYAxis_Update = function(ai, goal)
   if goal:GetNumber(0) == 2 then
      return GOAL_RESULT_Success
   end
   local func2_var2 = goal:GetParam(3)
   ai:TurnTo(func2_var2)
   local func2_var3 = goal:GetParam(0)
   local func2_var4 = ai:GetDistYSigned(func2_var3)
   local func2_var5 = goal:GetParam(1)
   local func2_var6 = goal:GetParam(2)
   if func2_var5 <= -func2_var4 and -func2_var4 <= func2_var6 then
      goal:SetNumber(0, 1)
   end
   if ai:IsStartAttack() == false or ai:IsEnableCancelMove() then
      if goal:GetNumber(0) ~= 0 then
         goal:SetNumber(0, 0)
         return GOAL_RESULT_Success
      elseif -func2_var4 < func2_var5 then
         ai:SetAttackRequest(705)
      elseif func2_var6 < -func2_var4 then
         ai:SetAttackRequest(706)
      end
   end
   return GOAL_RESULT_Continue
end

KeepDistYAxis_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_KeepDistYAxis, true)
KeepDistYAxis_Interupt = function(ai, goal)
   return false
end


