Nanimosinai11000Battle_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_NONE, 0, 0, 0)
end

Nanimosinai11000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Nanimosinai11000Battle_Terminate = function(ai, goal)
end

Nanimosinai11000Battle_Interupt = function(ai, goal)
   return false
end


