local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.4
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.3
local localScriptConfigVar4 = 5.5
local localScriptConfigVar5 = 8.3
local localScriptConfigVar6 = 5.6
local localScriptConfigVar7 = 8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 10
ClayDoll238000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = 0
   if ai:IsFinishTimer(0) == true then
      func1_var6 = 1
   end
   if func1_var5 >= 8 then
      func1_var2[1] = 40
      func1_var2[2] = 10
      func1_var2[3] = 45
      func1_var2[5] = 0 * func1_var6
      func1_var2[9] = 5
   elseif func1_var5 >= 4 then
      func1_var2[1] = 25
      func1_var2[2] = 20
      func1_var2[3] = 25
      func1_var2[5] = 10 * func1_var6
      func1_var2[9] = 20
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 0
      func1_var2[2] = 30
      func1_var2[3] = 0
      func1_var2[5] = 40 * func1_var6
      func1_var2[9] = 30
   else
      func1_var2[1] = 0
      func1_var2[2] = 30
      func1_var2[3] = 0
      func1_var2[5] = 50 * func1_var6
      func1_var2[9] = 20
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, ClayDoll238000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, ClayDoll238000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, ClayDoll238000_Act03)
   func1_var3[5] = REGIST_FUNC(ai, goal, ClayDoll238000_Act05)
   func1_var3[9] = REGIST_FUNC(ai, goal, ClayDoll238000_Act09)
   local func1_var7 = {100, 10, 30, 25, 20, 8, 7}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

ClayDoll238000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar5
   local func2_var6 = localScriptConfigVar5 + 30
   local func2_var7 = 30
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ClayDoll238000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 30
   local func3_var7 = 30
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ClayDoll238000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar7
   local func4_var6 = localScriptConfigVar7 + 30
   local func4_var7 = 30
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ClayDoll238000_Act05 = function(ai, goal, func5_param2)
   ai:SetTimer(0, 75)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

ClayDoll238000_Act09 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar3
   local func6_var6 = localScriptConfigVar3 + 30
   local func6_var7 = 30
   Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   if func6_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ClayDoll238000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ClayDoll238000Battle_Terminate = function(ai, goal)
end

ClayDoll238000Battle_Interupt = function(ai, goal)
   local func9_var2 = 8
   local func9_var3 = 35
   local func9_var4 = ai:GetDist(TARGET_ENE_0)
   local func9_var5 = ai:GetRandam_Int(1, 100)
   if GuardBreak_Act(ai, goal, func9_var2, func9_var3) then
      if func9_var4 >= 5.5 then
         if func9_var5 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func9_var5 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local func9_var6 = 8.3
   local func9_var7 = 20
   local func9_var8 = 0
   local func9_var9 = 100
   local func9_var10 = ai:GetRandam_Int(1, 100)
   local func9_var11 = ai:GetRandam_Int(1, 100)
   local func9_var12 = Shoot_2dist(ai, goal, func9_var6, func9_var7, func9_var8, func9_var9)
   if func9_var12 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func9_var12 == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   end
   local func9_var13 = 3.4
   local func9_var14 = 40
   if SuccessGuard_Act(ai, goal, func9_var13, func9_var14) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end


