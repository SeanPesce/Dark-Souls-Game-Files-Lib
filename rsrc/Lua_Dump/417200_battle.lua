local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 5
local localScriptConfigVar2 = 7
local localScriptConfigVar3 = 9
local localScriptConfigVar4 = 4
local localScriptConfigVar5 = 6
local localScriptConfigVar6 = 10
local localScriptConfigVar7 = 14
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 20
local localScriptConfigVar10 = 4
local localScriptConfigVar11 = 5.5
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 2
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 2
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 2
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 2
OnIf_417200 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      ai:SetTimer(0, 25)
   end
   if func1_param2 == 1 then
      ai:SetTimer(1, 10)
   end
   if func1_param2 == 2 then
      HumanityL417200_ActAfter(ai, goal)
   end
   if func1_param2 == 3 then
      ai:SetTimer(2, 7)
   end
end

HumanityL417200Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   ai:SetNumber(0, 0)
   local func2_var5 = ai:GetHpRate(TARGET_SELF)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = 1
   if ai:IsFinishTimer(1) == true then
      func2_var9 = 1
   else
      func2_var9 = 2
   end
   if func2_var6 <= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and func2_var7 <= 70 then
      func2_var2[10] = 100
   elseif func2_var6 <= 2.8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and func2_var7 <= 70 and ai:IsFinishTimer(2) == true then
      func2_var2[11] = 100
   elseif func2_var5 <= 0.25 and func2_var5 >= 0.1 and func2_var8 <= 10 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.8 and func2_var5 >= 0.1 and func2_var8 <= 10 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 1 and func2_var5 >= 0.1 and func2_var8 <= 0 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.25 and func2_var8 <= 100 and ai:GetNumber(1) == 2 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.5 and func2_var8 <= 80 and ai:GetNumber(1) == 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.8 and func2_var8 <= 70 and ai:GetNumber(1) == 0 then
      func2_var2[12] = 100
   elseif func2_var5 == 1 and ai:GetNumber(2) == 0 then
      func2_var2[7] = 100
   elseif func2_var5 < 1 and func2_var8 <= 10 and func2_var6 >= 7 and ai:GetNumber(1) == 1 then
      func2_var2[7] = 100
   elseif func2_var5 < 1 and func2_var8 <= 20 and func2_var6 >= 15 and ai:GetNumber(1) == 1 then
      func2_var2[7] = 100
   elseif func2_var6 >= 15 then
      func2_var2[1] = 0
      func2_var2[3] = 20
      func2_var2[4] = 15
      func2_var2[5] = 40
      func2_var2[6] = 0
      func2_var2[8] = 5
      func2_var2[9] = 0
   elseif func2_var6 >= 10 then
      func2_var2[1] = 5
      func2_var2[3] = 20
      func2_var2[4] = 20
      func2_var2[5] = 20 * func2_var9
      func2_var2[6] = 0
      func2_var2[8] = 35
      func2_var2[9] = 0
   elseif func2_var6 >= 7 then
      func2_var2[1] = 5
      func2_var2[3] = 30
      func2_var2[4] = 30
      func2_var2[5] = 15 * func2_var9
      func2_var2[6] = 0
      func2_var2[8] = 20 * func2_var9
      func2_var2[9] = 0
   elseif func2_var6 >= 5 then
      func2_var2[1] = 45
      func2_var2[3] = 20 * func2_var9
      func2_var2[4] = 20 * func2_var9
      func2_var2[5] = 0
      func2_var2[6] = 0
      func2_var2[8] = 15 * func2_var9
      func2_var2[9] = 0
   elseif func2_var6 >= 3 then
      func2_var2[1] = 55
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 0
      func2_var2[6] = 15
      func2_var2[8] = 15 * func2_var9
      func2_var2[9] = 15
   else
      func2_var2[1] = 55
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 0
      func2_var2[6] = 25
      func2_var2[8] = 0
      func2_var2[9] = 20
   end
   func2_var3[1] = REGIST_FUNC(ai, goal, HumanityL417200_Act01)
   func2_var3[3] = REGIST_FUNC(ai, goal, HumanityL417200_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, HumanityL4172000_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, HumanityL417200_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, HumanityL417200_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, HumanityL417200_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, HumanityL417200_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, HumanityL417200_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, HumanityL417200_Act10)
   func2_var3[11] = REGIST_FUNC(ai, goal, HumanityL417200_Act11)
   func2_var3[12] = REGIST_FUNC(ai, goal, HumanityL417200_Act12)
   local func2_var10 = REGIST_FUNC(ai, goal, HumanityL417200_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var10, func2_var4)
end

HumanityL417200_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1
   local func3_var5 = localScriptConfigVar1 + 1
   local func3_var6 = 0
   local func3_var7 = ai:GetRandam_Int(1, 100)
   local func3_var8 = ai:GetRandam_Int(1, 100)
   if func3_var8 <= 10 then
      if func3_var7 <= 70 then
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var4, -1, 50)
      else
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var4, -1, 50)
      end
   elseif func3_var8 <= 50 then
      if func3_var7 <= 50 then
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var4, -1, 50)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var4, 0)
      elseif func3_var7 <= 70 then
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var4, -1, 50)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var4, 0)
      elseif func3_var7 <= 90 then
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var4, -1, 50)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func3_var4, 0)
      else
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var4, -1, 50)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func3_var4, 0)
      end
   elseif func3_var7 <= 75 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var4, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, func3_var4, 0)
   else
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var4, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var4, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func3_var4, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar5
   local func4_var5 = localScriptConfigVar5 + 2
   local func4_var6 = 0
   local func4_var7 = 3004
   local func4_var8 = localScriptConfigVar5
   ai:SetTimer(1, 0)
   Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6, 5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, func4_var8, 0)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar11
   local func5_var5 = localScriptConfigVar11 + 2
   local func5_var6 = 0
   local func5_var7 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(1, 0)
   if func5_var7 <= 70 then
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6, 5)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, func5_var5, 0)
   else
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6, 5)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, func5_var4, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func5_var4, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar7
   local func6_var5 = localScriptConfigVar7 + 2
   local func6_var6 = 0
   local func6_var7 = 3005
   local func6_var8 = localScriptConfigVar7 + 2
   local func6_var9 = localScriptConfigVar6 - 2
   local func6_var10 = localScriptConfigVar7
   ai:SetTimer(1, 0)
   if func6_var9 <= func6_var3 and func6_var3 <= func6_var10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3005, TARGET_ENE_0, func6_var8, 0)
   elseif func6_var3 <= func6_var9 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, func6_var8, 0)
   else
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 5)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, func6_var8, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 20
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar17
   local func7_var5 = localScriptConfigVar17 + 2
   local func7_var6 = 0
   local func7_var7 = 3011
   local func7_var8 = DIST_Middle
   Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6, 5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 6, 3011, TARGET_ENE_0, func7_var4, 0, 50)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = localScriptConfigVar9
   ai:SetNumber(2, 1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, func8_var3, -1, 50)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 50
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = localScriptConfigVar3
   local func9_var5 = localScriptConfigVar3 + 2
   local func9_var6 = 0
   local func9_var7 = 3003
   local func9_var8 = localScriptConfigVar3 + 2
   local func9_var9 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(1, 0)
   Approach_Act(ai, goal, func9_var4, func9_var5, func9_var6, 5)
   if func9_var9 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, func9_var4, -1, 50)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 20
      else
         GetWellSpace_Odds = 60
      end
   elseif func9_var9 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, func9_var4, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, func9_var4, 0)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 10
      else
         GetWellSpace_Odds = 80
      end
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, func9_var4, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, func9_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, func9_var4, 0)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 50
      else
         GetWellSpace_Odds = 100
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   return GetWellSpace_Odds
end

HumanityL417200_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = localScriptConfigVar15
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetRandam_Int(1, 100)
   if func10_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, func10_var3, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif func10_var5 <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, func10_var3, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, func10_var3, 0)
   elseif func10_var5 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, func10_var3, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, func10_var3, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, func10_var3, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func10_var3, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 80
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act10 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = 3
   local func11_var5 = ai:GetRandam_Int(1, 100)
   local func11_var6 = ai:GetRandam_Int(1, 100)
   if func11_var5 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3008, TARGET_ENE_0, func11_var4, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif func11_var6 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, func11_var4, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, func11_var4, 0)
   elseif func11_var6 <= 45 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, func11_var4, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, func11_var4, 0)
   elseif func11_var6 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, func11_var4, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func11_var4, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, func11_var4, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, func11_var4, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 80
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act11 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = 8
   local func12_var5 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 3)
   if func12_var5 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3012, TARGET_ENE_0, func12_var4, 0, -1)
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 10
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

HumanityL417200_Act12 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = ai:GetHpRate(TARGET_SELF)
   local func13_var5 = 20
   local func13_var6 = ai:GetRandam_Int(1, 100)
   if func13_var3 <= 4 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
   end
   if func13_var3 <= 8 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
      end
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   if func13_var4 <= 0.25 then
      ai:SetNumber(1, 3)
   elseif func13_var4 <= 0.5 then
      ai:SetNumber(1, 2)
   elseif func13_var4 <= 0.8 then
      ai:SetNumber(1, 1)
   else
      ai:SetNumber(1, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, func13_var5, 0, -1)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 9, TARGET_ENE_0, true, -1)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

HumanityL417200_ActAfter = function(ai, goal)
   local func14_var2 = ai:GetRandam_Int(1, 100)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(0, 1)
   local func14_var5 = ai:GetDist(TARGET_ENE_0)
   if func14_var5 <= 2 then
      if func14_var2 <= 80 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif func14_var2 <= 100 then
         if func14_var3 <= 0 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, func14_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif func14_var5 <= 5 then
      if func14_var2 <= 65 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif func14_var2 <= 90 then
         if func14_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3.5, TARGET_ENE_0, func14_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif func14_var5 <= 10 then
      if func14_var2 <= 25 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif func14_var2 <= 80 then
         if func14_var3 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3.5, TARGET_ENE_0, func14_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif func14_var2 <= 0 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif func14_var2 <= 75 then
      if func14_var3 <= 100 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, func14_var4, ai:GetRandam_Int(30, 45), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, AppDist, -1, 50)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

HumanityL417200_ActAfter_AdjustSpace = function(ai, goal, func15_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

HumanityL417200Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HumanityL417200Battle_Terminate = function(ai, goal)
end

HumanityL417200Battle_Interupt = function(ai, goal)
   local func18_var2 = ai:GetRandam_Int(1, 100)
   local func18_var3 = ai:GetRandam_Int(1, 100)
   local func18_var4 = ai:GetRandam_Int(1, 100)
   local func18_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_TargetIsGuard) and ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
      goal:ClearSubGoal()
      if func18_var2 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3000, TARGET_ENE_0, DIST_Middle, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      end
      return true
   end
   local func18_var6 = 3
   local func18_var7 = 30
   local func18_var8 = 50
   local func18_var9 = 25
   local func18_var10 = 25
   local func18_var11 = 5
   if Damaged_Step(ai, goal, func18_var6, func18_var7, func18_var8, func18_var9, func18_var10, func18_var11) then
      return true
   end
   local func18_var12 = 3
   local func18_var13 = 30
   if MissSwing_Int(ai, goal, func18_var12, func18_var13) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 2, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func18_var14 = 20
   local func18_var15 = 30
   if UseItem_Act(ai, goal, func18_var14, func18_var15) then
      local func18_var16 = localScriptConfigVar1
      local func18_var17 = localScriptConfigVar5
      local func18_var18 = localScriptConfigVar3
      local func18_var19 = localScriptConfigVar7
      local func18_var20 = localScriptConfigVar7
      local func18_var21 = localScriptConfigVar7 + 2
      local func18_var22 = 0
      goal:ClearSubGoal()
      if func18_var5 <= 5 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3000, TARGET_ENE_0, func18_var16, -1, 50)
      elseif func18_var5 <= 7 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, func18_var17, -1, 50)
      elseif func18_var5 <= 10 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, func18_var18, -1, 50)
      else
         Approach_Act(ai, goal, func18_var20, func18_var21, func18_var22, 2)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3005, TARGET_ENE_0, func18_var19, -1, 50)
      end
      return true
   end
   local func18_var16 = 6
   local func18_var17 = 20
   local func18_var18 = 60
   local func18_var19 = 80
   local func18_var20 = Shoot_2dist(ai, goal, func18_var16, func18_var17, func18_var18, func18_var19)
   local func18_var21 = localScriptConfigVar7
   local func18_var22 = localScriptConfigVar7 + 2
   local func18_var23 = 0
   if func18_var20 == 1 then
      if func18_var2 <= 80 then
         if func18_var5 <= 5 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif func18_var5 <= 7 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, AtkDist2, -1, 50)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, AtkDist3, -1, 50)
         end
      elseif func18_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   elseif func18_var20 == 2 then
      if func18_var2 <= 60 then
         if func18_var5 <= 11 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, AtkDist3, -1, 50)
         else
            Approach_Act(ai, goal, func18_var21, func18_var22, func18_var23, 2)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3005, TARGET_ENE_0, AtkDist4, -1, 50)
         end
      elseif func18_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


