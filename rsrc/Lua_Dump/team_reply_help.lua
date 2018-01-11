TeamReplyHelp_Activate = function(ai, goal)
   local func1_var2 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MinWaitTime)
   local func1_var3 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_MaxWaitTime)
   local func1_var4 = ai:GetRandam_Float(func1_var2, func1_var3)
   goal:AddSubGoal(GOAL_COMMON_Wait, func1_var4, TARGET_SELF)
   ai:TeamHelp_Reply()
   local func1_var5 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyActionId)
   if func1_var5 ~= -1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), func1_var5, TARGET_FRI_0, DIST_None)
   end
   local func1_var6 = 0
   local func1_var7 = 1
   local func1_var8 = 2
   local func1_var9 = 3
   local func1_var10 = 4
   local func1_var11 = 5
   local func1_var12 = 6
   local func1_var13 = 7
   local func1_var14 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ReplyBehaviorType)
   if func1_var14 == func1_var6 then
      local func1_var15 = ai:GetDist(TARGET_FRI_0)
      if func1_var15 > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif func1_var14 == func1_var7 then
      local func1_var15 = ai:GetDist(TARGET_FRI_0)
      if func1_var15 > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif func1_var14 == func1_var8 then
      local func1_var15 = ai:GetDist(TARGET_FRI_0)
      if func1_var15 > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif func1_var14 == func1_var9 then
      local func1_var15 = ai:GetDist(TARGET_FRI_0)
      if func1_var15 > 3 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), TARGET_FRI_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, TARGET_FRI_0)
      end
   elseif func1_var14 == func1_var10 then
   elseif func1_var14 == func1_var11 then
   elseif func1_var14 == func1_var12 then
      local func1_var15 = ai:GetDist(POINT_AI_FIXED_POS)
      if func1_var15 > 2 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, POINT_AI_FIXED_POS)
      end
   elseif func1_var14 == func1_var13 then
      local func1_var15 = ai:GetDist(POINT_AI_FIXED_POS)
      if func1_var15 > 2 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), POINT_AI_FIXED_POS, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         goal:AddSubGoal(GOAL_COMMON_Stay, goal:GetLife(), 0, POINT_AI_FIXED_POS)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

TeamReplyHelp_Update = function(ai, goal)
end

TeamReplyHelp_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TeamReplyHelp, true)
TeamReplyHelp_Interupt = function(ai, goal)
   return false
end


