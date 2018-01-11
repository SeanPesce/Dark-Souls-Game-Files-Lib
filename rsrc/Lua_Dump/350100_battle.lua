Wisp350100Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   if goal:GetNumber(0) == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None, 0)
   elseif func1_var2 >= 20 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   elseif func1_var2 >= 6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 5.5, TARGET_SELF, true, -1)
   elseif func1_var2 >= 3.5 then
      goal:SetNumber(0, 1)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3.4, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None, 0)
   end
end

Wisp350100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Wisp350100Battle_Terminate = function(ai, goal)
end

Wisp350100Battle_Interupt = function(ai, goal)
   return false
end


