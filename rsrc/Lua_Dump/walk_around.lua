WalkAround_Activate = function(ai, goal)
   local func1_var2 = goal:GetParam(0)
   local func1_var3 = ai:GetRandam_Int(0, 1)
   local func1_var4 = 1.5
   local func1_var5 = 1
   local func1_var6 = 10
   if func1_var3 == 0 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_F, func1_var4, TARGET_SELF, func1_var5)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_R, func1_var4, TARGET_SELF, func1_var5)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_B, func1_var4, TARGET_SELF, func1_var5)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_L, func1_var4, TARGET_SELF, func1_var5)
   else
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_B, func1_var4, TARGET_SELF, func1_var5)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_L, func1_var4, TARGET_SELF, func1_var5)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_F, func1_var4, TARGET_SELF, func1_var5)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var6, POINT_INITIAL, AI_DIR_TYPE_R, func1_var4, TARGET_SELF, func1_var5)
   end
end

WalkAround_Update = function(ai, goal)
   if ai:IsSearchTarget(TARGET_ENE_0) == true and ai:GetDist(TARGET_ENE_0) < goal:GetParam(0) then
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

WalkAround_Terminate = function(ai, goal)
end

WalkAround_Interupt = function(ai, goal)
   return false
end


