local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 5
local localScriptConfigVar2 = 2
local localScriptConfigVar3 = 6.5
local localScriptConfigVar4 = 7
local localScriptConfigVar5 = 9
local localScriptConfigVar6 = 4
local localScriptConfigVar7 = 6
local localScriptConfigVar8 = 10
local localScriptConfigVar9 = 13.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 20
local localScriptConfigVar12 = 4
local localScriptConfigVar13 = 5.5
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 2
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 2
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 2
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 4
local localScriptConfigVar22 = 0
local localScriptConfigVar23 = 5
OnIf_410000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      ai:SetTimer(0, 40)
   end
   if func1_param2 == 1 then
      ai:SetTimer(1, 10)
   end
   if func1_param2 == 2 then
      Artorius410000_ActAfter(ai, goal)
   end
   if func1_param2 == 3 then
      ai:SetTimer(2, 10)
   end
end

Artorius410000Battle_Activate = function(ai, goal)
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
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and func2_var7 <= 70 then
      if func2_var6 <= 3 then
         func2_var2[10] = 80
         func2_var2[20] = 20
      else
         func2_var2[10] = 0
         func2_var2[20] = 100
      end
   elseif func2_var6 <= 3.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 130) and func2_var7 <= 70 and ai:IsFinishTimer(2) == true then
      func2_var2[11] = 100
   elseif func2_var5 <= 0.25 and func2_var5 >= 0.15 and func2_var8 <= 5 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.8 and func2_var5 >= 0.15 and func2_var8 <= 7 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 1 and func2_var5 >= 0.15 and func2_var8 <= 0 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) >= 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.25 and func2_var8 <= 100 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) == 2 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.5 and func2_var8 <= 100 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) == 1 then
      func2_var2[12] = 100
   elseif func2_var5 <= 0.8 and func2_var8 <= 100 and ai:IsFinishTimer(0) == true and ai:GetNumber(1) == 0 then
      func2_var2[12] = 100
   elseif func2_var5 == 1 and ai:GetNumber(2) == 0 then
      func2_var2[7] = 100
   elseif func2_var6 >= 15 then
      func2_var2[1] = 0
      func2_var2[2] = 0
      func2_var2[3] = 25
      func2_var2[4] = 20
      func2_var2[5] = 40
      func2_var2[6] = 0
      func2_var2[8] = 15
      func2_var2[9] = 0
      func2_var2[13] = 0
   elseif func2_var6 >= 9 then
      func2_var2[1] = 0
      func2_var2[2] = 0
      func2_var2[3] = 20
      func2_var2[4] = 20
      func2_var2[5] = 25 * func2_var9
      func2_var2[6] = 0
      func2_var2[8] = 35
      func2_var2[9] = 0
      func2_var2[13] = 0
   elseif func2_var6 >= 7 then
      func2_var2[1] = 0
      func2_var2[2] = 15
      func2_var2[3] = 30
      func2_var2[4] = 30
      func2_var2[5] = 0 * func2_var9
      func2_var2[6] = 0
      func2_var2[8] = 25 * func2_var9
      func2_var2[9] = 0
      func2_var2[13] = 0
   elseif func2_var6 >= 5 then
      func2_var2[1] = 15
      func2_var2[2] = 15
      func2_var2[3] = 20 * func2_var9
      func2_var2[4] = 20 * func2_var9
      func2_var2[5] = 0
      func2_var2[6] = 0
      func2_var2[8] = 15 * func2_var9
      func2_var2[9] = 0
      func2_var2[13] = 15
   elseif func2_var6 >= 3 then
      func2_var2[1] = 20
      func2_var2[2] = 15
      func2_var2[3] = 10
      func2_var2[4] = 10
      func2_var2[5] = 0
      func2_var2[6] = 10
      func2_var2[8] = 15 * func2_var9
      func2_var2[9] = 0
      func2_var2[13] = 20
   else
      func2_var2[1] = 25
      func2_var2[2] = 10
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 0
      func2_var2[6] = 25
      func2_var2[8] = 0
      func2_var2[9] = 20
      func2_var2[13] = 20
   end
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, Artorius410000_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, Artorius410000_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, Artorius410000_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, Artorius410000_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, Artorius410000_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, Artorius410000_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, Artorius410000_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, Artorius410000_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, Artorius410000_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, Artorius410000_Act10)
   func2_var3[11] = REGIST_FUNC(ai, goal, Artorius410000_Act11)
   func2_var3[12] = REGIST_FUNC(ai, goal, Artorius410000_Act12)
   func2_var3[13] = REGIST_FUNC(ai, goal, Artorius410000_Act13)
   func2_var3[20] = REGIST_FUNC(ai, goal, Artorius410000_Act20)
   local func2_var10 = REGIST_FUNC(ai, goal, Artorius410000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var10, func2_var4)
end

Artorius410000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1 - 1
   local func3_var5 = localScriptConfigVar1 + 1
   local func3_var6 = 0
   local func3_var7 = ai:GetRandam_Int(1, 100)
   local func3_var8 = ai:GetRandam_Int(1, 100)
   local func3_var9 = localScriptConfigVar1 + 0
   if func3_var4 <= func3_var3 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 3)
   end
   if func3_var7 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var9, 0, 90)
   elseif func3_var7 <= 60 then
      if func3_var8 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var9, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var4, 0)
      elseif func3_var8 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var9, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, func3_var4, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var9, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func3_var4, 0)
      end
   elseif func3_var8 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, func3_var4, 0)
   elseif func3_var8 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var4, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func3_var4, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar3 - 1
   local func4_var5 = localScriptConfigVar3 + 1
   local func4_var6 = 0
   local func4_var7 = ai:GetRandam_Int(1, 100)
   local func4_var8 = ai:GetRandam_Int(1, 100)
   local func4_var9 = localScriptConfigVar3 + 0
   if func4_var4 <= func4_var3 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6, 3)
   end
   if func4_var7 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var9, 0, 90)
   elseif func4_var7 <= 60 then
      if func4_var8 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var9, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func4_var4, 0)
      elseif func4_var8 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var9, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func4_var4, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var9, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func4_var4, 0)
      end
   elseif func4_var8 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func4_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func4_var4, 0)
   elseif func4_var8 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func4_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, func4_var4, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func4_var4, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func4_var4, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar7
   local func5_var5 = localScriptConfigVar7 + 2
   local func5_var6 = 0
   local func5_var7 = localScriptConfigVar7
   ai:SetTimer(1, 0)
   if func5_var4 <= func5_var3 then
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, func5_var7, 0)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar13
   local func6_var5 = localScriptConfigVar13 + 2
   local func6_var6 = 0
   local func6_var7 = ai:GetRandam_Int(1, 100)
   local func6_var8 = localScriptConfigVar13
   ai:SetTimer(1, 0)
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 3)
   end
   if func6_var7 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, func6_var8, -1, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, func6_var8, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func6_var8, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar9 - 1
   local func7_var5 = localScriptConfigVar9 + 0
   local func7_var6 = 0
   local func7_var7 = localScriptConfigVar9 + 2
   local func7_var8 = localScriptConfigVar8 - 1
   local func7_var9 = localScriptConfigVar9 + 0
   ai:SetTimer(1, 0)
   if func7_var8 <= func7_var3 and func7_var3 <= func7_var9 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3005, TARGET_ENE_0, func7_var7, 0)
   elseif func7_var3 <= func7_var8 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, func7_var7, 0)
   else
      Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6, 3)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, func7_var7, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Artorius410000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = localScriptConfigVar19
   local func8_var5 = localScriptConfigVar19 + 2
   local func8_var6 = 0
   local func8_var7 = localScriptConfigVar19
   if func8_var4 <= func8_var3 then
      Approach_Act(ai, goal, func8_var4, func8_var5, func8_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3011, TARGET_ENE_0, func8_var7, 0, 90)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = localScriptConfigVar11
   ai:SetNumber(2, 1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, func9_var3, 1, 30)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Artorius410000_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = localScriptConfigVar5
   local func10_var5 = localScriptConfigVar5 + 2
   local func10_var6 = 0
   local func10_var7 = localScriptConfigVar5 + 0
   local func10_var8 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(1, 0)
   if func10_var4 <= func10_var3 then
      Approach_Act(ai, goal, func10_var4, func10_var5, func10_var6, 3)
   end
   if func10_var8 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, func10_var7, -1, 60)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 20
      else
         GetWellSpace_Odds = 60
      end
   elseif func10_var8 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, func10_var7, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, func10_var7, 0)
      if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
         GetWellSpace_Odds = 10
      else
         GetWellSpace_Odds = 80
      end
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, func10_var7, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, func10_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, func10_var7, 0)
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

Artorius410000_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = localScriptConfigVar17
   local func11_var4 = ai:GetRandam_Int(1, 100)
   local func11_var5 = ai:GetRandam_Int(1, 100)
   local func11_var6 = localScriptConfigVar17 + 8
   if func11_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, func11_var6, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif func11_var5 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, func11_var6, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, func11_var6, 0)
   elseif func11_var5 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, func11_var6, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, func11_var6, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, func11_var6, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func11_var6, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 80
   end
   return GetWellSpace_Odds
end

Artorius410000_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = localScriptConfigVar15 + 8
   local func12_var5 = ai:GetRandam_Int(1, 100)
   local func12_var6 = ai:GetRandam_Int(1, 100)
   if func12_var5 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3008, TARGET_ENE_0, func12_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif func12_var6 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, func12_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, func12_var4, 0)
   elseif func12_var6 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, func12_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, func12_var4, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3008, TARGET_ENE_0, func12_var4, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func12_var4, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 30
   else
      GetWellSpace_Odds = 80
   end
   return GetWellSpace_Odds
end

Artorius410000_Act11 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = localScriptConfigVar21
   local func13_var5 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 3)
   if func13_var5 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3012, TARGET_ENE_0, func13_var4, 0, -1)
      ai:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
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

Artorius410000_Act12 = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = ai:GetHpRate(TARGET_SELF)
   local func14_var5 = 20
   local func14_var6 = ai:GetRandam_Int(1, 100)
   if func14_var3 <= 4 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
   if func14_var3 <= 8 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
      end
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   if func14_var4 <= 0.25 then
      ai:SetNumber(1, 3)
   elseif func14_var4 <= 0.5 then
      ai:SetNumber(1, 2)
   elseif func14_var4 <= 0.8 then
      ai:SetNumber(1, 1)
   else
      ai:SetNumber(1, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, func14_var5, 0, 90)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, 9, TARGET_ENE_0, true, -1)
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Artorius410000_Act13 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = localScriptConfigVar23 + 0
   local func15_var5 = localScriptConfigVar23 + 1
   local func15_var6 = 0
   local func15_var7 = ai:GetRandam_Int(1, 100)
   local func15_var8 = ai:GetRandam_Int(1, 100)
   local func15_var9 = localScriptConfigVar23 + 0
   if func15_var4 <= func15_var3 then
      Approach_Act(ai, goal, func15_var4, func15_var5, func15_var6, 3)
   end
   if func15_var7 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, func15_var9, 0, 60)
   elseif func15_var8 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, func15_var9, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func15_var4, 0)
   elseif func15_var8 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, func15_var9, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func15_var4, 0)
   elseif func15_var8 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, func15_var9, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func15_var4, 0)
   elseif func15_var8 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, func15_var9, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, func15_var4, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func15_var9, 0, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func15_var4, 0)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 70
   end
   return GetWellSpace_Odds
end

Artorius410000_Act20 = function(ai, goal, func16_param2)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5510) then
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Artorius410000_ActAfter = function(ai, goal)
   local func17_var2 = ai:GetRandam_Int(1, 100)
   local func17_var3 = ai:GetRandam_Int(1, 100)
   local func17_var4 = ai:GetRandam_Int(0, 1)
   local func17_var5 = ai:GetDist(TARGET_ENE_0)
   if func17_var5 <= 2 then
      if func17_var2 <= 75 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif func17_var2 <= 100 then
         if func17_var3 <= 0 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, func17_var4, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif func17_var5 <= 5 then
      if func17_var2 <= 65 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif func17_var2 <= 90 then
         if func17_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, func17_var4, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif func17_var5 <= 10 then
      if func17_var2 <= 25 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
      elseif func17_var2 <= 80 then
         if func17_var3 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func17_var4, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif func17_var2 <= 0 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_F, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   elseif func17_var2 <= 80 then
      if func17_var3 <= 100 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func17_var4, ai:GetRandam_Int(60, 60), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 0, 90)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

Artorius410000_ActAfter_AdjustSpace = function(ai, goal, func18_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

Artorius410000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Artorius410000Battle_Terminate = function(ai, goal)
end

Artorius410000Battle_Interupt = function(ai, goal)
   local func21_var2 = ai:GetRandam_Int(1, 100)
   local func21_var3 = ai:GetRandam_Int(1, 100)
   local func21_var4 = ai:GetRandam_Int(1, 100)
   local func21_var5 = ai:GetDist(TARGET_ENE_0)
   local func21_var6 = ai:GetHpRate(TARGET_SELF)
   if ai:IsInterupt(INTERUPT_TargetIsGuard) and ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
      goal:ClearSubGoal()
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 2, 3023, TARGET_ENE_0, DIST_None, -1)
      elseif func21_var2 <= 50 and func21_var6 >= 0.3 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, DIST_None, 0, 90)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      return true
   end
   local func21_var7 = 3
   local func21_var8 = 30
   local func21_var9 = 50
   local func21_var10 = 25
   local func21_var11 = 25
   local func21_var12 = 5
   if Damaged_Step(ai, goal, func21_var7, func21_var8, func21_var9, func21_var10, func21_var11, func21_var12) then
      return true
   end
   local func21_var13 = 20
   local func21_var14 = 20
   do
      if UseItem_Act(ai, goal, func21_var13, func21_var14) then
         local func21_var15 = localScriptConfigVar9
         local func21_var16 = localScriptConfigVar9 + 2
         local func21_var17 = 0
         goal:ClearSubGoal()
         if func21_var5 <= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3008, TARGET_ENE_0, DIST_None, 0, 0)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3021, TARGET_ENE_0, DIST_None, 0, 90)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3020, TARGET_ENE_0, DIST_None, 0, 90)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3021, TARGET_ENE_0, DIST_None, 0, 90)
            end
         elseif func21_var5 <= 5 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3023, TARGET_ENE_0, DIST_None, 0, 90)
         elseif func21_var5 <= 7 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, -1, 25)
         elseif func21_var5 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, DIST_None, 0, 90)
         else
            Approach_Act(ai, goal, func21_var15, func21_var16, func21_var17, 2)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3005, TARGET_ENE_0, DIST_None, 0, 90)
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            return true
            -- Tried to add an 'end' here but it's incorrect
         end
         local func21_var15 = 6
         local func21_var16 = 20
         local func21_var17 = 60
         local func21_var18 = 80
         local func21_var19 = Shoot_2dist(ai, goal, func21_var15, func21_var16, func21_var17, func21_var18)
         if func21_var19 == 1 then
            if func21_var2 <= 80 then
               if func21_var5 <= 5 then
                  goal:AddSubGoal(GOAL_COMMON_Attack, 2, 3023, TARGET_ENE_0, DIST_None, 0)
               elseif func21_var5 <= 7 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, -1, 25)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, DIST_None, 0, 90)
               end
            elseif func21_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            -- Tried to add an 'end' here but it's incorrect
            return true
         elseif func21_var19 == 2 then
            if func21_var2 <= 60 then
               if func21_var5 <= 11 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3003, TARGET_ENE_0, DIST_None, 0, 90)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3005, TARGET_ENE_0, DIST_None, 0, 90)
               end
            elseif func21_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            -- Tried to add an 'end' here but it's incorrect
            return true
         end
         return false
end


