local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 7
local localScriptConfigVar6 = 6
local localScriptConfigVar7 = 12
local localScriptConfigVar8 = 8
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 3
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 100
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 15
local localScriptConfigVar16 = 7
local localScriptConfigVar17 = 13
local localScriptConfigVar18 = 10
local localScriptConfigVar19 = 20
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 5
local localScriptConfigVar22 = 0
local localScriptConfigVar23 = 5
local localScriptConfigVar24 = 0
local localScriptConfigVar25 = 6.5
local localScriptConfigVar26 = 0
local localScriptConfigVar27 = 2.5
local localScriptConfigVar28 = 8
local localScriptConfigVar29 = 12
OnIf_450000 = function(ai, goal, func1_param2)
   if func1_param2 == 2 then
      TheAbyss450000_ActAfter(ai, goal)
   end
end

TheAbyss450000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   ai:SetNumber(0, 0)
   ai:SetNumber(4, 0)
   local func2_var5 = ai:GetHpRate(TARGET_SELF)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = 1
   local func2_var10 = 1
   local func2_var11 = 1
   local func2_var12 = 1
   if ai:GetNumber(1) <= 10 then
      func2_var9 = 1
   elseif ai:GetNumber(1) <= 20 then
      func2_var9 = 2
   elseif ai:GetNumber(1) <= 40 then
      func2_var9 = 4
   elseif ai:GetNumber(1) <= 50 then
      func2_var9 = 6
   else
      func2_var9 = 10
   end
   if ai:GetNumber(2) <= 10 then
      func2_var10 = 1
   elseif ai:GetNumber(2) <= 20 then
      func2_var10 = 1.5
   elseif ai:GetNumber(2) <= 40 then
      func2_var10 = 2
   elseif ai:GetNumber(2) <= 50 then
      func2_var10 = 2.5
   else
      func2_var10 = 3
   end
   if ai:IsFinishTimer(0) == true then
      func2_var11 = 1
   else
      func2_var11 = 0
   end
   if func2_var5 <= 0.6 then
      func2_var12 = 1
   else
      func2_var12 = 0
   end
   if func2_var5 == 1 and ai:GetNumber(3) == 0 then
      func2_var2[14] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and func2_var7 <= 70 then
      if func2_var6 <= 3 then
         func2_var2[6] = 80
         func2_var2[20] = 20
      else
         func2_var2[6] = 0
         func2_var2[20] = 100
      end
   elseif func2_var5 <= 0.6 and ai:GetNumber(5) == 0 then
      if func2_var6 <= 5 then
         func2_var2[15] = 100
      elseif func2_var6 <= 9 then
         func2_var2[16] = 100
      else
         func2_var2[17] = 100
      end
   elseif func2_var6 >= 16 then
      func2_var2[1] = 0
      func2_var2[2] = 0 * func2_var11
      func2_var2[3] = 0
      func2_var2[4] = 15
      func2_var2[5] = 15
      func2_var2[7] = 0
      func2_var2[8] = 0
      func2_var2[9] = 20
      func2_var2[10] = 0
      func2_var2[11] = 15
      func2_var2[14] = 0
      func2_var2[15] = 15 * func2_var12
      func2_var2[16] = 0 * func2_var12
      func2_var2[17] = 20 * func2_var12
   elseif func2_var6 >= 12 then
      func2_var2[1] = 0
      func2_var2[2] = 0 * func2_var11
      func2_var2[3] = 0
      func2_var2[4] = 15
      func2_var2[5] = 15
      func2_var2[7] = 0
      func2_var2[8] = 0
      func2_var2[9] = 20
      func2_var2[10] = 0
      func2_var2[11] = 15
      func2_var2[14] = 0
      func2_var2[15] = 10 * func2_var12
      func2_var2[16] = 10 * func2_var12
      func2_var2[17] = 15 * func2_var12
   elseif func2_var6 >= 8 then
      func2_var2[1] = 0
      func2_var2[2] = 0 * func2_var11
      func2_var2[3] = 10
      func2_var2[4] = 15
      func2_var2[5] = 15
      func2_var2[7] = 0
      func2_var2[8] = 10
      func2_var2[9] = 10
      func2_var2[10] = 0
      func2_var2[11] = 10
      func2_var2[14] = 0
      func2_var2[15] = 5 * func2_var12
      func2_var2[16] = 15 * func2_var12
      func2_var2[17] = 10 * func2_var12
   elseif func2_var6 >= 5 then
      func2_var2[1] = 10
      func2_var2[2] = 0 * func2_var11
      func2_var2[3] = 15
      func2_var2[4] = 10
      func2_var2[5] = 10
      func2_var2[7] = 5
      func2_var2[8] = 10
      func2_var2[9] = 10
      func2_var2[10] = 5 * func2_var9
      func2_var2[11] = 0
      func2_var2[14] = 0
      func2_var2[15] = 10 * func2_var12
      func2_var2[16] = 15 * func2_var12
      func2_var2[17] = 0 * func2_var12
   elseif func2_var6 >= 3 then
      func2_var2[1] = 20
      func2_var2[2] = 10 * func2_var11
      func2_var2[3] = 10
      func2_var2[4] = 0
      func2_var2[5] = 0
      func2_var2[7] = 15
      func2_var2[8] = 15
      func2_var2[9] = 10
      func2_var2[10] = 10 * func2_var9
      func2_var2[11] = 0
      func2_var2[14] = 0
      func2_var2[15] = 10 * func2_var10 * func2_var12
      func2_var2[16] = 0 * func2_var12
      func2_var2[17] = 0 * func2_var12
   else
      func2_var2[1] = 20
      func2_var2[2] = 10 * func2_var11
      func2_var2[3] = 10
      func2_var2[4] = 0
      func2_var2[5] = 0
      func2_var2[7] = 25
      func2_var2[8] = 15
      func2_var2[9] = 0
      func2_var2[10] = 10 * func2_var9
      func2_var2[11] = 0
      func2_var2[14] = 0
      func2_var2[15] = 10 * func2_var10 * func2_var12
      func2_var2[16] = 0 * func2_var12
      func2_var2[17] = 0 * func2_var12
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, TheAbyss450000_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, TheAbyss450000_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, TheAbyss450000_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, TheAbyss450000_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, TheAbyss450000_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, TheAbyss450000_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, TheAbyss450000_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, TheAbyss450000_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, TheAbyss450000_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, TheAbyss450000_Act10)
   func2_var3[11] = REGIST_FUNC(ai, goal, TheAbyss450000_Act11)
   func2_var3[14] = REGIST_FUNC(ai, goal, TheAbyss450000_Act14)
   func2_var3[15] = REGIST_FUNC(ai, goal, TheAbyss450000_Act15)
   func2_var3[16] = REGIST_FUNC(ai, goal, TheAbyss450000_Act16)
   func2_var3[17] = REGIST_FUNC(ai, goal, TheAbyss450000_Act17)
   func2_var3[20] = REGIST_FUNC(ai, goal, TheAbyss450000_Act20)
   local func2_var13 = REGIST_FUNC(ai, goal, TheAbyss450000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var13, func2_var4)
end

TheAbyss450000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1 - 1
   local func3_var5 = localScriptConfigVar1 + 2
   local func3_var6 = 0
   local func3_var7 = localScriptConfigVar1
   local func3_var8 = ai:GetRandam_Int(1, 100)
   local func3_var9 = ai:GetRandam_Int(1, 100)
   local func3_var10 = ai:GetRandam_Int(1, 100)
   if func3_var4 <= func3_var3 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 3)
   end
   if func3_var8 <= 20 then
      if func3_var9 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
      end
   elseif func3_var8 <= 60 then
      if func3_var9 <= 50 then
         if func3_var10 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var7, 0)
         elseif func3_var10 <= 55 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, func3_var7, 0)
         elseif func3_var10 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func3_var7, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, func3_var7, 0)
         end
      elseif func3_var10 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func3_var7, 0)
      elseif func3_var10 <= 55 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, func3_var7, 0)
      elseif func3_var10 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func3_var7, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, func3_var7, 0)
      end
   elseif func3_var9 <= 50 then
      if func3_var10 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var7, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func3_var7, 0)
      elseif func3_var10 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var7, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, func3_var7, 0)
      elseif func3_var10 <= 55 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, func3_var7, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func3_var7, 0)
      elseif func3_var10 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, func3_var7, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func3_var7, 0)
      elseif func3_var10 <= 85 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var7, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, func3_var7, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, func3_var7, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, func3_var7, 0)
      end
   elseif func3_var10 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, func3_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var7, 0)
   elseif func3_var10 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, func3_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, func3_var7, 0)
   elseif func3_var10 <= 55 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, func3_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func3_var7, 0)
   elseif func3_var10 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, func3_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func3_var7, 0)
   elseif func3_var10 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, func3_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, func3_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, func3_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, func3_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, func3_var7, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar3
   ai:SetTimer(0, 10)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func4_var4, 0, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar5 - 2
   local func5_var5 = localScriptConfigVar5 - 2
   local func5_var6 = 0
   local func5_var7 = localScriptConfigVar5
   local func5_var8 = ai:GetRandam_Int(1, 100)
   if func5_var4 <= func5_var3 then
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6, 3)
   end
   if func5_var8 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, func5_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, func5_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, func5_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, func5_var7, 0)
   end
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar7
   local func6_var5 = localScriptConfigVar7
   local func6_var6 = 0
   local func6_var7 = localScriptConfigVar7
   local func6_var8 = ai:GetRandam_Int(1, 100)
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, func6_var7, 1.3, 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar9
   local func7_var5 = localScriptConfigVar9
   local func7_var6 = 0
   local func7_var7 = localScriptConfigVar9
   local func7_var8 = ai:GetRandam_Int(1, 100)
   if func7_var4 <= func7_var3 then
      Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6, 3)
   end
   ai:SetNumber(4, 1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 1.3, 20)
   if func7_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, DIST_None, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_None, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = localScriptConfigVar11
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3009, TARGET_ENE_0, func8_var4, 0, 0)
   ai:SetNumber(0, 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = localScriptConfigVar21 - 1.5
   local func9_var5 = localScriptConfigVar21 + 2
   local func9_var6 = 0
   local func9_var7 = localScriptConfigVar21
   local func9_var8 = ai:GetRandam_Int(1, 100)
   local func9_var9 = ai:GetRandam_Int(1, 100)
   local func9_var10 = ai:GetRandam_Int(1, 100)
   if func9_var4 <= func9_var3 then
      Approach_Act(ai, goal, func9_var4, func9_var5, func9_var6, 3)
   end
   if func9_var8 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
   elseif func9_var8 <= 60 then
      if func9_var9 <= 35 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, func9_var7, 0)
      elseif func9_var9 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func9_var7, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func9_var7, 0)
      end
   elseif func9_var9 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var9 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var9 <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var9 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var9 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var9 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3017, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var9 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, func9_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, func9_var7, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, func9_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3019, TARGET_ENE_0, func9_var7, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = localScriptConfigVar23 - 2
   local func10_var5 = localScriptConfigVar23 + 1
   local func10_var6 = 0
   local func10_var7 = localScriptConfigVar23
   if func10_var4 <= func10_var3 then
      Approach_Act(ai, goal, func10_var4, func10_var5, func10_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, func10_var7, 0, 90)
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = localScriptConfigVar25
   local func11_var5 = localScriptConfigVar25 + 1
   local func11_var6 = 0
   local func11_var7 = localScriptConfigVar25
   if func11_var4 <= func11_var3 then
      Approach_Act(ai, goal, func11_var4, func11_var5, func11_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, func11_var7, 0, 90)
   ai:SetNumber(1, ai:GetNumber(1) + 10)
   ai:SetNumber(2, ai:GetNumber(2) + 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = localScriptConfigVar27
   local func12_var5 = localScriptConfigVar27 + 0
   local func12_var6 = 0
   local func12_var7 = localScriptConfigVar27
   if func12_var4 <= func12_var3 then
      Approach_Act(ai, goal, func12_var4, func12_var5, func12_var6, 3)
   end
   ai:SetNumber(1, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, func12_var7, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, func12_var7, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act11 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = localScriptConfigVar29 + 0
   local func13_var5 = localScriptConfigVar29 + 0
   local func13_var6 = 0
   local func13_var7 = localScriptConfigVar29
   local func13_var8 = ai:GetRandam_Int(1, 100)
   if func13_var4 <= func13_var3 then
      Approach_Act(ai, goal, func13_var4, func13_var5, func13_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, func13_var7, 1.3, 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act14 = function(ai, goal, func14_param2)
   local func14_var3 = localScriptConfigVar13
   ai:SetNumber(3, 1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3010, TARGET_ENE_0, func14_var3, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TheAbyss450000_Act15 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = localScriptConfigVar15 + 0
   local func15_var5 = localScriptConfigVar15 + 0
   local func15_var6 = 0
   local func15_var7 = localScriptConfigVar15 + 5
   local func15_var8 = ai:GetRandam_Int(1, 100)
   if func15_var4 <= func15_var3 then
      Approach_Act(ai, goal, func15_var4, func15_var5, func15_var6, 3)
   end
   ai:SetNumber(2, 0)
   ai:SetNumber(5, 1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, func15_var7, 0, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act16 = function(ai, goal, func16_param2)
   local func16_var3 = ai:GetDist(TARGET_ENE_0)
   local func16_var4 = localScriptConfigVar17 + 0
   local func16_var5 = localScriptConfigVar17 + 0
   local func16_var6 = 0
   local func16_var7 = localScriptConfigVar17 + 5
   local func16_var8 = ai:GetRandam_Int(1, 100)
   if func16_var4 <= func16_var3 then
      Approach_Act(ai, goal, func16_var4, func16_var5, func16_var6, 3)
   end
   ai:SetNumber(5, 1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, func16_var7, 1.3, 20)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act17 = function(ai, goal, func17_param2)
   local func17_var3 = ai:GetDist(TARGET_ENE_0)
   local func17_var4 = localScriptConfigVar19 + 0
   local func17_var5 = localScriptConfigVar19 + 0
   local func17_var6 = 0
   local func17_var7 = localScriptConfigVar19 + 5
   local func17_var8 = ai:GetRandam_Int(1, 100)
   if func17_var4 <= func17_var3 then
      Approach_Act(ai, goal, func17_var4, func17_var5, func17_var6, 3)
   end
   ai:SetNumber(5, 1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, func17_var7, 0, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TheAbyss450000_Act20 = function(ai, goal, func18_param2)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TheAbyss450000_ActAfter = function(ai, goal)
   local func19_var2 = ai:GetRandam_Int(1, 100)
   local func19_var3 = ai:GetRandam_Int(1, 100)
   local func19_var4 = ai:GetRandam_Int(0, 1)
   local func19_var5 = ai:GetDist(TARGET_ENE_0)
   if func19_var5 <= 3 then
      if func19_var2 <= 60 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func19_var2 <= 90 then
         if func19_var3 <= 0 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, func19_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 0)
      end
   elseif func19_var5 <= 5 then
      if func19_var2 <= 50 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func19_var2 <= 90 then
         if func19_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, func19_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, 0)
      end
   elseif func19_var5 <= 12 then
      if func19_var2 <= 20 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func19_var2 <= 80 then
         if func19_var3 <= 60 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func19_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            do break end
         end
      elseif func19_var2 <= 0 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func19_var2 <= 75 then
         if func19_var3 <= 100 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, func19_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      else
      end
end

TheAbyss450000_ActAfter_AdjustSpace = function(ai, goal, func20_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

TheAbyss450000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TheAbyss450000Battle_Terminate = function(ai, goal)
end

TheAbyss450000Battle_Interupt = function(ai, goal)
   local func23_var2 = ai:GetRandam_Int(1, 100)
   local func23_var3 = ai:GetRandam_Int(1, 100)
   local func23_var4 = ai:GetRandam_Int(1, 100)
   local func23_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_TargetIsGuard) and ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
      if func23_var2 <= 60 then
         local func23_var6 = localScriptConfigVar29
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3023, TARGET_ENE_0, func23_var6, 0)
      else
      end
         return true
         -- Tried to add an 'end' here but it's incorrect
         if ai:GetNumber(4) == 0 then
            local func23_var6 = 20
            local func23_var7 = 30
            if UseItem_Act(ai, goal, func23_var6, func23_var7) then
               local func23_var8 = 20
               local func23_var9 = 20
               local func23_var10 = 0
               goal:ClearSubGoal()
               if func23_var5 <= 5 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3002, TARGET_ENE_0, DIST_None, 0, 90)
               elseif func23_var5 <= 8 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3019, TARGET_ENE_0, DIST_None, 0, 90)
               elseif func23_var5 <= 12 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, DIST_None, 1.3, 0)
               elseif func23_var5 <= 15 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3023, TARGET_ENE_0, DIST_None, 0, 90)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3010, TARGET_ENE_0, DIST_None, 0, 0)
               end
               return true
            end
         end
         if ai:GetNumber(4) == 0 then
            local func23_var6 = 8
            local func23_var7 = 30
            local func23_var8 = 40
            local func23_var9 = 70
            local func23_var10 = Shoot_2dist(ai, goal, func23_var6, func23_var7, func23_var8, func23_var9)
            if func23_var10 == 1 then
               if func23_var5 <= 6 then
                  if func23_var2 <= 80 then
                     goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3018, TARGET_ENE_0, DIST_None, 0, 90)
                  elseif func23_var3 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                  end
               elseif func23_var2 <= 80 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3019, TARGET_ENE_0, DIST_None, 0, 90)
               elseif func23_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
               -- Tried to add an 'end' here but it's incorrect
               return true
            elseif func23_var10 == 2 then
               if func23_var5 <= 12 then
                  if func23_var2 <= 80 then
                     goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, DIST_None, 1.3, 20)
                  elseif func23_var3 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                  end
               elseif func23_var5 <= 15 then
                  if func23_var2 <= 70 then
                     goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3023, TARGET_ENE_0, DIST_None, 0, 90)
                  elseif func23_var3 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
                  end
               elseif func23_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
               return true
            end
         end
         return false
end


