local localScriptConfigVar0 = 0.6
local localScriptConfigVar1 = 2
local localScriptConfigVar2 = 2.1
local localScriptConfigVar3 = 4.8
local localScriptConfigVar4 = 3.8
local localScriptConfigVar5 = 7.6
local localScriptConfigVar6 = 5.5
local localScriptConfigVar7 = 7.1
local localScriptConfigVar8 = 2.4
local localScriptConfigVar9 = 5.6
local localScriptConfigVar10 = -5
local localScriptConfigVar11 = 0.6
local localScriptConfigVar12 = 0.6
local localScriptConfigVar13 = 1.6
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 2.4
OnIf_287000 = function(ai, goal, func1_param2)
   ai:SetTimer(0, 60)
end

GiantKnight287000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = ai:GetHpRate(TARGET_SELF)
   if func2_var6 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var5 >= 4.5 then
         func2_var2[9] = 300
      elseif func2_var5 >= 3 then
         func2_var2[9] = 100
      else
         func2_var2[9] = 50
      end
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1512780) then
      func2_var2[11] = 100
   elseif func2_var5 >= 12 then
      func2_var2[1] = 5
      func2_var2[2] = 5
      func2_var2[3] = 30
      func2_var2[4] = 30
      func2_var2[5] = 30
      func2_var2[6] = 0
      func2_var2[7] = 0
      func2_var2[8] = 0
      func2_var2[10] = 0
   elseif func2_var5 >= 8 then
      func2_var2[1] = 15
      func2_var2[2] = 15
      func2_var2[3] = 25
      func2_var2[4] = 25
      func2_var2[5] = 20
      func2_var2[6] = 0
      func2_var2[7] = 0
      func2_var2[8] = 0
      func2_var2[10] = 0
   elseif func2_var5 >= 5 then
      func2_var2[1] = 30
      func2_var2[2] = 30
      func2_var2[3] = 10
      func2_var2[4] = 10
      func2_var2[5] = 10
      func2_var2[6] = 0
      func2_var2[7] = 10
      func2_var2[8] = 0
      func2_var2[10] = 0
   elseif func2_var5 >= 1.5 then
      func2_var2[1] = 25
      func2_var2[2] = 20
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 0
      func2_var2[6] = 0
      func2_var2[7] = 30
      func2_var2[8] = 15
      func2_var2[10] = 10
   else
      func2_var2[1] = 0
      func2_var2[2] = 0
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 0
      func2_var2[6] = 35
      func2_var2[7] = 0
      func2_var2[8] = 35
      func2_var2[10] = 30
   end
   func2_var3[1] = REGIST_FUNC(ai, goal, GiantKnight287000_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, GiantKnight287000_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, GiantKnight287000_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, GiantKnight287000_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, GiantKnight287000_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, GiantKnight287000_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, GiantKnight287000_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, GiantKnight287000_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, GiantKnight287000_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, GiantKnight287000_Act10)
   func2_var3[11] = REGIST_FUNC(ai, goal, GiantKnight287000_Act11)
   local func2_var7 = REGIST_FUNC(ai, goal, GiantKnight287000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var7, func2_var4)
end

GiantKnight287000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 8
   local func3_var7 = 0
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 8
   local func4_var7 = 0
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 9, 18)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 9, 18)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 9, 18)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar5
   local func5_var6 = localScriptConfigVar5 + 8
   local func5_var7 = 0
   Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   if func5_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar7
   local func6_var6 = localScriptConfigVar7 + 8
   local func6_var7 = 0
   Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   if func6_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar9
   local func7_var6 = localScriptConfigVar9 + 8
   local func7_var7 = 0
   local func7_var8 = 3008
   local func7_var9 = DIST_Middle
   Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 15, 15)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = localScriptConfigVar11
   local func8_var6 = localScriptConfigVar11 + 8
   local func8_var7 = 0
   Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 10, 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = localScriptConfigVar13
   local func9_var6 = localScriptConfigVar13 + 8
   local func9_var7 = 0
   local func9_var8 = 3017
   local func9_var9 = DIST_Middle
   Approach_Act(ai, goal, func9_var5, func9_var6, func9_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 7, 15)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GiantKnight287000_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetRandam_Int(1, 100)
   if func11_var3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GiantKnight287000_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = localScriptConfigVar15
   local func12_var6 = localScriptConfigVar15 + 8
   local func12_var7 = 0
   Approach_Act(ai, goal, func12_var5, func12_var6, func12_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight287000_Act11 = function(ai, goal, func13_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 1, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GiantKnight287000_ActAfter_AdjustSpace = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = ai:GetRandam_Int(1, 100)
   if func14_var4 <= 65 then
   elseif func14_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 35), true, true, -1)
      return true
   elseif func14_var4 <= 85 then
      if func14_var5 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      return true
   end
   return false
end

GiantKnight287000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GiantKnight287000Battle_Terminate = function(ai, goal)
end

GiantKnight287000Battle_Interupt = function(ai, goal)
   local func17_var2 = ai:GetDist(TARGET_ENE_0)
   local func17_var3 = ai:GetRandam_Int(1, 100)
   local func17_var4 = ai:GetRandam_Int(1, 100)
   local func17_var5 = 3
   local func17_var6 = 25
   local func17_var7 = 40
   local func17_var8 = 30
   local func17_var9 = 30
   local func17_var10 = 5
   if Damaged_Step(ai, goal, func17_var5, func17_var6, func17_var7, func17_var8, func17_var9, func17_var10) then
      return true
   end
   local func17_var11 = 8
   local func17_var12 = 20
   local func17_var13 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func17_var11, func17_var12) then
      if func17_var13 >= 4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif func17_var13 >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      elseif func17_var13 >= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func17_var14 = 2.4
   local func17_var15 = 25
   local func17_var16 = 20
   local func17_var17 = 25
   local func17_var18 = Shoot_2dist(ai, goal, func17_var14, func17_var15, func17_var16, func17_var17)
   if func17_var18 == 1 then
      if func17_var13 >= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   elseif func17_var18 == 2 then
      if func17_var13 >= 5.2 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         return true
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


