local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2
local localScriptConfigVar2 = 2
local localScriptConfigVar3 = 6
local localScriptConfigVar4 = 2.9
local localScriptConfigVar5 = 3.9
local localScriptConfigVar6 = 4.6
local localScriptConfigVar7 = 6.1
local localScriptConfigVar8 = 6.7
local localScriptConfigVar9 = 8.2
local localScriptConfigVar10 = 1.35
local localScriptConfigVar11 = 1.6
Husi_Torch250001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 9 then
      func1_var2[1] = 15
      func1_var2[2] = 0
      func1_var2[3] = 25
      func1_var2[7] = 60
   elseif func1_var5 >= 6 then
      func1_var2[1] = 20
      func1_var2[2] = 5
      func1_var2[3] = 40
      func1_var2[7] = 35
   elseif func1_var5 >= 3.5 then
      func1_var2[1] = 10
      func1_var2[2] = 40
      func1_var2[3] = 25
      func1_var2[7] = 25
   else
      func1_var2[1] = 30
      func1_var2[2] = 70
      func1_var2[3] = 0
      func1_var2[7] = 0
   end
   local func1_var6 = {localScriptConfigVar11, 0, 3006, DIST_Far, 0}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar1, 0, 30, 70, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar3, 0, 3002, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Husi_Torch250001_Act07)
   func1_var3[7] = func1_var6
   func1_var6 = {0, 50, 10, 15, 25, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Husi_Torch250001_Act07 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar8 <= func2_var3 and func2_var4 <= 20 then
      local func2_var7 = localScriptConfigVar9
      local func2_var8 = localScriptConfigVar9 + 2
      local func2_var9 = 0
      local func2_var10 = 3005
      local func2_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func2_var7, func2_var8, func2_var9, func2_var10, func2_var11)
   elseif localScriptConfigVar6 <= func2_var3 and func2_var5 <= 50 then
      local func2_var7 = localScriptConfigVar7
      local func2_var8 = localScriptConfigVar7 + 2
      local func2_var9 = 0
      local func2_var10 = 3004
      local func2_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func2_var7, func2_var8, func2_var9, func2_var10, func2_var11)
   else
      local func2_var7 = localScriptConfigVar5
      local func2_var8 = localScriptConfigVar5 + 2
      local func2_var9 = 0
      local func2_var10 = 3003
      local func2_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func2_var7, func2_var8, func2_var9, func2_var10, func2_var11)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi_Torch250001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_Torch250001Battle_Terminate = function(ai, goal)
end

Husi_Torch250001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetDist(TARGET_ENE_0)
   local func5_var6 = 3
   local func5_var7 = 15
   local func5_var8 = 30
   local func5_var9 = 35
   local func5_var10 = 35
   local func5_var11 = 4
   if Damaged_Step(ai, goal, func5_var6, func5_var7, func5_var8, func5_var9, func5_var10, func5_var11) then
      return true
   end
   local func5_var12 = 2
   local func5_var13 = 10
   local func5_var14 = 3000
   if MissSwing_Attack(ai, goal, func5_var12, func5_var13, func5_var14) then
      return true
   end
   local func5_var15 = 10
   local func5_var16 = 30
   local func5_var17 = 35
   local func5_var18 = 35
   local func5_var19 = 4
   if RebByOpGuard_Step(ai, goal, func5_var15, func5_var16, func5_var17, func5_var18, func5_var19) then
      return true
   end
   return false
end


