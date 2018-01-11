_COMMON_AddCautionAndFindGoal = function(ai, goal)
   local func1_var2 = 0
   local func1_var3 = 1
   local func1_var4 = 2
   local func1_var5 = 3
   local func1_var6 = 4
   local func1_var7 = 5
   local func1_var8 = ai:GetReplanningGoalAction()
   if func1_var8 == func1_var3 then
      ai:AddTopGoal(GOAL_COMMON_Stay, goal, 0, TARGET_ENE_0)
   elseif func1_var8 == func1_var4 then
      local func1_var9 = ai:GetDist(TARGET_ENE_0)
      if func1_var9 > 3 then
         ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, goal, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, true)
      else
         ai:AddTopGoal(GOAL_COMMON_Stay, goal, 0, TARGET_ENE_0)
      end
   elseif func1_var8 == func1_var5 then
      local func1_var9 = ai:GetDist(TARGET_ENE_0)
      if func1_var9 > 3 then
         ai:AddTopGoal(GOAL_COMMON_MoveToSomewhere, goal, TARGET_ENE_0, AI_DIR_TYPE_CENTER, 2.5, TARGET_SELF, false)
      else
         ai:AddTopGoal(GOAL_COMMON_Stay, goal, 0, TARGET_ENE_0)
      end
   elseif func1_var8 == func1_var7 then
      local func1_var9 = ai:GetDist(TARGET_ENE_0)
      if func1_var9 >= 13 then
         ai:AddTopGoal(GOAL_COMMON_Stay, 1, 0, TARGET_ENE_0)
      elseif func1_var9 >= 8 then
         ai:AddTopGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      else
         ai:AddTopGoal(GOAL_COMMON_LeaveTarget, goal, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      end
   elseif func1_var8 == func1_var6 then
      local func1_var9 = ai:GetReplanningGoalID()
      ai:AddTopGoal(func1_var9, goal)
   elseif not ai:HasTopSubgoal() then
      local func1_var9 = -1
      local func1_var10 = -1
      local func1_var11 = false
      local func1_var12 = false
      local func1_var13 = 0
      ai:AddTopGoal(GOAL_COMMON_NonBattleAct, func1_var9, func1_var10, func1_var11, func1_var12, POINT_INIT_POSE, func1_var13, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

_COMMON_AddBattleGoal = function(ai)
   local func2_var1 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
   if ai:IsChangeState() and ai:IsBattleState() and ai:TeamHelp_IsValidCall() then
      ai:AddTopGoal(GOAL_COMMON_TeamCallHelp, 10, TARGET_SELF)
      do break end
      if ai:IsCautionState() then
      elseif ai:TeamHelp_IsValidCall() then
         ai:AddTopGoal(GOAL_COMMON_TeamCallHelp, 10, TARGET_SELF)
      end
   end
   if ai:IsBattleState() then
      ai:ReqPlatoonState(PLATOON_STATE_Battle)
      ai:AddTopGoal(func2_var1, -1)
   elseif ai:IsCautionState() then
      ai:ReqPlatoonState(PLATOON_STATE_Caution)
      _COMMON_AddCautionAndFindGoal(ai, -1)
   else
      ai:ReqPlatoonState(PLATOON_STATE_Find)
      _COMMON_AddCautionAndFindGoal(ai, -1)
   end
end

_COMMON_SetBattleActLogic = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
   local func3_var4 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist)
   local func3_var5 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
   local func3_var6 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__nonBattleActLife)
   if ai:TeamHelp_IsValidReply() then
      local func3_var7 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ForgetTimeByArrival)
      ai:AddTopGoal(GOAL_COMMON_TeamReplyHelp, func3_var7)
      return true
   elseif ai:IsForceBattleGoal() then
      ai:ClearForceBattleGoal()
      ai:ReqPlatoonState(PLATOON_STATE_Battle)
      goal()
   else
      local func3_var7 = ai:IsSearchTarget(TARGET_ENE_0)
      if func3_var7 == true then
         local func3_var8 = ai:GetMovePointEffectRange()
         local func3_var9 = ai:GetDist(TARGET_ENE_0)
         if func3_var3 < func3_var8 then
            func3_param2(func3_var6, -1, false, false)
            return true
         elseif func3_var4 < func3_var8 then
            if func3_var9 < func3_var5 then
               ai:ReqPlatoonState(PLATOON_STATE_Battle)
               goal()
               return true
            else
               func3_param2(func3_var6, func3_var5, false, true)
               return true
            end
         elseif func3_var9 < func3_var4 then
            goal()
            return true
         else
            func3_param2(func3_var6, func3_var4, false, false)
            return true
         end
      else
         func3_param2(-1, -1, true, false)
         return true
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   return false
end

_COMMON_AddNonBattleGoal = function(ai, goal, func4_param2, func4_param3, func4_param4, func4_param5, func4_param6)
   ai:TeamHelp_ValidateCall()
   ai:TeamHelp_ValidateReply()
   ai:AddTopGoal(GOAL_COMMON_NonBattleAct, goal, func4_param2, false, func4_param4, POINT_INIT_POSE, func4_param5, 0, func4_param6)
end

_COMMON_EasySetup = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
   local func5_var4 = _COMMON_SetBattleActLogic
   local func5_var5 = ai
   func5_var4 = func5_var4(func5_var5, function()
      _COMMON_AddBattleGoal(ai)
   end, function(ai, goal, func7_param2, func7_param3)
      _COMMON_AddNonBattleGoal(ai, ai, goal, func7_param2, goal, func5_param2, func7_param3)
   end)
   func5_var5 = false
   if func5_var4 == func5_var5 then
      func5_var5(ai, GOAL_COMMON_NonBattleAct, -1, -1, true, 0, 0, POINT_INIT_POSE, 0)
      func5_var5 = ai:AddTopGoal
      --[[ DECOMPILER ERROR 1029: Confused about usage of registers for local variables ]]
end

COMMON_EasySetup3 = function(ai)
   _COMMON_EasySetup(ai, false, 0)
end

COMMON_EzSetup = function(ai)
   _COMMON_EasySetup(ai, false, 0)
end


