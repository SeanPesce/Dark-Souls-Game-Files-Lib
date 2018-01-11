Husi_Bow250005Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   local func1_var7 = ai:GetNpcThinkParamID()
   local func1_var8 = 0
   if func1_var7 == 250021 then
      ai:AddObserveRegion(0, TARGET_ENE_0, 1812101)
   end
   if func1_var5 >= 15 then
      func1_var2[1] = 100
      func1_var2[2] = 0
      func1_var2[3] = 0
   elseif func1_var5 >= 8 then
      func1_var2[1] = 80
      func1_var2[2] = 20
      func1_var2[3] = 0
   elseif func1_var5 >= 4 then
      func1_var2[1] = 20
      func1_var2[2] = 60
      func1_var2[3] = 20
   else
      func1_var2[1] = 0
      func1_var2[2] = 40
      func1_var2[3] = 60
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Husi_Bow250005_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Husi_Bow250005_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Husi_Bow250005_Act03)
   local func1_var9 = {0, 0, 0, 0, 0, 0}
   local func1_var10 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var9)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var10, func1_var4)
end

Husi_Bow250005_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = 3000
   local func2_var4 = 3001
   local func2_var5 = ai:GetRandam_Int(2, 4)
   Shoot_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = 3000
   local func3_var4 = 3001
   local func3_var5 = ai:GetRandam_Int(1, 2)
   Shoot_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = 3000
   local func4_var4 = 3001
   local func4_var5 = ai:GetRandam_Int(1, 2)
   Shoot_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = 3000
   local func5_var4 = 3001
   local func5_var5 = ai:GetRandam_Int(1, 1)
   Shoot_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_Bow250005Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_Bow250005Battle_Terminate = function(ai, goal)
end

Husi_Bow250005Battle_Interupt = function(ai, goal)
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   local func8_var6 = ai:GetNpcThinkParamID()
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and func8_var6 == 250021 then
      local func8_var7 = 1812101
      local func8_var8 = 1812102
      if ai:IsInsideTargetRegion(TARGET_ENE_0, func8_var7) then
         goal:ClearSubGoal()
         ai:SetEventMoveTarget(func8_var8)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 1, TARGET_SELF, false, -1)
         return true
      end
   end
   local func8_var7 = 3
   local func8_var8 = 15
   local func8_var9 = 30
   local func8_var10 = 35
   local func8_var11 = 35
   local func8_var12 = 4
   if Damaged_Step(ai, goal, func8_var7, func8_var8, func8_var9, func8_var10, func8_var11, func8_var12) then
      return true
   end
   return false
end


