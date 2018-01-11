husi_Runaway10002_Logic = function(ai)
   local func1_var1 = ai:GetEventRequest()
   if func1_var1 == 10 then
      ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
   else
      COMMON_EasySetup3(ai)
   end
end

common_DoObjAct10001_Interupt = function(ai, goal)
end


