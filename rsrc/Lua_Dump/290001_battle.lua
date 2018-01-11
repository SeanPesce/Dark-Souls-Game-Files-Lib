local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0
Skeleton_Bow290001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 12 then
      func1_var2[1] = 100
      func1_var2[2] = 0
      func1_var2[3] = 0
   elseif func1_var5 >= 3 then
      func1_var2[1] = 0
      func1_var2[2] = 100
      func1_var2[3] = 0
   else
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 100
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Skeleton_Bow290001_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Skeleton_Bow290001_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Skeleton_Bow290001_Act03)
   local func1_var6 = {0, 100, 0, 0, 0, 0, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Skeleton_Bow290001_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Skeleton_Bow290001_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Skeleton_Bow290001_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Skeleton_Bow290001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Skeleton_Bow290001Battle_Terminate = function(ai, goal)
end

Skeleton_Bow290001Battle_Interupt = function(ai, goal)
   local func7_var2 = 3
   local func7_var3 = 25
   local func7_var4 = 20
   local func7_var5 = 40
   local func7_var6 = 40
   local func7_var7 = 3.5
   if Damaged_Step(ai, goal, func7_var2, func7_var3, func7_var4, func7_var5, func7_var6, func7_var7) then
      return true
   end
   local func7_var8 = 6
   local func7_var9 = 18
   local func7_var10 = 0
   local func7_var11 = 15
   local func7_var12 = ai:GetRandam_Int(1, 100)
   local func7_var13 = ai:GetRandam_Int(1, 100)
   local func7_var14 = ai:GetDist(TARGET_ENE_0)
   local func7_var15 = Shoot_2dist(ai, goal, func7_var8, func7_var9, func7_var10, func7_var11)
   if func7_var15 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Guard, 2, 9910, TARGET_ENE_0, false, 0)
      return true
   elseif func7_var15 == 2 then
      if func7_var12 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


