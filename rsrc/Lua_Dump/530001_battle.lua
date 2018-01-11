JarEel_Inactive530001Battle_Activate = function(ai, goal)
   local actionChance = {}
   local action = {}
   local basicAttackConfig = {}
   Common_Clear_Param(actionChance, action, basicAttackConfig)
   local dist = ai:GetDist(TARGET_ENE_0)
   local event = ai:GetEventRequest(0)
   actionChance[1] = 100
   action[1] = REGIST_FUNC(ai, goal, JarEelInactive530001_Act01)
   local adjustSpaceFunc = REGIST_FUNC(ai, goal, JarEelInactive530001_Act01)
   Common_Battle_Activate(ai, goal, actionChance, action, adjustSpaceFunc, basicAttackConfig)
end

JarEelInactive530001_Act01 = function(ai, goal, something)
   local direction = ai:GetRandam_Int(0, 1)
   local dist_min = 5
   local dist_max = 20
   local point_type = POINT_NearMovePoint
   local life = 10
   local unknown = 1
   if direction == 0 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_F, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_R, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_B, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_L, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
   else
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_B, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_L, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_F, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, life, point_type, AI_DIR_TYPE_R, ai:GetRandam_Float(dist_min, dist_max), TARGET_SELF, unknown)
   end
end


