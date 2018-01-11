TopGoal_Activate = function(ai, goal)
end

TopGoal_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TopGoal_Terminate = function(ai, goal)
end

TopGoal_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_CANNOT_MOVE) then
      local func4_var2 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
      if ai:IsTouchBreakableObject() and func4_var2 >= 0 and ai:IsLookToTarget(POINT_CurrRequestPosition, 90) then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, func4_var2, TARGET_NONE, DIST_None)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_CANNOT_MOVE_DisableInterupt) then
      local func4_var2 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
      if ai:IsTouchBreakableObject() and func4_var2 >= 0 and ai:IsLookToTarget(POINT_CurrRequestPosition, 90) then
         goal:AddSubGoal_Front(GOAL_COMMON_NonspinningAttack, -1, func4_var2, TARGET_NONE, DIST_None)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_HitEnemyWall) then
      local func4_var2 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__BackHomeLife_OnHitEnemyWall)
      if func4_var2 > 0 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_BackToHome, func4_var2, 0)
         return true
      end
   end
   return false
end


