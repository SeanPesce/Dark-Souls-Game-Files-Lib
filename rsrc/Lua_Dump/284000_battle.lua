local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.9
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.4
local localScriptConfigVar6 = 2.9
local localScriptConfigVar7 = 3.9
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.7
HusiCongestion_Torch284000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      func1_var2[2] = 100
   elseif func1_var5 >= 4.4 then
      func1_var2[1] = 10
      func1_var2[2] = 15
      func1_var2[3] = 50
      func1_var2[4] = 10
      func1_var2[9] = 15
   elseif func1_var5 >= 2 then
      func1_var2[1] = 35
      func1_var2[2] = 15
      func1_var2[3] = 0
      func1_var2[4] = 15
      func1_var2[9] = 35
   else
      func1_var2[1] = 15
      func1_var2[2] = 35
      func1_var2[3] = 0
      func1_var2[4] = 35
      func1_var2[9] = 15
   end
   local func1_var6 = {localScriptConfigVar3, 0, 3002, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar1, 0, 30, 100, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar7, 0, 3005, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HusiCongestion_Torch284000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = {localScriptConfigVar5, 0, 30, 100, 3003, 3004, nil, nil}
   func1_var4[9] = func1_var6
   func1_var6 = {0, 50, 10, 15, 15, 10}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

HusiCongestion_Torch284000_Act04 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar9
   local func2_var5 = localScriptConfigVar9 + 2
   local func2_var6 = 0
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiCongestion_Torch284000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiCongestion_Torch284000Battle_Terminate = function(ai, goal)
end

HusiCongestion_Torch284000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetDist(TARGET_ENE_0)
   local func5_var6 = 3
   local func5_var7 = 5
   local func5_var8 = 100
   local func5_var9 = 0
   local func5_var10 = 0
   local func5_var11 = 4
   if Damaged_Step(ai, goal, func5_var6, func5_var7, func5_var8, func5_var9, func5_var10, func5_var11) then
      return true
   end
   return false
end


