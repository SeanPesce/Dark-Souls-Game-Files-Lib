Stateless_princess6050Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetHpRate(TARGET_SELF)
   local func1_var3 = ai:GetMp(TARGET_SELF)
   if func1_var2 >= 0.5 then
      Stateless_princess6050_Battle_Sword(ai, goal)
      Stateless_princess6050_Battle_Kougeki_Noato(ai, goal)
   elseif func1_var3 >= 15 then
      Stateless_princess6050_Battle_Magic(ai, goal)
      Stateless_princess6050_Battle_Kougeki_Noato(ai, goal)
   else
      Stateless_princess6050_Battle_Sword(ai, goal)
      Stateless_princess6050_Battle_Kougeki_Noato(ai, goal)
   end
end

Stateless_princess6050_Battle_Sword = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = 2.5
   CommonNPC_ChangeWepR1(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   CommonNPC_ChangeWepL1(ai, goal)
   if func2_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, func2_var3, TARGET_SELF, true, -1)
      Stateless_princess6050_Battle_NormalR_Comb(ai, goal)
   elseif func2_var2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, func2_var3, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(90, 120), false, true, -1)
      Stateless_princess6050_Battle_NormalR_Comb(ai, goal)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 7, TARGET_ENE_0, false, -1)
   end
end

Stateless_princess6050_Battle_Magic = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = 8
   if func3_var2 <= func3_var3 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(2, 4), TARGET_ENE_0, func3_var3, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   end
end

Stateless_princess6050_Battle_NormalR_Comb = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   if func4_var2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if func4_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
end

Stateless_princess6050_Battle_Kougeki_Noato = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = 3
   CommonNPC_ChangeWepL1(ai, goal)
   if func5_var2 <= 50 then
      if func5_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      elseif func5_var3 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      end
   elseif func5_var2 <= 50 then
      if func5_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, func5_var4, TARGET_ENE_0, false, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 6), TARGET_ENE_0, func5_var4, TARGET_ENE_0, false, -1)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(4, 6), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(25, 50), false, true, -1)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Stateless_princess6050Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Stateless_princess6050Battle_Terminate = function(ai, goal)
end

Stateless_princess6050Battle_Interupt = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetRandam_Int(1, 100)
   local func8_var6 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) then
      local func8_var7 = 1
      local func8_var8 = 50
      if func8_var2 <= func8_var7 and func8_var3 <= func8_var8 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func8_var7 = 2
      local func8_var8 = 40
      if func8_var2 < func8_var7 and func8_var3 <= func8_var8 then
         goal:ClearSubGoal()
         if func8_var4 <= 60 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
         elseif func8_var4 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func8_var7 = 50
      if func8_var3 <= func8_var7 then
         goal:ClearSubGoal()
         if func8_var4 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
         end
         return true
      end
   end
   return false
end


