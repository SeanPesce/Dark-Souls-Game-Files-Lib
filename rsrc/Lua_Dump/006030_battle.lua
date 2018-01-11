local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.3
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1
local localScriptConfigVar4 = 3.5
local localScriptConfigVar5 = 4
local localScriptConfigVar6 = 7
local localScriptConfigVar7 = 10
local localScriptConfigVar8 = 7
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = 9
local localScriptConfigVar11 = 12
local localScriptConfigVar12 = 9
local localScriptConfigVar13 = 12
local localScriptConfigVar14 = 9
local localScriptConfigVar15 = 12
BigHat_Logarn6030Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetDist(TARGET_ENE_0)
   local func1_var8 = ai:GetNpcThinkParamID()
   if func1_var8 == 6032 then
      if ai:IsLadderAct(TARGET_SELF) then
         func1_var2[1] = 100
      elseif func1_var7 >= 7 then
         func1_var2[3] = 2
         func1_var2[8] = 3
         func1_var2[10] = 13
         func1_var2[11] = 14
         func1_var2[12] = 14
         func1_var2[13] = 14
         func1_var2[14] = 40
      elseif func1_var7 >= 3.5 then
         func1_var2[3] = 5
         func1_var2[8] = 5
         func1_var2[10] = 10
         func1_var2[11] = 10
         func1_var2[12] = 10
         func1_var2[13] = 10
         func1_var2[14] = 35
         func1_var2[20] = 15
      elseif func1_var7 >= 1 then
         func1_var2[3] = 10
         func1_var2[10] = 8
         func1_var2[11] = 8
         func1_var2[12] = 8
         func1_var2[13] = 8
         func1_var2[14] = 33
         func1_var2[20] = 25
      else
         func1_var2[3] = 5
         func1_var2[6] = 5
         func1_var2[10] = 10
         func1_var2[11] = 10
         func1_var2[12] = 10
         func1_var2[13] = 10
         func1_var2[14] = 35
         func1_var2[20] = 15
      end
   elseif ai:IsLadderAct(TARGET_SELF) then
      func1_var2[1] = 100
   elseif func1_var7 >= 7 then
      func1_var2[3] = 2
      func1_var2[8] = 3
      func1_var2[10] = 18
      func1_var2[11] = 19
      func1_var2[12] = 29
      func1_var2[13] = 29
   elseif func1_var7 >= 3.5 then
      func1_var2[3] = 5
      func1_var2[8] = 5
      func1_var2[10] = 15
      func1_var2[11] = 15
      func1_var2[12] = 22
      func1_var2[13] = 23
      func1_var2[20] = 15
   elseif func1_var7 >= 1 then
      func1_var2[3] = 10
      func1_var2[10] = 10
      func1_var2[11] = 10
      func1_var2[12] = 22
      func1_var2[13] = 23
      func1_var2[20] = 25
   else
      func1_var2[3] = 5
      func1_var2[6] = 5
      func1_var2[10] = 15
      func1_var2[11] = 15
      func1_var2[12] = 22
      func1_var2[13] = 23
      func1_var2[20] = 15
   end
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act01)
   func1_var3[3] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act03)
   func1_var3[6] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act06)
   func1_var3[8] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act06)
   func1_var3[10] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act10)
   func1_var3[11] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act11)
   func1_var3[12] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act12)
   func1_var3[13] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act13)
   func1_var3[14] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act14)
   func1_var3[20] = REGIST_FUNC(ai, goal, BigHat_Logarn6030_Act20)
   local func1_var9 = REGIST_FUNC(ai, goal, BigHat_Logarn6030_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var9, func1_var4)
end

BigHat_Logarn6030_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 0.8, TARGET_SELF, false, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act03 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 5
   local func3_var7 = 0
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act06 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 5
   local func4_var7 = 0
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act08 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   local func5_var5 = Rolling_Atk_max
   local func5_var6 = Rolling_Atk_max + 5
   local func5_var7 = 100
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act10 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if localScriptConfigVar7 <= func6_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif func6_var3 <= localScriptConfigVar6 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar6, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act11 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if localScriptConfigVar9 <= func7_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif func7_var3 <= localScriptConfigVar8 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar8, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act12 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   if localScriptConfigVar11 <= func8_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif func8_var3 <= localScriptConfigVar10 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, localScriptConfigVar10, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act13 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(3)
   if localScriptConfigVar13 <= func9_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif func9_var3 <= localScriptConfigVar12 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, localScriptConfigVar12, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act14 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(4)
   if localScriptConfigVar15 <= func10_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3.5, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   elseif func10_var3 <= localScriptConfigVar14 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, localScriptConfigVar14, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_Act20 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   if func11_var3 >= 7 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigHat_Logarn6030_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = 3
   if func12_var3 <= 40 then
      if func12_var4 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

BigHat_Logarn6030Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigHat_Logarn6030Battle_Terminate = function(ai, goal)
end

BigHat_Logarn6030Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func15_var6 = 3
      local func15_var7 = 40
      local func15_var8 = 3
      if func15_var2 <= func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func15_var6 = 3
      local func15_var7 = 40
      if func15_var2 < func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func15_var6 = 3
      local func15_var7 = 10
      if func15_var2 < func15_var6 then
         if func15_var3 <= func15_var7 then
            goal:ClearSubGoal()
            if func15_var4 <= func15_var7 then
               if func15_var5 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
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
      local func15_var6 = 80
      if func15_var3 <= func15_var6 then
         goal:ClearSubGoal()
         if func15_var2 > 7 then
            if func15_var4 <= 30 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
            else
               CommonNPC_ChangeWepR1(ai, goal)
               ai:ChangeEquipMagic(3)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Far, 1.5, 90)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
      end
   end
   return false
end


