HusibitoKojiki251000_Logic = function(ai)
   local func1_var1 = ai:GetEventRequest(0)
   if func1_var1 == 1 then
      ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 0, TARGET_SELF, false, -1)
   else
      COMMON_EasySetup3(ai)
   end
end

HusibitoKojiki251000_Interupt = function(ai, goal)
end


