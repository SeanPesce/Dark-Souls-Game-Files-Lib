local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1
Husi_Haka265000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var6 == 10 and func1_var5 <= 11 and func1_var5 >= 2 then
      func1_var2[4] = 100
   elseif func1_var5 >= 11 then
      func1_var2[1] = 30
      func1_var2[2] = 0
      func1_var2[5] = 70
   elseif func1_var5 >= 6 then
      func1_var2[1] = 30
      func1_var2[2] = 20
      func1_var2[5] = 50
   else
      func1_var2[1] = 20
      func1_var2[2] = 80
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Husi_Haka265000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Husi_Haka265000_Act02)
   func1_var3[4] = REGIST_FUNC(ai, goal, Husi_Haka265000_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, Husi_Haka265000_Act05)
   local func1_var7 = {0, 70, 0, 0, 30, 0}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

Husi_Haka265000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Haka265000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Haka265000_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Haka265000_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Haka265000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_Haka265000Battle_Terminate = function(ai, goal)
end

Husi_Haka265000Battle_Interupt = function(ai, goal)
   return false
end


