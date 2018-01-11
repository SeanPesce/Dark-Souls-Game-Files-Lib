local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.8
local localScriptConfigVar4 = 2.5
local localScriptConfigVar5 = 4
local localScriptConfigVar6 = 4
local localScriptConfigVar7 = 6
local localScriptConfigVar8 = 6
local localScriptConfigVar9 = 7.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1
Husi250004Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[1] = 100
   elseif func1_var5 >= 4 then
      func1_var2[1] = 80
      func1_var2[2] = 20
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 60
      func1_var2[2] = 30
      func1_var2[3] = 10
   else
      func1_var2[1] = 20
      func1_var2[2] = 10
      func1_var2[3] = 70
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Husi250004_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Husi250004_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Husi250004_Act03)
   local func1_var6 = {0, 60, 10, 10, 20, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Husi250004_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 3), TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi250004_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1, 3), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi250004_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(1, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi250004Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi250004Battle_Terminate = function(ai, goal)
end

Husi250004Battle_Interupt = function(ai, goal)
   return false
end


