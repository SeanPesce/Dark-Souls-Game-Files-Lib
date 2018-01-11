local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.5
local localScriptConfigVar2 = 2.5
local localScriptConfigVar3 = 3.5
local localScriptConfigVar4 = 3.5
local localScriptConfigVar5 = 6
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1
local localScriptConfigVar10 = 4
local localScriptConfigVar11 = 6
HusiMino_Poison253001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[7] = 60
      func1_var2[2] = 10
      func1_var2[3] = 0
      func1_var2[4] = 30
   elseif func1_var5 >= 5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[7] = 30
         func1_var2[2] = 10
         func1_var2[3] = 10
         func1_var2[4] = 50
      else
         func1_var2[7] = 50
         func1_var2[2] = 20
         func1_var2[3] = 20
         func1_var2[4] = 10
      end
   elseif func1_var5 >= 2.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[7] = 10
         func1_var2[2] = 20
         func1_var2[3] = 20
         func1_var2[4] = 50
      else
         func1_var2[7] = 30
         func1_var2[2] = 40
         func1_var2[3] = 20
         func1_var2[4] = 10
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var2[7] = 0
      func1_var2[2] = 25
      func1_var2[3] = 25
      func1_var2[4] = 50
   else
      func1_var2[7] = 0
      func1_var2[2] = 60
      func1_var2[3] = 30
      func1_var2[4] = 10
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func1_var6 = {localScriptConfigVar1, 0, 10, 40, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar7, 0, 3005, DIST_Middle, nil}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HusiMino_Poison253001_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HusiMino_Poison253001_Act07)
   func1_var3[7] = func1_var6
   func1_var6 = {0, 50, 0, 10, 10, 15, 15}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

HusiMino_Poison253001_Act04 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar10 <= func2_var3 then
      local func2_var6 = localScriptConfigVar11
      local func2_var7 = localScriptConfigVar11 + 2
      local func2_var8 = 0
      local func2_var9 = 3007
      local func2_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func2_var6, func2_var7, func2_var8, func2_var9, func2_var10)
   else
      local func2_var6 = localScriptConfigVar9
      local func2_var7 = localScriptConfigVar9 + 2
      local func2_var8 = 0
      local func2_var9 = 3006
      local func2_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func2_var6, func2_var7, func2_var8, func2_var9, func2_var10)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiMino_Poison253001_Act07 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar4 <= func3_var3 and func3_var4 <= 40 then
      local func3_var6 = localScriptConfigVar5
      local func3_var7 = localScriptConfigVar5 + 2
      local func3_var8 = 0
      local func3_var9 = 3004
      local func3_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func3_var6, func3_var7, func3_var8, func3_var9, func3_var10)
   else
      local func3_var6 = localScriptConfigVar3
      local func3_var7 = localScriptConfigVar3 + 2
      local func3_var8 = 0
      local func3_var9 = 3003
      local func3_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func3_var6, func3_var7, func3_var8, func3_var9, func3_var10)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiMino_Poison253001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiMino_Poison253001Battle_Terminate = function(ai, goal)
end

HusiMino_Poison253001Battle_Interupt = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = 3
   local func6_var7 = 15
   local func6_var8 = 30
   local func6_var9 = 35
   local func6_var10 = 35
   local func6_var11 = 4
   if Damaged_Step(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10, func6_var11) then
      return true
   end
   return false
end


