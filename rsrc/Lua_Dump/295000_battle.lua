local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.9
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.7
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 6.1
local localScriptConfigVar8 = 4.8
local localScriptConfigVar9 = 6.1
local localScriptConfigVar10 = 9
local localScriptConfigVar11 = 10.7
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 5.8
Skeleton_Beast295000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 9 then
      func1_var2[1] = 15
      func1_var2[2] = 15
      func1_var2[3] = 45
      func1_var2[5] = 25
      func1_var2[6] = 0
   elseif func1_var5 >= 4 then
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[3] = 25
      func1_var2[5] = 10
      func1_var2[6] = 15
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 40
      func1_var2[2] = 30
      func1_var2[3] = 10
      func1_var2[5] = 0
      func1_var2[6] = 20
   else
      func1_var2[1] = 30
      func1_var2[2] = 50
      func1_var2[3] = 10
      func1_var2[5] = 0
      func1_var2[6] = 10
   end
   local func1_var6 = {localScriptConfigVar5, 0, 3002, DIST_Near}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar1, 0, 40, 60, 3000, 3001, 3000, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar7, 0, 3003, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Skeleton_Beast295000_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Skeleton_Beast295000_Act06)
   func1_var3[6] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Skeleton_Beast295000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

Skeleton_Beast295000_Act05 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar10 <= func2_var3 and func2_var4 <= 40 then
      local func2_var6 = localScriptConfigVar11
      local func2_var7 = localScriptConfigVar11 + 2
      local func2_var8 = 0
      local func2_var9 = 3005
      local func2_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func2_var6, func2_var7, func2_var8, func2_var9, func2_var10)
   else
      local func2_var6 = localScriptConfigVar9
      local func2_var7 = localScriptConfigVar9 + 2
      local func2_var8 = 0
      local func2_var9 = 3004
      local func2_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func2_var6, func2_var7, func2_var8, func2_var9, func2_var10)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Beast295000_Act06 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetRandam_Int(1, 100)
   local func3_var6 = localScriptConfigVar13
   local func3_var7 = localScriptConfigVar13 + 2
   local func3_var8 = 0
   local func3_var9 = 3006
   local func3_var10 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func3_var6, func3_var7, func3_var8, func3_var9, func3_var10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Beast295000_ActAfter_AdjustSpace = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   local func4_var6 = 0
   local func4_var7 = 4
   if func4_var4 <= 20 then
   elseif func4_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 3, TARGET_ENE_0, false, -1)
      return true
   elseif func4_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, func4_var6, AI_DIR_TYPE_B, func4_var7)
      return true
   elseif func4_var5 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, func4_var6, AI_DIR_TYPE_L, func4_var7)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, func4_var6, AI_DIR_TYPE_R, func4_var7)
      return true
   end
   return false
end

Skeleton_Beast295000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Skeleton_Beast295000Battle_Terminate = function(ai, goal)
end

Skeleton_Beast295000Battle_Interupt = function(ai, goal)
   local func7_var2 = 3
   local func7_var3 = 25
   local func7_var4 = ai:GetRandam_Int(1, 100)
   if GuardBreak_Act(ai, goal, func7_var2, func7_var3) then
      if func7_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


