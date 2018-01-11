Ghost_Runaway268000_Logic = function(ai)
   local func1_var1 = ai:GetNpcThinkParamID()
   local func1_var2 = 0
   local func1_var3 = 0
   local func1_var4 = 0
   func1_var3 = 1602860
   func1_var4 = 1602860
   func1_var2 = 1
   if func1_var2 == 1 then
      if not ai:IsInsideTargetRegion(TARGET_SELF, func1_var3) and not ai:IsInsideTargetRegion(TARGET_SELF, func1_var4) then
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 2, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
      else
         COMMON_EasySetup3(ai)
      end
   else
      COMMON_EasySetup3(ai)
   end
   -- Tried to add an 'end' here but it's incorrect
end

Ghost_Runaway268000_Interupt = function(ai, goal)
end


