Wataa1540_Logic = function(ai)
   ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, 5, POINT_AutoWalkAroundTest, AI_DIR_TYPE_CENTER, 1, TARGET_LOCALPLAYER, false)
end

Wataa1540_Interupt = function(ai, goal)
   if ai:DbgAutoRemo_IsWaitCommand() then
      goal:ClearSubGoal()
      local func2_var2 = ai:DbgAutoRemo_GetWaitCommandTime()
      ai:AddTopGoal(GOAL_COMMON_Wait, func2_var2, TARGET_NONE, 0, 0, 0)
      ai:DbgAutoRemo_ResetWaitCommand()
      return true
   end
   return false
end


