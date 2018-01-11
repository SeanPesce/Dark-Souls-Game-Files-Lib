local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.7
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.8
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1
local localScriptConfigVar8 = 7
local localScriptConfigVar9 = 7
local localScriptConfigVar10 = 7.4
local localScriptConfigVar11 = 7.4
local localScriptConfigVar12 = 1.5
local localScriptConfigVar13 = 1.5
Magician_of_Pot6130Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   local func1_var9 = 1
   local func1_var10 = 1
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var9 = 10
   end
   local func1_var11 = 1
   local func1_var12 = ai:GetNumber(0)
   if func1_var12 >= 6 then
      func1_var11 = 0
   end
   local func1_var13 = 1
   local func1_var14 = ai:GetNumber(1)
   if func1_var14 >= 6 then
      func1_var13 = 0
   end
   local func1_var15 = 1
   local func1_var16 = ai:GetNumber(2)
   if func1_var16 >= 8 then
      func1_var15 = 0
   end
   local func1_var17 = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var17 = 1
   end
   if func1_var8 >= 4 then
      func1_var2[3] = 5
      func1_var2[4] = 5
      func1_var2[18] = 45 * func1_var11
      func1_var2[19] = 45 * func1_var13
      func1_var2[20] = 0 * func1_var15
   elseif func1_var8 >= 1 then
      func1_var2[3] = 19
      func1_var2[4] = 19
      func1_var2[16] = 5
      func1_var2[17] = 0 * func1_var17
      func1_var2[18] = 19 * func1_var11
      func1_var2[19] = 19 * func1_var13
      func1_var2[20] = 19 * func1_var15
   else
      func1_var2[3] = 20
      func1_var2[4] = 20
      func1_var2[6] = 10
      func1_var2[16] = 5
      func1_var2[17] = 10 * func1_var17
      func1_var2[18] = 15 * func1_var11
      func1_var2[19] = 15 * func1_var13
      func1_var2[20] = 15 * func1_var15
   end
   func1_var3[3] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act04)
   func1_var3[6] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act06)
   func1_var3[16] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act16)
   func1_var3[17] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act17)
   func1_var3[18] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act18)
   func1_var3[19] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act19)
   func1_var3[20] = REGIST_FUNC(ai, goal, Magician_of_Pot6130_Act20)
   local func1_var18 = REGIST_FUNC(ai, goal, Magician_of_Pot6130_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var18, func1_var4)
end

Magician_of_Pot6130_Act03 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local func2_var5 = localScriptConfigVar3
   local func2_var6 = localScriptConfigVar3 + 5
   local func2_var7 = 100
   NPC_Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func2_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Magician_of_Pot6130_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local func3_var5 = localScriptConfigVar5
   local func3_var6 = localScriptConfigVar5 + 5
   local func3_var7 = 100
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Magician_of_Pot6130_Act06 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local func4_var5 = localScriptConfigVar7
   local func4_var6 = localScriptConfigVar7 + 5
   local func4_var7 = 100
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Magician_of_Pot6130_Act16 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   if func5_var3 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Magician_of_Pot6130_Act17 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar1
   local func6_var6 = localScriptConfigVar1 + 5
   local func6_var7 = 100
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Magician_of_Pot6130_Act18 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func7_var6 = ai:GetNumber(0)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if localScriptConfigVar9 <= func7_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, 4)
   elseif func7_var3 <= localScriptConfigVar8 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar8, TARGET_ENE_0, false, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(0, func7_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Magician_of_Pot6130_Act19 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func8_var6 = ai:GetNumber(1)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if localScriptConfigVar9 <= func8_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, 4)
   elseif func8_var3 <= localScriptConfigVar8 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar10, TARGET_ENE_0, false, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(1, func8_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Magician_of_Pot6130_Act20 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   local func9_var6 = ai:GetRandam_Int(1, 100)
   local func9_var7 = ai:GetWepCateRight(TARGET_SELF)
   local func9_var8 = ai:GetNumber(2)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(2, func9_var8 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Magician_of_Pot6130_ActAfter_AdjustSpace = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = 3
   if func10_var3 <= 5 then
      if func10_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func10_var4 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif func10_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func10_var3 <= 15 then
      if func10_var4 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Magician_of_Pot6130Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Magician_of_Pot6130Battle_Terminate = function(ai, goal)
end

Magician_of_Pot6130Battle_Interupt = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func13_var6 = 3
      local func13_var7 = 10
      local func13_var8 = 3
      if func13_var2 <= func13_var6 and func13_var3 <= func13_var7 then
         goal:ClearSubGoal()
         if func13_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func13_var6 = 3
      local func13_var7 = 10
      if func13_var2 < func13_var6 and func13_var3 <= func13_var7 then
         goal:ClearSubGoal()
         if func13_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func13_var6 = 3
      local func13_var7 = 10
      if func13_var2 < func13_var6 then
         if func13_var3 <= func13_var7 then
            goal:ClearSubGoal()
            if func13_var4 <= func13_var7 then
               if func13_var5 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
               end
            else
               ai:Replaning()
               goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
               return true
            end
         else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
            ai:Replaning()
            return true
         end
      else
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
         ai:Replaning()
         return true
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func13_var6 = 50
      if func13_var3 <= func13_var6 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         return true
      end
   end
   return false
end


