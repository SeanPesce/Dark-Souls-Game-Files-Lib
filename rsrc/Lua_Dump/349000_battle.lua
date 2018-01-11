DriftItemGood349000Battle_Activate = function(ai, goal)
   local func1_var2 = 6
   if 0 == ai:GetNumber(0) then
      goal:AddSubGoal(GOAL_DriftItemGood349000_Runaway, func1_var2)
   end
   goal:AddSubGoal(GOAL_DriftItemGood349000_Hide, 10)
end

DriftItemGood349000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DriftItemGood349000Battle_Terminate = function(ai, goal)
end

DriftItemGood349000Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(4, 8)
   if ai:IsInterupt(INTERUPT_Damaged) or ai:IsInterupt(INTERUPT_Damaged_Stranger) then
      ai:Replaning()
      ai:SetNumber(0, 0)
   end
   if ai:IsFinishTimer(2) == true and func4_var2 <= 30 then
      goal:ClearSubGoal()
      ai:SetTimer(2, func4_var3)
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_SELF, DIST_NONE, 0)
      return true
   end
   return false
end

REGISTER_GOAL_NO_INTERUPT(GOAL_DriftItemGood349000_Runaway, true)
DriftItemGood349000Runaway_Activate = function(ai, goal)
   local func5_var2 = goal:GetLife()
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func5_var2, TARGET_ENE_0, 100, TARGET_SELF, false, -1)
end

DriftItemGood349000Runaway_Update = function(ai, goal)
   if goal:GetLastSubGoalResult() == GOAL_RESULT_Failed then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

DriftItemGood349000Runaway_Terminate = function(ai, goal)
end

DriftItemGood349000Runaway_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL_NO_UPDATE(GOAL_DriftItemGood349000_Hide, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_DriftItemGood349000_Hide, true)
DriftItemGood349000Hide_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_None, 0)
   local func9_var2 = goal:GetLife()
   goal:AddSubGoal(GOAL_COMMON_Wait, func9_var2, TARGET_ENE_0)
   ai:SetNumber(0, 1)
end

DriftItemGood349000Hide_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DriftItemGood349000Hide_Terminate = function(ai, goal)
end

DriftItemGood349000Hide_Interupt = function(ai, goal)
   return false
end


