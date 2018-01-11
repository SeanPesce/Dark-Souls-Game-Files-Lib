CrystalLizard330000Battle_Activate = function(ai, goal)
   local func1_var2 = 6
   if 0 == ai:GetNumber(0) then
      goal:AddSubGoal(GOAL_CrystalLizard330000_Runaway, func1_var2)
   end
   goal:AddSubGoal(GOAL_CrystalLizard330000_Hide, 10)
end

CrystalLizard330000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CrystalLizard330000Battle_Terminate = function(ai, goal)
end

CrystalLizard330000Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Damaged) or ai:IsInterupt(INTERUPT_Damaged_Stranger) then
      ai:Replaning()
      ai:SetNumber(0, 0)
   end
   return false
end

REGISTER_GOAL_NO_INTERUPT(GOAL_CrystalLizard330000_Runaway, true)
CrystalLizard330000Runaway_Activate = function(ai, goal)
   local func5_var2 = goal:GetLife()
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func5_var2, TARGET_ENE_0, 100, TARGET_SELF, false, -1)
end

CrystalLizard330000Runaway_Update = function(ai, goal)
   if goal:GetLastSubGoalResult() == GOAL_RESULT_Failed then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

CrystalLizard330000Runaway_Terminate = function(ai, goal)
end

CrystalLizard330000Runaway_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL_NO_UPDATE(GOAL_CrystalLizard330000_Hide, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_CrystalLizard330000_Hide, true)
CrystalLizard330000Hide_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
   local func9_var2 = goal:GetLife()
   goal:AddSubGoal(GOAL_COMMON_Wait, func9_var2, TARGET_ENE_0)
   ai:SetNumber(0, 1)
end

CrystalLizard330000Hide_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CrystalLizard330000Hide_Terminate = function(ai, goal)
end

CrystalLizard330000Hide_Interupt = function(ai, goal)
   return false
end


