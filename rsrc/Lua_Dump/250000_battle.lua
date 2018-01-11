local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.8
local localScriptConfigVar4 = 2.5
local localScriptConfigVar5 = 4
local localScriptConfigVar6 = 4
local localScriptConfigVar7 = 6
local localScriptConfigVar8 = 6
local localScriptConfigVar9 = 7.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1
Husi250000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var6 == 10 then
      func1_var2[8] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[3] = 10
      func1_var2[7] = 80
   elseif func1_var5 >= 4 then
      func1_var2[1] = 20
      func1_var2[2] = 10
      func1_var2[3] = 10
      func1_var2[7] = 60
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 30
      func1_var2[2] = 30
      func1_var2[3] = 20
      func1_var2[7] = 20
   else
      func1_var2[1] = 35
      func1_var2[2] = 35
      func1_var2[3] = 30
      func1_var2[7] = 0
   end
   local func1_var7 = {localScriptConfigVar11, 0, 3008, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Husi250000_Act02)
   func1_var3[2] = func1_var7
   func1_var7 = {localScriptConfigVar3, 0, 3003, DIST_Middle}
   func1_var4[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Husi250000_Act07)
   func1_var3[7] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Husi250000_Act08)
   func1_var3[8] = func1_var7
   func1_var7 = {0, 60, 10, 10, 20, 0}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

Husi250000_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi250000_Act07 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetRandam_Int(1, 100)
   local func3_var6 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar8 <= func3_var3 and func3_var4 <= 20 then
      local func3_var7 = localScriptConfigVar9
      local func3_var8 = localScriptConfigVar9 + 2
      local func3_var9 = 0
      Approach_Act(ai, goal, func3_var7, func3_var8, func3_var9)
      if func3_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif localScriptConfigVar6 <= func3_var3 and func3_var5 <= 50 then
      local func3_var7 = localScriptConfigVar7
      local func3_var8 = localScriptConfigVar7 + 2
      local func3_var9 = 0
      Approach_Act(ai, goal, func3_var7, func3_var8, func3_var9)
      if func3_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
   else
      local func3_var7 = localScriptConfigVar5
      local func3_var8 = localScriptConfigVar5 + 2
      local func3_var9 = 0
      Approach_Act(ai, goal, func3_var7, func3_var8, func3_var9)
      if func3_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi250000_Act08 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi250000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi250000Battle_Terminate = function(ai, goal)
end

Husi250000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func7_var2 = ai:GetRandam_Int(1, 100)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetDist(TARGET_ENE_0)
   local func7_var6 = 3
   local func7_var7 = 15
   local func7_var8 = 30
   local func7_var9 = 35
   local func7_var10 = 35
   local func7_var11 = 4
   if Damaged_Step(ai, goal, func7_var6, func7_var7, func7_var8, func7_var9, func7_var10, func7_var11) then
      return true
   end
   local func7_var12 = 1.7
   local func7_var13 = 10
   local func7_var14 = 3000
   if MissSwing_Attack(ai, goal, func7_var12, func7_var13, func7_var14) then
      return true
   end
   local func7_var15 = 10
   local func7_var16 = 30
   local func7_var17 = 35
   local func7_var18 = 35
   local func7_var19 = 4
   if RebByOpGuard_Step(ai, goal, func7_var15, func7_var16, func7_var17, func7_var18, func7_var19) then
      return true
   end
   return false
end


