OnIf_352005 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   if func1_param2 == 0 then
      local func1_var7 = Find_Nearest_Point(ai, goal)
      ai:SetEventMoveTarget(func1_var7)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 5, TARGET_SELF, false, -1)
   end
end

wyvern352005Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 23, TARGET_SELF, false, 17)
   if func2_var3 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_None, 0, 180)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 180)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 0, 180)
end

Find_Nearest_Point = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetNpcThinkParamID()
   if func3_var3 == 352005 then
      ai:SetEventMoveTarget(1602720)
      local func3_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1602721)
      local func3_var5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1602722)
      local func3_var6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      local func3_var7 = math.min(func3_var4, func3_var5, func3_var6)
      if func3_var7 == func3_var4 then
         NearPoint = 1602720
      elseif func3_var7 == func3_var5 then
         NearPoint = 1602721
      elseif func3_var7 == func3_var6 then
         NearPoint = 1602722
      else
         ai:SetEventMoveTarget(1602730)
         local func3_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
         ai:SetEventMoveTarget(1602731)
         local func3_var5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
         ai:SetEventMoveTarget(1602732)
         local func3_var6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
         local func3_var7 = math.min(func3_var4, func3_var5, func3_var6)
         if func3_var7 == func3_var4 then
            NearPoint = 1602730
         elseif func3_var7 == func3_var5 then
            NearPoint = 1602731
         elseif func3_var7 == func3_var6 then
            NearPoint = 1602732
         end
      end
      -- Tried to add an 'end' here but it's incorrect
      return NearPoint
end

wyvern352005Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

wyvern352005Battle_Terminate = function(ai, goal)
end

wyvern352005Battle_Interupt = function(ai, goal)
   return false
end


