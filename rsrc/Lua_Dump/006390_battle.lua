Laughtrec_Helper6390Battle_Activate = function(ai, goal)
   Laughtrec_Helper6390_Battle_Approach(ai, goal)
   Laughtrec_Helper6390_Battle_Normal(ai, goal)
   Laughtrec_Helper6390_Battle_Attack_After(ai, goal)
end

Laughtrec_Helper6390_Battle_Approach = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetDist(TARGET_ENE_0)
   local func2_var5 = 2
   if func2_var5 <= func2_var4 then
      if func2_var2 <= 50 then
         CommonNPC_ChangeWepR1(ai, goal)
      else
         CommonNPC_ChangeWepR2(ai, goal)
      end
      if func2_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func2_var5, TARGET_SELF, false, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func2_var5, TARGET_SELF, false, -1)
      end
   end
end

Laughtrec_Helper6390_Battle_Normal = function(ai, goal)
   local func3_var2 = ai:GetRandam_Int(1, 100)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   if func3_var2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if func3_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
end

Laughtrec_Helper6390_Battle_Attack_After = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = 3
   if func4_var2 <= 50 then
      if func4_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      elseif func4_var3 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      end
   elseif func4_var2 <= 50 then
      if func4_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, func4_var4, TARGET_ENE_0, false, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, func4_var4, TARGET_ENE_0, false, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(4, 6), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(25, 50), false, true, -1)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Laughtrec_Helper6390Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Laughtrec_Helper6390Battle_Terminate = function(ai, goal)
end

Laughtrec_Helper6390Battle_Interupt = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func7_var4 = 3
      local func7_var5 = 50
      local func7_var6 = 3
      if func7_var2 <= func7_var4 and func7_var3 <= func7_var5 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, func7_var6, TARGET_ENE_0, true, 4)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func7_var4 = 3
      local func7_var5 = 100
      if func7_var2 <= func7_var4 and func7_var3 <= func7_var5 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func7_var4 = 3
      local func7_var5 = 50
      if func7_var2 < func7_var4 and func7_var3 <= func7_var5 then
         goal:ClearSubGoal()
         if func7_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, func7_var4, TARGET_ENE_0, false, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func7_var4 = 50
      if func7_var3 <= func7_var4 then
         goal:ClearSubGoal()
         if func7_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   return false
end


