local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.5
BigSk_Bow291001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 12 then
      func1_var2[1] = 100
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
   elseif func1_var5 >= 3 then
      func1_var2[1] = 0
      func1_var2[2] = 100
      func1_var2[3] = 0
      func1_var2[4] = 0
   else
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 70
      func1_var2[4] = 30
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, BigSk_Bow291001_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, BigSk_Bow291001_Act02)
   local func1_var6 = {localScriptConfigVar3, 0, 3006, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, BigSk_Bow291001_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = {0, 100, 0, 0, 0, 0, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

BigSk_Bow291001_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigSk_Bow291001_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigSk_Bow291001_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BigSk_Bow291001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigSk_Bow291001Battle_Terminate = function(ai, goal)
end

BigSk_Bow291001Battle_Interupt = function(ai, goal)
   local func7_var2 = 3
   local func7_var3 = 25
   local func7_var4 = 40
   local func7_var5 = 30
   local func7_var6 = 30
   local func7_var7 = 4
   if Damaged_Step(ai, goal, func7_var2, func7_var3, func7_var4, func7_var5, func7_var6, func7_var7) then
      return true
   end
   return false
end


