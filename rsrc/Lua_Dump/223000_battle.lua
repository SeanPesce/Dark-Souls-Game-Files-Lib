local localScriptConfigVar0 = 6
local localScriptConfigVar1 = 12
local localScriptConfigVar2 = 4
local localScriptConfigVar3 = 12
local localScriptConfigVar4 = 14
local localScriptConfigVar5 = 19
local localScriptConfigVar6 = -3
local localScriptConfigVar7 = 2
local localScriptConfigVar8 = 3
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = -3
local localScriptConfigVar11 = 5
GreaterDemon223000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest(0)
   if func1_var6 == 10 then
      func1_var2[9] = 100
   elseif func1_var5 >= 14 then
      func1_var2[1] = 10
      func1_var2[2] = 5
      func1_var2[4] = 0
      func1_var2[5] = 20
      func1_var2[6] = 0
      func1_var2[7] = 65
      func1_var2[8] = 0
   elseif func1_var5 >= 10 then
      func1_var2[1] = 50
      func1_var2[2] = 40
      func1_var2[4] = 0
      func1_var2[5] = 10
      func1_var2[6] = 0
      func1_var2[7] = 0
      func1_var2[8] = 0
   elseif func1_var5 >= 6 then
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[4] = 0
      func1_var2[5] = 40
      func1_var2[6] = 0
      func1_var2[7] = 0
      func1_var2[8] = 10
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[4] = 0
      func1_var2[5] = 50
      func1_var2[6] = 15
      func1_var2[7] = 0
      func1_var2[8] = 35
   elseif func1_var5 >= 0.5 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[4] = 10
      func1_var2[5] = 0
      func1_var2[6] = 55
      func1_var2[7] = 0
      func1_var2[8] = 35
   else
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[4] = 50
      func1_var2[5] = 0
      func1_var2[6] = 25
      func1_var2[7] = 0
      func1_var2[8] = 25
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, GreaterDemon223000_Act01)
   local func1_var7 = {localScriptConfigVar1, 0, 20, 80}
   func1_var4[2] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, GreaterDemon223000_Act04)
   func1_var3[4] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, GreaterDemon223000_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, GreaterDemon223000_Act06)
   func1_var3[6] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, GreaterDemon223000_Act07)
   func1_var3[7] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, GreaterDemon223000_Act08)
   func1_var3[8] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, GreaterDemon223000_Act09)
   func1_var3[9] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, GreaterDemon223000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

GreaterDemon223000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar3
   local func2_var6 = localScriptConfigVar3 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 6
   local func3_var7 = 0
   local func3_var8 = 3005
   local func3_var9 = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar9
   local func4_var6 = localScriptConfigVar9 + 6
   local func4_var7 = 0
   local func4_var8 = 3006
   local func4_var9 = DIST_Far
   Approach_and_Attack_Act(ai, goal, func4_var5, func4_var6, func4_var7, func4_var8, func4_var9)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GreaterDemon223000_Act06 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar11
   local func5_var6 = localScriptConfigVar11 + 6
   local func5_var7 = 0
   local func5_var8 = 3007
   local func5_var9 = DIST_Middle
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act07 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar5
   local func6_var6 = localScriptConfigVar5 + 6
   local func6_var7 = 0
   local func6_var8 = 3004
   local func6_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func6_var5, func6_var6, func6_var7, func6_var8, func6_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GreaterDemon223000_Act08 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GreaterDemon223000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 20, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 2, TARGET_SELF, true)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GreaterDemon223000_ActAfter_AdjustSpace = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetRandam_Int(1, 100)
   if func9_var4 <= 75 then
   elseif func9_var4 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 6)
      return true
   end
   return false
end

GreaterDemon223000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GreaterDemon223000Battle_Terminate = function(ai, goal)
end

GreaterDemon223000Battle_Interupt = function(ai, goal)
   local func12_var2 = ai:GetDist(TARGET_ENE_0)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = 3
   local func12_var6 = 5
   local func12_var7 = 100
   local func12_var8 = 0
   local func12_var9 = 0
   local func12_var10 = 6
   if FindAttack_Step(ai, goal, func12_var5, func12_var6, func12_var7, func12_var8, func12_var9, func12_var10) then
      return true
   end
   local func12_var11 = 3
   local func12_var12 = 5
   local func12_var13 = 100
   local func12_var14 = 0
   local func12_var15 = 0
   local func12_var16 = 6
   if Damaged_Step(ai, goal, func12_var11, func12_var12, func12_var13, func12_var14, func12_var15, func12_var16) then
      return true
   end
   local func12_var17 = 12
   local func12_var18 = 15
   local func12_var19 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func12_var17, func12_var18) then
      if func12_var19 >= 10 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      elseif func12_var19 >= 6 then
         if func12_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func12_var19 >= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


