Pisaca_Sisters333001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   if func1_var2 >= 5 then
      func1_var7 = 0
      func1_var8 = 0
      func1_var9 = 100
   elseif func1_var2 >= 1.5 then
      func1_var7 = 85
      func1_var8 = 15
      func1_var9 = 0
   else
      func1_var7 = 15
      func1_var8 = 85
      func1_var9 = 0
   end
   local func1_var10 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9)
   if func1_var10 <= func1_var7 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2), TARGET_NONE, 0, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 5), TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   elseif func1_var10 <= func1_var7 + func1_var8 then
      local func1_var11 = Find_far_Point(ai, goal)
      ai:SetEventMoveTarget(func1_var11)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, POINT_EVENT, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 3), TARGET_NONE, 0, 0, 0)
   end
end

Find_far_Point = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   ai:SetEventMoveTarget(1702745)
   local func2_var3 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1702746)
   local func2_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1702747)
   local func2_var5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1702748)
   local func2_var6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   if minDist == func2_var3 then
      do break end
   end
   if minDist == func2_var4 then
      do break end
   end
   if minDist == func2_var5 then
      do break end
   end
   return FarPoint
end

Pisaca_Sisters333001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Pisaca_Sisters333001Battle_Terminate = function(ai, goal)
end

Pisaca_Sisters333001Battle_Interupt = function(ai, goal)
   return false
end


