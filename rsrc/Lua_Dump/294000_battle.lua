local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3
OnIf_294000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 and ai:IsRideLargeSpaceFlag(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None)
   end
end

Skeleton_baby294000Battle_Activate = function(ai, goal)
   if ai:HasSpecialEffectId(TARGET_SELF, 5111) then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 2, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0, 1.5), TARGET_SELF, 0, 0, 0)
   end
end

Skeleton_baby294000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Skeleton_baby294000Battle_Terminate = function(ai, goal)
end

Skeleton_baby294000Battle_Interupt = function(ai, goal)
   return false
end


