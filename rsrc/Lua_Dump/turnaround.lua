REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 0, "\136\218\147\174\145\206\143\219\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 1, "\145\206\143\219\130\204\149\251\140\252\129yType\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 2, "\138p\147x\129y\147x\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 3, "\149\224\130\173?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 4, "\142\245\150\189\130\197\144\172\140\247\129H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_TurnAround, 5, "\131K\129[\131hEzState\148\212\141\134", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_TurnAround, 0.1, 0.2)
TurnAround_Activate = function(ai, goal)
   local func1_var2 = goal:GetParam(0)
   local func1_var3 = goal:GetParam(1)
   local func1_var4 = goal:GetParam(3)
   local func1_var5 = goal:GetParam(5)
   if func1_var5 > 0 then
      goal:AddSubGoal(GOAL_COMMON_Guard, goal:GetLife(), func1_var5, func1_var2, 0, 0)
   end
   ai:TurnTo(func1_var2)
   local func1_var6 = ai:GetTurnAroundOptimizedDirection(func1_var2, func1_var3)
   ai:SetMoveLROnly(true)
   ai:MoveTo(TARGET_SELF, func1_var6, 10, func1_var4, 0)
   if func1_var6 == AI_DIR_TYPE_L then
      goal:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_L, func1_var2, 0)
   elseif func1_var6 == AI_DIR_TYPE_R then
      goal:AddGoalScopedTeamRecord(COORDINATE_TYPE_SideWalk_R, func1_var2, 0)
   end
end

TurnAround_Update = function(ai, goal, func2_param2)
   local func2_var3 = goal:GetParam(1)
   local func2_var4 = goal:GetParam(2)
   local func2_var5 = goal:GetParam(4)
   local func2_var6 = 999
   if ai:IsInsideTargetEx(targetType, TARGET_SELF, func2_var3, func2_var4, func2_var6) then
      return GOAL_RESULT_Success
   end
   if func2_var5 ~= 0 and goal:GetLife() <= 0 then
      return GOAL_RESULT_Success
   end
   if ai:CannotMove() then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

TurnAround_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TurnAround, true)
TurnAround_Interupt = function(ai, goal)
   return false
end


