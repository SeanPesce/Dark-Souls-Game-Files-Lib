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
GiantKnight_low287001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 12 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[3] = 30
      func1_var2[4] = 30
      func1_var2[5] = 30
      func1_var2[6] = 0
      func1_var2[7] = 0
      func1_var2[8] = 0
   elseif func1_var5 >= 8 then
      func1_var2[1] = 15
      func1_var2[2] = 15
      func1_var2[3] = 25
      func1_var2[4] = 25
      func1_var2[5] = 20
      func1_var2[6] = 0
      func1_var2[7] = 0
      func1_var2[8] = 0
   elseif func1_var5 >= 5 then
      func1_var2[1] = 30
      func1_var2[2] = 30
      func1_var2[3] = 10
      func1_var2[4] = 10
      func1_var2[5] = 10
      func1_var2[6] = 0
      func1_var2[7] = 10
      func1_var2[8] = 0
   elseif func1_var5 >= 1.5 then
      func1_var2[1] = 30
      func1_var2[2] = 20
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[6] = 0
      func1_var2[7] = 35
      func1_var2[8] = 15
   else
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[6] = 50
      func1_var2[7] = 0
      func1_var2[8] = 50
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act06)
   func1_var3[7] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act07)
   func1_var3[8] = REGIST_FUNC(ai, goal, GiantKnight_low287001_Act08)
   local func1_var6 = REGIST_FUNC(ai, goal, GiantKnight_low287001_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

GiantKnight_low287001_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 8
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight_low287001_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar3
   local func3_var6 = localScriptConfigVar3 + 8
   local func3_var7 = 0
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 9, 18)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 9, 18)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 9, 18)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight_low287001_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar5
   local func4_var6 = localScriptConfigVar5 + 8
   local func4_var7 = 0
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight_low287001_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 8
   local func5_var7 = 0
   Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   if func5_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 15, 15)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 15, 15)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 15, 15)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight_low287001_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar9
   local func6_var6 = localScriptConfigVar9 + 8
   local func6_var7 = 0
   local func6_var8 = 3008
   local func6_var9 = DIST_Middle
   Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 15, 15)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight_low287001_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar11
   local func7_var6 = localScriptConfigVar11 + 8
   local func7_var7 = 0
   Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 10, 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight_low287001_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = localScriptConfigVar13
   local func8_var6 = localScriptConfigVar13 + 8
   local func8_var7 = 0
   local func8_var8 = 3017
   local func8_var9 = DIST_Middle
   Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 7, 15)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GiantKnight_low287001_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GiantKnight_low287001_ActAfter_AdjustSpace = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetRandam_Int(1, 100)
   if func10_var4 <= 65 then
   elseif func10_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 35), true, true, -1)
      return true
   elseif func10_var4 <= 85 then
      if func10_var5 <= 50 then
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

GiantKnight_low287001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GiantKnight_low287001Battle_Terminate = function(ai, goal)
end

GiantKnight_low287001Battle_Interupt = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = 3
   local func13_var6 = 25
   local func13_var7 = 40
   local func13_var8 = 30
   local func13_var9 = 30
   local func13_var10 = 5
   if Damaged_Step(ai, goal, func13_var5, func13_var6, func13_var7, func13_var8, func13_var9, func13_var10) then
      return true
   end
   local func13_var11 = 8
   local func13_var12 = 20
   local func13_var13 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func13_var11, func13_var12) then
      if func13_var13 >= 4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif func13_var13 >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      elseif func13_var13 >= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func13_var14 = 2.4
   local func13_var15 = 25
   local func13_var16 = 20
   local func13_var17 = 25
   local func13_var18 = Shoot_2dist(ai, goal, func13_var14, func13_var15, func13_var16, func13_var17)
   if func13_var18 == 1 then
      if func13_var13 >= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   elseif func13_var18 == 2 then
      if func13_var13 >= 5.2 then
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


