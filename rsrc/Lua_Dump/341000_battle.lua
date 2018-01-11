local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.4
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4.3
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.7
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.4
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4.6
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 4.7
local localScriptConfigVar14 = 4.9
local localScriptConfigVar15 = 5.2
Kaeruei341000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsSleepSpecialEffectId(TARGET_SELF, 5105) then
      if func1_var5 >= 8 then
         func1_var2[1] = 5
         func1_var2[2] = 5
         func1_var2[3] = 10
         func1_var2[9] = 80
      elseif func1_var5 >= 2 then
         func1_var2[1] = 30
         func1_var2[2] = 30
         func1_var2[3] = 40
         func1_var2[9] = 0
      else
         func1_var2[1] = 50
         func1_var2[2] = 50
         func1_var2[3] = 0
         func1_var2[9] = 0
      end
   elseif func1_var5 >= 15 then
      func1_var2[4] = 0
      func1_var2[5] = 5
      func1_var2[6] = 10
      func1_var2[7] = 15
      func1_var2[8] = 30
      func1_var2[10] = 40
   elseif func1_var5 >= 6.5 then
      func1_var2[4] = 5
      func1_var2[5] = 10
      func1_var2[6] = 20
      func1_var2[7] = 30
      func1_var2[8] = 45
      func1_var2[10] = 0
   elseif func1_var5 >= 2 then
      func1_var2[4] = 10
      func1_var2[5] = 20
      func1_var2[6] = 35
      func1_var2[7] = 35
      func1_var2[8] = 0
      func1_var2[10] = 0
   else
      func1_var2[4] = 40
      func1_var2[5] = 50
      func1_var2[6] = 0
      func1_var2[7] = 10
      func1_var2[8] = 0
      func1_var2[10] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   local func1_var6 = {localScriptConfigVar1, 0, 3000, DIST_Middle, nil}
   func1_var4[1] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act02)
   func1_var3[2] = func1_var6
   func1_var6 = {localScriptConfigVar5, 0, 3002, DIST_Middle, nil}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act06)
   func1_var3[6] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act07)
   func1_var3[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act08)
   func1_var3[8] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act09)
   func1_var3[9] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Kaeruei341000_Act10)
   func1_var3[10] = func1_var6
   func1_var6 = {0, 60, 0, 0, 10, 15, 15}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Kaeruei341000_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = localScriptConfigVar3
   local func2_var4 = localScriptConfigVar3 + 2
   local func2_var5 = 0
   Approach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 70)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar7
   local func3_var4 = localScriptConfigVar7 + 2
   local func3_var5 = 0
   local func3_var6 = 3000
   local func3_var7 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func3_var3, func3_var4, func3_var5, func3_var6, func3_var7)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = localScriptConfigVar9
   local func4_var4 = localScriptConfigVar9 + 2
   local func4_var5 = 0
   Approach_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 70)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act06 = function(ai, goal, func5_param2)
   local func5_var3 = localScriptConfigVar11
   local func5_var4 = localScriptConfigVar11 + 2
   local func5_var5 = 0
   local func5_var6 = 3002
   local func5_var7 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var3, func5_var4, func5_var5, func5_var6, func5_var7)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act07 = function(ai, goal, func6_param2)
   local func6_var3 = localScriptConfigVar13
   local func6_var4 = localScriptConfigVar13 + 2
   local func6_var5 = 0
   local func6_var6 = 3003
   local func6_var7 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func6_var3, func6_var4, func6_var5, func6_var6, func6_var7)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kaeruei341000_Act08 = function(ai, goal, func7_param2)
   local func7_var3 = localScriptConfigVar15
   local func7_var4 = localScriptConfigVar15 + 2
   local func7_var5 = 0
   local func7_var6 = 3004
   local func7_var7 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func7_var3, func7_var4, func7_var5, func7_var6, func7_var7)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kaeruei341000_Act09 = function(ai, goal, func8_param2)
   local func8_var3 = 8
   local func8_var4 = 10
   local func8_var5 = 0
   Approach_Act(ai, goal, func8_var3, func8_var4, func8_var5)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kaeruei341000_Act10 = function(ai, goal, func9_param2)
   local func9_var3 = 10
   local func9_var4 = 12
   local func9_var5 = 0
   Approach_Act(ai, goal, func9_var3, func9_var4, func9_var5)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, -1, AI_DIR_TYPE_F, 7)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kaeruei341000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kaeruei341000Battle_Terminate = function(ai, goal)
end

Kaeruei341000Battle_Interupt = function(ai, goal)
   local func12_var2 = 3
   local func12_var3 = 10
   local func12_var4 = 60
   local func12_var5 = 20
   local func12_var6 = 20
   if FindAttack_Step(ai, goal, func12_var2, func12_var3, func12_var4, func12_var5, func12_var6) then
      return true
   end
   local func12_var7 = 20
   local func12_var8 = 60
   local func12_var9 = 20
   local func12_var10 = 20
   local func12_var11 = 4
   if RebByOpGuard_Step(ai, goal, func12_var7, func12_var8, func12_var9, func12_var10, func12_var11) then
      return true
   end
   return false
end


