local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 5.2
local localScriptConfigVar3 = 8.2
basilisk327000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 15 then
      func1_var2[1] = 5
      func1_var2[2] = 95
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
   elseif func1_var5 >= 10.5 then
      func1_var2[1] = 20
      func1_var2[2] = 80
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
   elseif func1_var5 >= 7 then
      func1_var2[1] = 25
      func1_var2[2] = 0
      func1_var2[3] = 70
      func1_var2[4] = 0
      func1_var2[5] = 5
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 70
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 30
   else
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 60
      func1_var2[5] = 40
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, basilisk327000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, basilisk327000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, basilisk327000_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, basilisk327000_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, basilisk327000_Act05)
   local func1_var6 = REGIST_FUNC(ai, goal, basilisk327000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

basilisk327000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   if func2_var3 >= 18 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, true, -1)
   elseif func2_var3 >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, true, -1)
   elseif func2_var3 >= 12 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
   else
   end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2.5, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

basilisk327000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   if func3_var3 >= 18 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 15, TARGET_SELF, true, -1)
   elseif func3_var3 >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, true, -1)
   elseif func3_var3 >= 12 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
   elseif func3_var3 >= 10 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8.5, TARGET_SELF, true, -1)
   else
   end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 8.5, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

basilisk327000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

basilisk327000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

basilisk327000_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

basilisk327000_ActAfter_AdjustSpace = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   if func7_var3 <= 10 then
   elseif func7_var3 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   elseif func7_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif func7_var4 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   end
   return true
   return false
end

basilisk327000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

basilisk327000Battle_Terminate = function(ai, goal)
end

basilisk327000Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 4
   local func10_var7 = 25
   local func10_var8 = 40
   local func10_var9 = 30
   local func10_var10 = 30
   if FindAttack_Step(ai, goal, func10_var6, func10_var7, func10_var8, func10_var9, func10_var10) then
      return true
   end
   local func10_var11 = 4
   local func10_var12 = 15
   local func10_var13 = 40
   local func10_var14 = 30
   local func10_var15 = 30
   local func10_var16 = 4
   if Damaged_Step(ai, goal, func10_var11, func10_var12, func10_var13, func10_var14, func10_var15, func10_var16) then
      return true
   end
   return false
end


