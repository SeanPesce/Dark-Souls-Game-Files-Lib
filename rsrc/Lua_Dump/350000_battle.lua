local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 4.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 12
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 5
local localScriptConfigVar6 = 4
local localScriptConfigVar7 = 8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 100
Bigjelly350000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest(0)
   local func1_var7 = 1
   if ai:IsFinishTimer(0) == false then
      func1_var7 = 0
   elseif func1_var6 == 0 then
      func1_var7 = 5
   elseif func1_var6 == 1 then
      func1_var7 = 1.5
   elseif func1_var6 == 2 then
      func1_var7 = 0.8
   elseif func1_var6 == 3 then
      func1_var7 = 0.4
   elseif func1_var6 == 4 then
      func1_var7 = 0.2
   elseif func1_var6 == 5 then
      func1_var7 = 0.1
   elseif func1_var6 == 6 then
      func1_var7 = 0
   else
      func1_var7 = 5
   end
   if func1_var5 >= 12 then
      func1_var2[1] = 50
      func1_var2[2] = 0
      func1_var2[4] = 0
      func1_var2[5] = 30
      func1_var2[6] = 20 * func1_var7
   elseif func1_var5 >= 8 then
      func1_var2[1] = 25
      func1_var2[2] = 0
      func1_var2[4] = 5
      func1_var2[5] = 50
      func1_var2[6] = 20 * func1_var7
   elseif func1_var5 >= 4 then
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[4] = 40
      func1_var2[5] = 0
      func1_var2[6] = 20 * func1_var7
   else
      func1_var2[1] = 5
      func1_var2[2] = 45
      func1_var2[4] = 30
      func1_var2[5] = 0
      func1_var2[6] = 20 * func1_var7
   end
   local func1_var8 = {localScriptConfigVar3, 0, 3002, DIST_Middle}
   func1_var4[1] = func1_var8
   func1_var8 = {localScriptConfigVar1, 0, 10, 90, nil, nil, nil, nil}
   func1_var4[2] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, Bigjelly350000_Act04)
   func1_var3[4] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, Bigjelly350000_Act05)
   func1_var3[5] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, Bigjelly350000_Act06)
   func1_var3[6] = func1_var8
   func1_var8 = {0, 90, 0, 5, 5, 0}
   local func1_var9 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var8)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var9, func1_var4)
end

Bigjelly350000_Act04 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar5
   local func2_var6 = localScriptConfigVar5 + 2
   local func2_var7 = 0
   local func2_var8 = 3003
   local func2_var9 = DIST_None
   local func2_var10 = 1.5
   local func2_var11 = 20
   Approach_and_Attack_Act(ai, goal, func2_var5, func2_var6, func2_var7, func2_var8, func2_var9, func2_var10, func2_var11)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Bigjelly350000_Act05 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 0
   local func3_var8 = 3004
   local func3_var9 = DIST_None
   local func3_var10 = 1.5
   local func3_var11 = 20
   Approach_and_Attack_Act(ai, goal, func3_var5, func3_var6, func3_var7, func3_var8, func3_var9, func3_var10, func3_var11)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Bigjelly350000_Act06 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_SELF, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Bigjelly350000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Bigjelly350000Battle_Terminate = function(ai, goal)
end

Bigjelly350000Battle_Interupt = function(ai, goal)
   return false
end


