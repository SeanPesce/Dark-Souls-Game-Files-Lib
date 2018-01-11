local localScriptConfigVar0 = 7.4
local localScriptConfigVar1 = 9.6
local localScriptConfigVar2 = 7
local localScriptConfigVar3 = 8
local localScriptConfigVar4 = 5
local localScriptConfigVar5 = 6.6
local localScriptConfigVar6 = 4.2
local localScriptConfigVar7 = 6.4
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.7
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1.5
local localScriptConfigVar14 = 10.5
local localScriptConfigVar15 = 11.9
local localScriptConfigVar16 = -3
local localScriptConfigVar17 = 0
local localScriptConfigVar18 = 6
local localScriptConfigVar19 = 8
MiniGreaterDemon223200Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 3)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var7 = ai:GetNumber(0)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and func1_var7 == 0 then
      func1_var2[12] = 100
      ai:SetNumber(0, 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and func1_var7 == 1 and ai:GetNumber(1) <= 2 then
      func1_var2[13] = 100
      local func1_var8 = ai:GetNumber(1)
      ai:SetNumber(1, func1_var8 + 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812996) and func1_var7 == 1 then
      func1_var2[14] = 100
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and func1_var7 == 1 and ai:GetNumber(1) == 3 then
      func1_var2[15] = 100
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812351) then
      func1_var2[6] = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812352) then
      func1_var2[6] = 100
   elseif not ai:IsInsideTargetRegion(TARGET_ENE_0, 1812990) then
      func1_var2[16] = 100
   elseif ai:IsInsideObserve(0) then
      func1_var2[4] = 15
      func1_var2[8] = 85
   elseif ai:IsInsideObserve(1) then
      func1_var2[4] = 15
      func1_var2[9] = 85
   elseif func1_var5 >= 11.5 then
      func1_var2[1] = 70
      func1_var2[2] = 5
      func1_var2[5] = 10
      func1_var2[7] = 10
      func1_var2[11] = 5
   elseif func1_var5 >= 7 then
      func1_var2[2] = 15
      func1_var2[3] = 0
      func1_var2[5] = 35
      func1_var2[7] = 35
      func1_var2[11] = 15
   elseif func1_var5 >= 4.2 then
      func1_var2[2] = 45
      func1_var2[3] = 10
      func1_var2[5] = 0
      func1_var2[7] = 0
      func1_var2[11] = 45
   elseif func1_var5 >= 1.5 then
      func1_var2[2] = 20
      func1_var2[3] = 50
      func1_var2[5] = 5
      func1_var2[7] = 5
      func1_var2[11] = 20
   else
      func1_var2[2] = 0
      func1_var2[3] = 45
      func1_var2[4] = 45
      func1_var2[5] = 0
      func1_var2[7] = 0
      func1_var2[11] = 10
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act06)
   func1_var3[7] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act07)
   func1_var3[8] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act08)
   func1_var3[9] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act09)
   func1_var3[10] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act10)
   func1_var3[11] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act11)
   func1_var3[12] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act12)
   func1_var3[13] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act13)
   func1_var3[14] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act14)
   func1_var3[15] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act15)
   func1_var3[16] = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_Act16)
   local func1_var8 = REGIST_FUNC(ai, goal, MiniGreaterDemon223200_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

MiniGreaterDemon223200_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar15
   local func2_var6 = localScriptConfigVar15 + 6
   local func2_var7 = 0
   local func2_var8 = 3007
   local func2_var9 = DIST_Middle
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar5
   local func3_var6 = localScriptConfigVar5 + 6
   local func3_var7 = 0
   local func3_var8 = 3002
   local func3_var9 = DIST_Middle
   if func3_var4 <= 10 then
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 20 then
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar13
   local func4_var6 = localScriptConfigVar13 + 6
   local func4_var7 = 0
   local func4_var8 = 3006
   local func4_var9 = DIST_Middle
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar17
   local func5_var6 = localScriptConfigVar17 + 6
   local func5_var7 = 0
   local func5_var8 = 3008
   local func5_var9 = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar1
   local func6_var6 = localScriptConfigVar1 + 6
   local func6_var7 = 0
   local func6_var8 = 3000
   local func6_var9 = DIST_Middle
   if func6_var4 <= 10 then
      Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetRandam_Float(0.1, 3)
   local func7_var6 = localScriptConfigVar19
   local func7_var7 = localScriptConfigVar19 + 6
   local func7_var8 = 0
   local func7_var9 = 3014
   local func7_var10 = DIST_Middle
   Approach_Act(ai, goal, func7_var6, func7_var7, func7_var8)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = localScriptConfigVar3
   local func8_var6 = localScriptConfigVar3 + 6
   local func8_var7 = 0
   local func8_var8 = 3001
   local func8_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func8_var5, func8_var6, func8_var7, func8_var8, func8_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = localScriptConfigVar9
   local func9_var6 = localScriptConfigVar9 + 6
   local func9_var7 = 0
   local func9_var8 = 3004
   local func9_var9 = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = localScriptConfigVar11
   local func10_var6 = localScriptConfigVar11 + 6
   local func10_var7 = 0
   local func10_var8 = 3005
   local func10_var9 = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act10 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act11 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = localScriptConfigVar7
   local func12_var6 = localScriptConfigVar7 + 6
   local func12_var7 = 0
   local func12_var8 = 3003
   local func12_var9 = DIST_Middle
   if func12_var4 <= 10 then
      Approach_Act(ai, goal, func12_var5, func12_var6, func12_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func12_var5, func12_var6, func12_var7)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act12 = function(ai, goal, func13_param2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3020, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act13 = function(ai, goal, func14_param2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3021, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act14 = function(ai, goal, func15_param2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3022, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

MiniGreaterDemon223200_Act15 = function(ai, goal, func16_param2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3023, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

MiniGreaterDemon223200_Act16 = function(ai, goal, func17_param2)
   ai:SetEventMoveTarget(1812301)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 2, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
end

MiniGreaterDemon223200Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

MiniGreaterDemon223200_ActAfter_AdjustSpace = function(ai, goal, func19_param2)
   local func19_var3 = ai:GetDist(TARGET_ENE_0)
   local func19_var4 = ai:GetRandam_Int(1, 100)
   local func19_var5 = ai:GetRandam_Int(1, 100)
   if func19_var4 <= 80 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   end
   return false
end

MiniGreaterDemon223200Battle_Terminate = function(ai, goal)
end

MiniGreaterDemon223200Battle_Interupt = function(ai, goal)
   local func21_var2 = ai:GetDist(TARGET_ENE_0)
   local func21_var3 = ai:GetRandam_Int(1, 100)
   local func21_var4 = ai:GetRandam_Int(1, 100)
   local func21_var5 = 3
   local func21_var6 = 5
   local func21_var7 = 100
   local func21_var8 = 0
   local func21_var9 = 0
   local func21_var10 = 6
   if FindAttack_Step(ai, goal, func21_var5, func21_var6, func21_var7, func21_var8, func21_var9, func21_var10) then
      return true
   end
   local func21_var11 = 3
   local func21_var12 = 5
   local func21_var13 = 100
   local func21_var14 = 0
   local func21_var15 = 0
   local func21_var16 = 6
   if Damaged_Step(ai, goal, func21_var11, func21_var12, func21_var13, func21_var14, func21_var15, func21_var16) then
      return true
   end
   local func21_var17 = 15
   local func21_var18 = 15
   local func21_var19 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func21_var17, func21_var18) then
      if func21_var19 >= 10.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      elseif func21_var19 >= 5.2 then
         if func21_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


