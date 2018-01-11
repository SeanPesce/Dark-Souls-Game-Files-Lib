PrinceIzalis524000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1402100) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
      if func1_var4 <= 10 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_None, 0, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3005, TARGET_ENE_0, DIST_None, 0, -1)
      end
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1402100) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 55) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 170) then
      if func1_var4 <= 10 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_None, 0, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_None, 0, -1)
      end
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1402100) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_None, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

PrinceIzalis524000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

PrinceIzalis524000Battle_Terminate = function(ai, goal)
end

PrinceIzalis524000Battle_Interupt = function(ai, goal)
   return false
end


