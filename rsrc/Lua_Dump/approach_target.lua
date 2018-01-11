REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 0, "\136\218\147\174\145\206\143\219", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 1, "\147\158\146B\148\187\146\232\139\151\151\163", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 2, "\144\249\137\241\145\206\143\219", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 3, "\149\224\130\173?", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ApproachTarget, 4, "\131K\129[\131hEzState\148\212\141\134", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ApproachTarget, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ApproachTarget, true)
ApproachTarget_Activate = function(ai, goal)
   local func1_var2 = goal:GetLife()
   local func1_var3 = goal:GetParam(0)
   local func1_var4 = goal:GetParam(1)
   local func1_var5 = goal:GetParam(2)
   local func1_var6 = goal:GetParam(3)
   local func1_var7 = goal:GetParam(4)
   local func1_var8 = AI_DIR_TYPE_CENTER
   local func1_var9 = 0
   local func1_var10 = goal:GetParam(5)
   local func1_var11 = goal:GetParam(6)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, func1_var2, func1_var3, func1_var8, func1_var4, func1_var5, func1_var6, func1_var8, func1_var9)
   if func1_var7 > 0 then
      local func1_var12 = ai:GetDist(func1_var3)
      if func1_var4 < func1_var12 then
         ai:DoEzAction(func1_var2, func1_var7)
      end
   end
end

ApproachTarget_Update = function(ai, goal, func2_param2)
   local func2_var3 = goal:GetParam(4)
   if func2_var3 > 0 then
      if ai:IsInterupt(INTERUPT_Damaged) then
         return GOAL_RESULT_Failed
      elseif ai:IsInterupt(INTERUPT_SuccessGuard) then
         local func2_var4 = goal:GetParam(5)
         if func2_var4 ~= GOAL_RESULT_Continue then
            return func2_var4
         end
      end
   end
   if goal:GetLife() <= 0 then
      if goal:GetParam(6) then
         return GOAL_RESULT_Success
      else
         return GOAL_RESULT_Failed
      end
   end
   return GOAL_RESULT_Continue
end

ApproachTarget_Terminate = function(ai, goal)
end

ApproachTarget_Interupt = function(ai, goal)
   return false
end


