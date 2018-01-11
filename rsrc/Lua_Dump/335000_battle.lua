WalkingTree335000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetHpRate(TARGET_SELF)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
end

WalkingTree335000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

WalkingTree335000Battle_Terminate = function(ai, goal)
end

WalkingTree335000Battle_Interupt = function(ai, goal)
   return false
end


