FUSHI6910Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetHpRate(TARGET_SELF)
   FUSHI6910_Battle_Sword(ai, goal)
end

FUSHI6910_Gitai_Move = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
end

FUSHI6910_Battle_Sword = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = 2
   local func3_var4 = ai:GetRandam_Int(1, 100)
   if func3_var3 <= func3_var2 then
      if func3_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func3_var3, TARGET_SELF, false, 4)
         FUSHI6910_Battle_Kougeki_Noato(ai, goal)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func3_var3, TARGET_SELF, false, -1)
         FUSHI6910_Battle_Kougeki_Noato(ai, goal)
      end
   else
      FUSHI6910_Battle_NormalR_Comb(ai, goal)
      FUSHI6910_Battle_Kougeki_Noato(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
end

FUSHI6910_Battle_NormalR_Comb = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   if func4_var2 <= 80 then
      CommonNPC_SwitchOneHandMode(ai, goal)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      if func4_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      end
      if func4_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      else
         CommonNPC_SwitchBothHandMode(ai, goal)
         if func4_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         if func4_var4 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
      end
      -- Tried to add an 'end' here but it's incorrect
end

FUSHI6910_Battle_Kougeki_Noato = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = 3
   if func5_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(4, 6), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(25, 45), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, func5_var3, TARGET_ENE_0, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, func5_var3, TARGET_ENE_0, true, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(4, 6), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(25, 50), true, true, -1)
   end
end

FUSHI6910Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FUSHI6910Battle_Terminate = function(ai, goal)
end

FUSHI6910Battle_Interupt = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) then
      local func8_var4 = 3
      local func8_var5 = 80
      if func8_var2 <= func8_var4 and func8_var3 <= func8_var5 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, NPC_ATK_StepF, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Near, 0)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func8_var4 = 3
      local func8_var5 = 80
      if func8_var2 <= func8_var4 and func8_var3 <= func8_var5 then
         goal:ClearSubGoal()
         if ai:GetNumber(1) ~= 1 then
            ai:SetNumber(1, 1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 1, TARGET_ENE_0, true, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func8_var4 = 3
      local func8_var5 = 100
      if func8_var2 <= func8_var4 and func8_var3 <= func8_var5 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func8_var4 = 3
      local func8_var5 = 100
      if func8_var2 < func8_var4 and func8_var3 <= func8_var5 then
         goal:ClearSubGoal()
         if func8_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, 1, TARGET_ENE_0, true, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func8_var4 = 70
      if func8_var3 <= func8_var4 then
         goal:ClearSubGoal()
         if func8_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   return false
end


