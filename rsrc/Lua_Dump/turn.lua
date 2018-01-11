REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Turn, 0.2, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Turn, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Turn, 0, "\144\249\137\241\131^\129[\131Q\131b\131g", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Turn, 1, "\144\179\150\202\148\187\146\232\138p\147x", 0)
Turn_Update = function(ai, goal)
   local func1_var2 = goal:GetParam(0)
   if goal:GetParam(1) <= 0 then
      local func1_var3, func1_var3 = 10
   end
   ai:TurnTo(func1_var2)
   --[[ DECOMPILER ERROR 874: Confused about usage of registers ]]
end

Turn_Activate = function(ai, goal)
end

Turn_Terminate = function(ai, goal)
end

Turn_Interupt = function(ai, goal)
   return false
end


