Ghost_Runaway267000_Logic = function(ai)
   local func1_var1 = ai:GetNpcThinkParamID()
   local func1_var2 = 0
   local func1_var3 = 0
   local func1_var4 = 0
   if func1_var1 == 267010 or func1_var1 == 267011 then
      func1_var3 = 1602850
      func1_var4 = 1602850
      func1_var2 = 1
   elseif func1_var1 == 267020 or func1_var1 == 267021 then
      func1_var3 = 1602851
      func1_var4 = 1602851
      func1_var2 = 1
   elseif func1_var1 == 267030 or func1_var1 == 267031 then
      func1_var3 = 1602852
      func1_var4 = 1602852
      func1_var2 = 1
   elseif func1_var1 == 267040 or func1_var1 == 267041 then
      func1_var3 = 1602853
      func1_var4 = 1602853
      func1_var2 = 1
   elseif func1_var1 == 267050 then
      func1_var3 = 1602854
      func1_var4 = 1602854
      func1_var2 = 1
   end
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

Ghost_Runaway267000_Interupt = function(ai, goal)
end


