local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.9
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1
local localScriptConfigVar4 = 6
local localScriptConfigVar5 = 14
DriftItemEvil349100Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 10 then
      func1_var2[2] = 5
      func1_var2[3] = 5
      func1_var2[4] = 90
   elseif func1_var5 >= 6 then
      func1_var2[2] = 20
      func1_var2[3] = 20
      func1_var2[4] = 60
   else
      func1_var2[2] = 55
      func1_var2[3] = 45
      func1_var2[4] = 0
   end
   func1_var3[2] = REGIST_FUNC(ai, goal, DriftItemEvil349100_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, DriftItemEvil349100_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, DriftItemEvil349100_Act04)
   local func1_var6 = {0, 70, 10, 10, 10, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

DriftItemEvil349100_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(20, 30)
   local func2_var6 = localScriptConfigVar1
   local func2_var7 = localScriptConfigVar1 + 2
   local func2_var8 = 0
   if ai:IsFinishTimer(0) == true then
      if func2_var3 >= 10 then
         ai:SetTimer(0, func2_var5)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif func2_var3 >= 7 then
         ai:SetTimer(0, func2_var5)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 7, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif func2_var3 >= 3.8 then
         ai:SetTimer(0, func2_var5)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3.8, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      else
      end
   else
   end
   Approach_Act(ai, goal, func2_var6, func2_var7, func2_var8)
   if func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DriftItemEvil349100_Act03 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetRandam_Int(20, 30)
   local func3_var6 = localScriptConfigVar3
   local func3_var7 = localScriptConfigVar3 + 2
   local func3_var8 = 0
   if ai:IsFinishTimer(0) == true then
      if func3_var3 >= 10 then
         ai:SetTimer(0, func3_var5)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif func3_var3 >= 7 then
         ai:SetTimer(0, func3_var5)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 7, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      elseif func3_var3 >= 3.8 then
         ai:SetTimer(0, func3_var5)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3.8, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_SELF, DIST_NONE, 0)
      else
      end
   else
   end
   Approach_Act(ai, goal, func3_var6, func3_var7, func3_var8)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DriftItemEvil349100_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar5
   local func4_var6 = localScriptConfigVar5 + 2
   local func4_var7 = 0
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 40)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DriftItemEvil349100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DriftItemEvil349100Battle_Terminate = function(ai, goal)
end

DriftItemEvil349100Battle_Interupt = function(ai, goal)
   return false
end


