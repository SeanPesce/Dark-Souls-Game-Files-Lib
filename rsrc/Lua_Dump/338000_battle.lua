local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 0.8
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4.4
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.7
Leech338000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[3] = 60
      func1_var2[5] = 30
   elseif func1_var5 >= 4 then
      func1_var2[1] = 10
      func1_var2[2] = 10
      func1_var2[3] = 60
      func1_var2[5] = 20
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 15
      func1_var2[2] = 15
      func1_var2[3] = 30
      func1_var2[5] = 40
   else
      func1_var2[1] = 40
      func1_var2[2] = 40
      func1_var2[3] = 5
      func1_var2[5] = 15
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Leech338000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Leech338000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Leech338000_Act03)
   func1_var3[5] = REGIST_FUNC(ai, goal, Leech338000_Act05)
   local func1_var6 = REGIST_FUNC(ai, goal, Leech338000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

Leech338000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 0
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar3
   local func3_var5 = localScriptConfigVar3 + 2
   local func3_var6 = 0
   Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3001, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar5
   local func4_var5 = localScriptConfigVar5 + 2
   local func4_var6 = 0
   Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar7
   local func5_var5 = localScriptConfigVar7 + 2
   local func5_var6 = 0
   Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Leech338000_ActAfter_AdjustSpace = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   if func6_var4 <= 30 then
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

Leech338000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Leech338000Battle_Terminate = function(ai, goal)
end

Leech338000Battle_Interupt = function(ai, goal)
   return false
end


