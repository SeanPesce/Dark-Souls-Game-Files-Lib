local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.4
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 7.4
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 3
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 20.1
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 20
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 10
HusiBanIwa281100Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var5 >= 8.1 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 40
      func1_var2[6] = 60
      func1_var2[9] = 0
   elseif func1_var5 >= 6.1 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[6] = 20
      func1_var2[9] = 80
   elseif func1_var5 >= 4.1 then
      func1_var2[1] = 10
      func1_var2[2] = 10
      func1_var2[3] = 10
      func1_var2[4] = 0
      func1_var2[6] = 0
      func1_var2[9] = 70
   elseif func1_var5 >= 2.1 then
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[3] = 10
      func1_var2[4] = 0
      func1_var2[6] = 0
      func1_var2[9] = 50
   else
      func1_var2[1] = 25
      func1_var2[2] = 20
      func1_var2[3] = 5
      func1_var2[4] = 0
      func1_var2[6] = 0
      func1_var2[9] = 50
   end
   local func1_var7 = {localScriptConfigVar5, 0, 3002, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = {localScriptConfigVar1, 0, 30, 70, nil, nil, nil, nil}
   func1_var4[2] = func1_var7
   func1_var7 = {localScriptConfigVar9, 0, 3004, DIST_Middle}
   func1_var4[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiBanIwa281100_Act04)
   func1_var3[4] = func1_var7
   func1_var7 = {3007, DIST_Far, nil}
   func1_var4[6] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiBanIwa281100_Act09)
   func1_var3[9] = func1_var7
   func1_var7 = {0, 90, 5, 5, 0, 0}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

HusiBanIwa281100_Act04 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar7
   local func2_var5 = localScriptConfigVar7 + 2
   local func2_var6 = 0
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiBanIwa281100_Act06 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiBanIwa281100_Act09 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   if func4_var3 >= 6.1 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   elseif func4_var3 >= 4.1 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   elseif func4_var3 >= 2.1 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiBanIwa281100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiBanIwa281100Battle_Terminate = function(ai, goal)
end

HusiBanIwa281100Battle_Interupt = function(ai, goal)
   local func7_var2 = 7.4
   local func7_var3 = 30
   local func7_var4 = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, func7_var2, func7_var3) then
      if func7_var4 >= 2.3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


