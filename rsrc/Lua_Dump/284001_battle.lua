local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 15
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 15
HusiCongestion_Hand284001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      func1_var2[1] = 100
   elseif func1_var5 >= 15 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 50
      func1_var2[4] = 50
      func1_var2[5] = 0
      func1_var2[6] = 0
   elseif func1_var5 >= 10 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 40
      func1_var2[4] = 40
      func1_var2[5] = 20
      func1_var2[6] = 0
   elseif func1_var5 >= 5 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 30
      func1_var2[4] = 30
      func1_var2[5] = 20
      func1_var2[6] = 20
   elseif func1_var5 >= 1.7 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 20
      func1_var2[4] = 20
      func1_var2[5] = 20
      func1_var2[6] = 40
   else
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 10
      func1_var2[6] = 40
   end
   local func1_var6 = {localScriptConfigVar3, 0, 3002, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar1, 0, 30, 70, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HusiCongestion_Hand284001_Act03)
   func1_var3[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HusiCongestion_Hand284001_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HusiCongestion_Hand284001_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HusiCongestion_Hand284001_Act06)
   func1_var3[6] = func1_var6
   func1_var6 = {0, 100, 0, 0, 0, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

HusiCongestion_Hand284001_Act03 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar5
   local func2_var6 = localScriptConfigVar5 + 2
   local func2_var7 = 0
   if func2_var4 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiCongestion_Hand284001_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 0
   if func3_var4 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_None, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiCongestion_Hand284001_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiCongestion_Hand284001_Act06 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiCongestion_Hand284001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiCongestion_Hand284001Battle_Terminate = function(ai, goal)
end

HusiCongestion_Hand284001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   local func8_var6 = 3
   local func8_var7 = 5
   local func8_var8 = 100
   local func8_var9 = 0
   local func8_var10 = 0
   local func8_var11 = 4
   if Damaged_Step(ai, goal, func8_var6, func8_var7, func8_var8, func8_var9, func8_var10, func8_var11) then
      return true
   end
   return false
end


