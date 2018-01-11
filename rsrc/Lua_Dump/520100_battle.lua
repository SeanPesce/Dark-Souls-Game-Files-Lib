local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.9
local localScriptConfigVar4 = 4
local localScriptConfigVar5 = 6.8
mukadeude520100Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 5 then
      func1_var2[1] = 0
      func1_var2[3] = 0
      func1_var2[4] = 100
   else
      func1_var2[1] = 50
      func1_var2[3] = 50
      func1_var2[4] = 0
   end
   local func1_var6 = {localScriptConfigVar1, 0, 3000, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar3, 0, 3001, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, MukadeUde520100_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, mukadeude520100_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

MukadeUde520100_Act04 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar5
   local func2_var6 = localScriptConfigVar5 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

mukadeude520100_ActAfter_AdjustSpace = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   if func3_var4 <= 60 then
   elseif func3_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

mukadeude520100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

mukadeude520100Battle_Terminate = function(ai, goal)
end

mukadeude520100Battle_Interupt = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = 25
   local func6_var7 = 100
   local func6_var8 = 0
   local func6_var9 = 0
   local func6_var10 = 4
   if RebByOpGuard_Step(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10) then
      return true
   end
   return false
end


