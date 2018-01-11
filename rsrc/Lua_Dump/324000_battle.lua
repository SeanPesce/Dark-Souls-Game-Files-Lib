local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 5.6
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.6
local localScriptConfigVar8 = 4
local localScriptConfigVar9 = 6
Izalis324000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetNpcThinkParamID()
   local func1_var3 = 1412820
   if func1_var2 == 324001 then
      func1_var3 = 1412820
   elseif func1_var2 == 324002 then
      func1_var3 = 1412830
   elseif func1_var2 == 324000 then
      func1_var3 = 1412840
   end
   local func1_var4 = {}
   local func1_var5 = {}
   local func1_var6 = {}
   Common_Clear_Param(func1_var4, func1_var5, func1_var6)
   local func1_var7 = ai:GetDist(TARGET_ENE_0)
   if not ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var3) then
      if func1_var7 <= 6 then
         func1_var4[4] = 20
         func1_var4[5] = 20
         func1_var4[6] = 60
      else
         func1_var4[6] = 100
      end
   elseif func1_var7 >= 8 then
      func1_var4[1] = 15
      func1_var4[2] = 15
      func1_var4[3] = 0
      func1_var4[4] = 10
      func1_var4[5] = 60
   elseif func1_var7 >= 3 then
      func1_var4[1] = 20
      func1_var4[2] = 20
      func1_var4[3] = 0
      func1_var4[4] = 30
      func1_var4[5] = 30
   elseif func1_var7 >= 1.2 then
      func1_var4[1] = 20
      func1_var4[2] = 20
      func1_var4[3] = 30
      func1_var4[4] = 30
      func1_var4[5] = 0
   else
      func1_var4[1] = 15
      func1_var4[2] = 15
      func1_var4[3] = 50
      func1_var4[4] = 20
      func1_var4[5] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   func1_var5[1] = REGIST_FUNC(ai, goal, HusiFight_Izalis324000_Act01)
   func1_var5[2] = REGIST_FUNC(ai, goal, HusiFight_Izalis324000_Act02)
   func1_var5[3] = REGIST_FUNC(ai, goal, HusiFight_Izalis324000_Act03)
   func1_var5[4] = REGIST_FUNC(ai, goal, HusiFight_Izalis324000_Act04)
   func1_var5[5] = REGIST_FUNC(ai, goal, HusiFight_Izalis324000_Act05)
   func1_var5[6] = REGIST_FUNC(ai, goal, HusiFight_Izalis324000_Act06)
   local func1_var8 = REGIST_FUNC(ai, goal, Izalis324000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var4, func1_var5, func1_var8, func1_var6)
end

HusiFight_Izalis324000_Act01 = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = localScriptConfigVar3
   local func2_var5 = localScriptConfigVar3 + 2
   local func2_var6 = 0
   BusyApproach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 20, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Izalis324000_Act02 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = localScriptConfigVar5
   local func3_var5 = localScriptConfigVar5 + 2
   local func3_var6 = 0
   BusyApproach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 20, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Izalis324000_Act03 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = localScriptConfigVar7
   local func4_var5 = localScriptConfigVar7 + 2
   local func4_var6 = 0
   BusyApproach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 20, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Izalis324000_Act04 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = localScriptConfigVar1
   local func5_var5 = localScriptConfigVar1 + 2
   local func5_var6 = 0
   BusyApproach_Act(ai, goal, func5_var4, func5_var5, func5_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 20, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Izalis324000_Act05 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = localScriptConfigVar9
   local func6_var5 = localScriptConfigVar9 + 2
   local func6_var6 = 0
   BusyApproach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 20, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Izalis324000_Act06 = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 1, TARGET_ENE_0, True, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Izalis324000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Izalis324000Battle_Terminate = function(ai, goal)
   ai:ChangeMoveAnimParam(0)
end

Izalis324000Battle_Interupt = function(ai, goal)
   return false
end


