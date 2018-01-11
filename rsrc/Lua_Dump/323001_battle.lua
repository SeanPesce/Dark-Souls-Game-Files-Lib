local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 100
Kagerou_m17_323001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   if func1_var3 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0)
      if func1_var4 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None)
      elseif func1_var4 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, TARGET_ENE_0, DIST_None)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_None)
      end
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 100, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 10, TARGET_SELF, true)
   else
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 100, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 10, TARGET_SELF, true)
   end
end

Kagerou_m17_323001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kagerou_m17_323001Battle_Terminate = function(ai, goal)
end

Kagerou_m17_323001Battle_Interupt = function(ai, goal)
   return false
end


