local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 2
local localScriptConfigVar3 = 4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.2
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 2
local localScriptConfigVar14 = 2
local localScriptConfigVar15 = 4.5
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 2
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 2
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 2
local localScriptConfigVar22 = 0
local localScriptConfigVar23 = 1.2
OnIf_452000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      HolySwordWolf452000_ActAfter(ai, goal)
   end
end

HolySwordWolf452000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetHpRate(TARGET_SELF)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = ai:GetRandam_Int(1, 100)
   local func2_var10 = ai:GetRandam_Int(1, 100)
   local func2_var11 = 1
   local func2_var12 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if ai:GetNumber(0) < 10 then
      if func2_var12 <= 0.3 then
         func2_var11 = 1
      else
         func2_var11 = 1
      end
   elseif ai:GetNumber(0) < 20 then
      if func2_var12 <= 0.3 then
         func2_var11 = 1
      else
         func2_var11 = 3
      end
   elseif ai:GetNumber(0) < 30 then
      if func2_var12 <= 0.3 then
         func2_var11 = 1
      else
         func2_var11 = 4
      end
   elseif func2_var12 <= 0.3 then
      func2_var11 = 1
   else
      func2_var11 = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      if func2_var6 <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and func2_var7 <= 60 then
         func2_var2[10] = 100
      elseif func2_var6 <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and func2_var7 <= 60 then
         func2_var2[11] = 100
      elseif func2_var6 >= 2 then
         func2_var2[8] = 20
         func2_var2[9] = 20
         func2_var2[14] = 20 * func2_var11
         func2_var2[15] = 40 * func2_var11
      else
         func2_var2[8] = 20
         func2_var2[9] = 20
         func2_var2[14] = 20 * func2_var11
         func2_var2[15] = 40 * func2_var11
      end
   elseif func2_var6 <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and func2_var7 <= 60 then
      func2_var2[5] = 100
   elseif func2_var6 <= 1.5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and func2_var7 <= 60 then
      func2_var2[6] = 100
   elseif func2_var6 >= 10 then
      func2_var2[1] = 15
      func2_var2[2] = 15
      func2_var2[3] = 0
      func2_var2[12] = 10
      func2_var2[13] = 20
      func2_var2[4] = 0 * func2_var11
      func2_var2[7] = 0 * func2_var11
      func2_var2[14] = 30 * func2_var11
      func2_var2[15] = 10 * func2_var11
   elseif func2_var6 >= 5 then
      func2_var2[1] = 20
      func2_var2[2] = 10
      func2_var2[3] = 0
      func2_var2[12] = 15
      func2_var2[13] = 15
      func2_var2[4] = 0 * func2_var11
      func2_var2[7] = 15 * func2_var11
      func2_var2[14] = 10 * func2_var11
      func2_var2[15] = 15 * func2_var11
   elseif func2_var6 >= 2 then
      func2_var2[1] = 20
      func2_var2[2] = 10
      func2_var2[3] = 10
      func2_var2[12] = 10
      func2_var2[13] = 10
      func2_var2[4] = 20 * func2_var11
      func2_var2[7] = 20 * func2_var11
      func2_var2[14] = 0 * func2_var11
      func2_var2[15] = 0 * func2_var11
   else
      func2_var2[1] = 30
      func2_var2[2] = 0
      func2_var2[3] = 20
      func2_var2[12] = 20
      func2_var2[13] = 0
      func2_var2[4] = 20 * func2_var11
      func2_var2[7] = 10 * func2_var11
      func2_var2[14] = 0 * func2_var11
      func2_var2[15] = 0 * func2_var11
   end
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act10)
   func2_var3[11] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act11)
   func2_var3[12] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act12)
   func2_var3[13] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act13)
   func2_var3[14] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act14)
   func2_var3[15] = REGIST_FUNC(ai, goal, HolySwordWolf452000_Act15)
   local func2_var13 = REGIST_FUNC(ai, goal, HolySwordWolf452000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var13, func2_var4)
end

HolySwordWolf452000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1
   local func3_var5 = localScriptConfigVar1 + 0
   local func3_var6 = 0
   local func3_var7 = localScriptConfigVar1 + 0
   local func3_var8 = ai:GetRandam_Int(1, 100)
   local func3_var9 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func3_var4 <= func3_var3 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 3)
   end
   if func3_var8 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, -1, 20)
   elseif func3_var8 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func3_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func3_var7, 0)
   end
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if func3_var9 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar3
   local func4_var5 = localScriptConfigVar3 + 0
   local func4_var6 = 0
   local func4_var7 = localScriptConfigVar3 + 0
   local func4_var8 = ai:GetRandam_Int(1, 100)
   local func4_var9 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func4_var4 <= func4_var3 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6, 3)
   end
   if func4_var8 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, func4_var7, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, func4_var7, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, func4_var7, 0)
   end
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if func4_var9 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar5
   local func5_var5 = localScriptConfigVar5 + 0
   local func5_var6 = 0
   local func5_var7 = localScriptConfigVar5 + 0
   local func5_var8 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func5_var4 <= func5_var3 then
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, func5_var7, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if func5_var8 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar7
   local func6_var5 = localScriptConfigVar7 + 0
   local func6_var6 = 0
   local func6_var7 = localScriptConfigVar7 + 0
   local func6_var8 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, func6_var7, 0, 90)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if func6_var8 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = localScriptConfigVar9 + 0
   local func7_var4 = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, func7_var3, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if func7_var4 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = localScriptConfigVar11 + 0
   local func8_var4 = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, func8_var3, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if func8_var4 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if func9_var3 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = localScriptConfigVar17
   local func10_var5 = localScriptConfigVar17 + 200
   local func10_var6 = 0
   local func10_var7 = localScriptConfigVar17 + 0
   local func10_var8 = ai:GetRandam_Int(1, 100)
   local func10_var9 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func10_var4 <= func10_var3 then
      Approach_Act(ai, goal, func10_var4, func10_var5, func10_var6, 10)
   end
   if func10_var8 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func10_var7, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func10_var7, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func10_var7, 0)
   end
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if func10_var9 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = localScriptConfigVar19
   local func11_var5 = localScriptConfigVar19 + 200
   local func11_var6 = 0
   local func11_var7 = localScriptConfigVar19 + 0
   local func11_var8 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func11_var4 <= func11_var3 then
      Approach_Act(ai, goal, func11_var4, func11_var5, func11_var6, 10)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func11_var7, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if func11_var8 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = localScriptConfigVar21 + 0
   local func12_var4 = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, func12_var3, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if func12_var4 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act11 = function(ai, goal, func13_param2)
   local func13_var3 = localScriptConfigVar23 + 0
   local func13_var4 = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, func13_var3, 0)
   ai:SetNumber(0, ai:GetNumber(0) + 20)
   if func13_var4 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act12 = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = localScriptConfigVar13
   local func14_var5 = localScriptConfigVar13 + 0
   local func14_var6 = 0
   local func14_var7 = localScriptConfigVar13 + 0
   local func14_var8 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func14_var4 <= func14_var3 then
      Approach_Act(ai, goal, func14_var4, func14_var5, func14_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, func14_var7, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if func14_var8 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act13 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = localScriptConfigVar15
   local func15_var5 = localScriptConfigVar15 + 0
   local func15_var6 = 0
   local func15_var7 = localScriptConfigVar15 + 0
   local func15_var8 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if func15_var4 <= func15_var3 then
      Approach_Act(ai, goal, func15_var4, func15_var5, func15_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, func15_var7, -1, 20)
   ai:SetNumber(0, ai:GetNumber(0) + 10)
   if func15_var8 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act14 = function(ai, goal, func16_param2)
   local func16_var3 = ai:GetRandam_Int(0, 1)
   local func16_var4 = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, func16_var3, ai:GetRandam_Int(120, 120), true, true, -1)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if func16_var4 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_Act15 = function(ai, goal, func17_param2)
   local func17_var3 = ai:GetHpRate(TARGET_LOCALPLAYER)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if func17_var3 <= 0.3 then
      GetWellSpace_Odds = 50
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HolySwordWolf452000_ActAfter = function(ai, goal)
   local func18_var2 = ai:GetDist(TARGET_ENE_0)
   local func18_var3 = ai:GetRandam_Int(1, 100)
   local func18_var4 = ai:GetRandam_Int(1, 100)
   local func18_var5 = ai:GetRandam_Int(0, 1)
   local func18_var6 = ai:GetHpRate(TARGET_LOCALPLAYER)
   if ai:GetNumber(0) < 20 then
      ai:SetNumber(0, ai:GetNumber(0) - 3)
   elseif ai:GetNumber(0) < 30 then
      ai:SetNumber(0, ai:GetNumber(0) - 5)
   else
      ai:SetNumber(0, ai:GetNumber(0) - 8)
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      if func18_var2 <= 5 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      elseif func18_var2 <= 8 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      elseif func18_var3 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, func18_var5, ai:GetRandam_Int(120, 120), true, true, -1)
      elseif func18_var3 <= 20 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      elseif func18_var2 <= 5 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      elseif func18_var2 <= 8 then
         if func18_var3 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, func18_var5, ai:GetRandam_Int(120, 120), true, true, -1)
         elseif func18_var3 <= 20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
         elseif func18_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif func18_var3 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func18_var3 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, func18_var5, ai:GetRandam_Int(120, 120), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
end

HolySwordWolf452000_ActAfter_AdjustSpace = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

HolySwordWolf452000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HolySwordWolf452000Battle_Terminate = function(ai, goal)
end

HolySwordWolf452000Battle_Interupt = function(ai, goal)
   local func22_var2 = ai:GetRandam_Int(1, 100)
   local func22_var3 = ai:GetRandam_Int(1, 100)
   local func22_var4 = ai:GetRandam_Int(1, 100)
   local func22_var5 = ai:GetDist(TARGET_ENE_0)
   if not ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      local func22_var6 = 6
      local func22_var7 = 100
      if FindAttack_Act(ai, goal, func22_var6, func22_var7) then
         if func22_var5 <= 2 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif func22_var5 <= 6 then
            if func22_var2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            elseif func22_var2 <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      local func22_var8 = 8
      local func22_var9 = 100
      if Damaged_Act(ai, goal, func22_var8, func22_var9) then
         goal:ClearSubGoal()
         if func22_var5 <= 2 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif func22_var5 <= 6 then
            if func22_var2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
            elseif func22_var2 <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
      end
      local func22_var10 = 6
      local func22_var11 = 25
      local func22_var12 = 100
      local func22_var13 = 100
      local func22_var14 = Shoot_2dist(ai, goal, func22_var10, func22_var11, func22_var12, func22_var13)
      if func22_var14 == 1 then
         if func22_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         return true
      elseif func22_var14 == 2 then
         if func22_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         return true
      end
   end
   return false
end


