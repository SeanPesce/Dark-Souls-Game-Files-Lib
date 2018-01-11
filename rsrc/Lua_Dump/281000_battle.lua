local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.1
local localScriptConfigVar4 = 2.75
local localScriptConfigVar5 = 6.45
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 4.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 9.5
HusiBan281000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[2] = 10
      func1_var2[3] = 5
      func1_var2[1] = 50
      func1_var2[9] = 10
      func1_var2[6] = 25
   elseif func1_var5 >= 4 then
      func1_var2[2] = 15
      func1_var2[3] = 10
      func1_var2[1] = 40
      func1_var2[9] = 10
      func1_var2[6] = 25
   elseif func1_var5 >= 2.5 then
      func1_var2[2] = 30
      func1_var2[3] = 20
      func1_var2[1] = 10
      func1_var2[9] = 30
      func1_var2[6] = 10
   else
      func1_var2[2] = 35
      func1_var2[3] = 20
      func1_var2[1] = 0
      func1_var2[9] = 35
      func1_var2[6] = 10
   end
   local func1_var6 = {localScriptConfigVar1, 0, 50, 100, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar3, 0, 3002, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = {localScriptConfigVar5, 0, 3003, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar7, 0, 50, 100, 3004, 3005, nil, nil}
   func1_var4[9] = func1_var6
   func1_var6 = {3006, DIST_None, nil}
   func1_var4[6] = func1_var6
   func1_var6 = {0, 10, 40, 30, 20, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

HusiBan281000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiBan281000Battle_Terminate = function(ai, goal)
end

HusiBan281000Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 1.7
   local func4_var7 = 25
   if FindGuardBreak_Act(ai, goal, func4_var6, func4_var7) then
      local func4_var8 = localScriptConfigVar5
      local func4_var9 = localScriptConfigVar5 + 2
      local func4_var10 = 0
      local func4_var11 = 3003
      local func4_var12 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var8, func4_var9, func4_var10, func4_var11, func4_var12)
      return true
   end
   local func4_var8 = 4.5
   local func4_var9 = 25
   local func4_var10 = 3004
   if MissSwing_Attack(ai, goal, func4_var8, func4_var9, func4_var10) then
      return true
   end
   return false
end


