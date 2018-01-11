REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 0, "\136\218\147\174\145\206\143\219", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 1, "\147\158\146B\148\187\146\232\139\151\151\163", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 2, "\144\249\137\241\145\206\143\219", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 3, "\149\224\130\173?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 4, "\131K\129[\131hEzState\148\212\141\134", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 5, "\136\218\147\174\149\251\140\252", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachSettingDirection, 6, "\142w\146\232\149\251\140\252\130\214\130\204\139\151\151\163", 0)
REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_ApproachSettingDirection, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachSettingDirection, true)
ApproachSettingDirection_Activate = function(ai, goal)
   local func1_var2 = goal:GetLife()
   local func1_var3 = goal:GetParam(0)
   local func1_var4 = goal:GetParam(1)
   local func1_var5 = goal:GetParam(2)
   local func1_var6 = goal:GetParam(3)
   local func1_var7 = goal:GetParam(4)
   local func1_var8 = goal:GetParam(5)
   local func1_var9 = goal:GetParam(6)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var2, func1_var3, func1_var8, func1_var4, func1_var5, func1_var6, func1_var8, func1_var9)
   if func1_var7 > 0 then
      local func1_var10 = ai:GetDist(func1_var3)
      if func1_var4 < func1_var10 then
         ai:DoEzAction(func1_var2, func1_var7)
      end
   end
end

ApproachSettingDirection_Update = function(ai, goal, func2_param2)
end

ApproachSettingDirection_Terminate = function(ai, goal)
end

ApproachSettingDirection_Interupt = function(ai, goal)
   return false
end


