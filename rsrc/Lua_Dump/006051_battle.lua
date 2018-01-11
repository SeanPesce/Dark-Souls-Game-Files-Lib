SanzA6051Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetHpRate(TARGET_SELF)
   local func1_var3 = ai:GetMp(TARGET_SELF)
   local func1_var4 = ai:GetTimer(0)
   local func1_var5 = ai:GetNumber(0)
   if func1_var4 >= 0.1 then
      if func1_var5 == 1 then
         SanzA6051_Battle_Bow(ai, goal)
      else
         SanzA6051_Battle_Sword(ai, goal)
      end
   else
      SanzA6051_Battle_Normal_Attack(ai, goal)
      ai:SetTimer(0, 4)
   end
   -- Tried to add an 'end' here but it's incorrect
end

SanzA6051_Battle_Normal_Attack = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = 4
   if func2_var3 <= func2_var2 then
      SanzA6051_Battle_Bow(ai, goal)
      ai:SetNumber(0, 1)
   else
      SanzA6051_Battle_Sword(ai, goal)
      ai:SetNumber(0, 0)
   end
end

SanzA6051_Battle_Bow = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   if func3_var2 <= 7 then
      if func3_var3 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 45), false, true, -1)
      end
   elseif func3_var2 <= 12 then
      if func3_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 45), true, true, -1)
      end
   elseif func3_var5 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 45), false, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

SanzA6051_Battle_Sword = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = 2.5
   CommonNPC_ChangeWepR1(ai, goal)
   CommonNPC_ChangeWepL1(ai, goal)
   if func4_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, func4_var3, TARGET_SELF, true, 4)
      SanzA6051_Battle_NormalR_Comb(ai, goal)
   elseif func4_var2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, func4_var3, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(90, 120), false, true, 4)
      SanzA6051_Battle_NormalR_Comb(ai, goal)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 7, TARGET_ENE_0, false, 4)
   end
   SanzA6051_Battle_Kougeki_Noato(ai, goal)
end

SanzA6051_Battle_NormalR_Comb = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   if func5_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if func5_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if func5_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
end

SanzA6051_Battle_Kougeki_Noato = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = 2.5
   CommonNPC_ChangeWepL1(ai, goal)
   if func6_var2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(2, 4), TARGET_ENE_0, func6_var3, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Int(3, 5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(45, 65), false, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(4, 6), TARGET_ENE_0, func6_var3, TARGET_ENE_0, true, 4)
   end
end

SanzA6051Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SanzA6051Battle_Terminate = function(ai, goal)
end

SanzA6051Battle_Interupt = function(ai, goal)
   local func9_var2 = ai:GetDist(TARGET_ENE_0)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetRandam_Int(1, 100)
   local func9_var6 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) then
      local func9_var7 = 1
      local func9_var8 = 50
      if func9_var2 <= func9_var7 and func9_var3 <= func9_var8 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_ENE_0, false, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func9_var7 = 2
      local func9_var8 = 40
      if func9_var2 < func9_var7 and func9_var3 <= func9_var8 then
         goal:ClearSubGoal()
         if func9_var4 <= 60 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
         elseif func9_var4 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func9_var7 = 50
      if func9_var3 <= func9_var7 then
         goal:ClearSubGoal()
         if func9_var4 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
         end
         return true
      end
   end
   return false
end


