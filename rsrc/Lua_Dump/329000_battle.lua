local localScriptConfigVar0 = 0.7
local localScriptConfigVar1 = 1.1
local localScriptConfigVar2 = 1.5
local localScriptConfigVar3 = 3.4
local localScriptConfigVar4 = 1.5
local localScriptConfigVar5 = 3.3
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.9
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 3.9
Ohmushi329000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   local func1_var5 = ai:GetEventRequest()
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 160, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 161, 3)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 170, 2)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 171, 2)
   local func1_var6 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 96) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 170) and func1_var6 <= 2.1 then
      func1_var2[1] = 5
      func1_var2[2] = 95
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 78) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 170) and func1_var6 <= 2.1 then
      func1_var2[1] = 5
      func1_var2[2] = 0
      func1_var2[3] = 95
      func1_var2[4] = 0
      func1_var2[5] = 0
   elseif ai:IsInsideObserve(2) and func1_var6 <= 2.5 then
      func1_var2[1] = 5
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 95
      func1_var2[5] = 0
   elseif ai:IsInsideObserve(3) and func1_var6 <= 2.5 then
      func1_var2[1] = 5
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 95
   else
      func1_var2[1] = 100
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
   end
   local func1_var7 = {localScriptConfigVar1, 0, 3000, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ohmushi329000_Act02)
   func1_var3[2] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ohmushi329000_Act03)
   func1_var3[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ohmushi329000_Act04)
   func1_var3[4] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ohmushi329000_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ohmushi329000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Ohmushi329000_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar3
   local func2_var5 = localScriptConfigVar3 + 2
   local func2_var6 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_Act03 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar5
   local func3_var5 = localScriptConfigVar5 + 2
   local func3_var6 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar7
   local func4_var5 = localScriptConfigVar7 + 2
   local func4_var6 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar9
   local func5_var5 = localScriptConfigVar9 + 2
   local func5_var6 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ohmushi329000_ActAfter_AdjustSpace = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   if func6_var4 <= 30 then
   elseif func6_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 2.5, TARGET_ENE_0, false, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

Ohmushi329000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ohmushi329000Battle_Terminate = function(ai, goal)
end

Ohmushi329000Battle_Interupt = function(ai, goal)
   return false
end


