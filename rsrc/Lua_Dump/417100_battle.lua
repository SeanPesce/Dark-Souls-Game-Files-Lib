local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.5
OnIf_417100 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      HumanityM417100_ActAfter(ai, goal)
   end
end

HumanityM417100Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetHpRate(TARGET_SELF)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = 1
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
      func2_var2[10] = 100
   elseif func2_var6 >= 2 then
      func2_var2[2] = 100
   else
      func2_var2[1] = 100
   end
   func2_var3[1] = REGIST_FUNC(ai, goal, HumanityM417100_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, HumanityM417100_Act02)
   func2_var3[10] = REGIST_FUNC(ai, goal, HumanityM417100_Act10)
   local func2_var10 = REGIST_FUNC(ai, goal, HumanityM417100_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var10, func2_var4)
end

HumanityM417100_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1 + 0
   local func3_var5 = localScriptConfigVar1 + 0
   local func3_var6 = 0
   local func3_var7 = localScriptConfigVar1 + 0
   local func3_var8 = ai:GetRandam_Int(1, 100)
   local func3_var9 = ai:GetRandam_Int(1, 100)
   if func3_var8 <= 80 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 3)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HumanityM417100_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar1 + 0
   local func4_var5 = localScriptConfigVar1 + 0
   local func4_var6 = 0
   local func4_var7 = localScriptConfigVar1 + 0
   local func4_var8 = ai:GetRandam_Int(1, 100)
   local func4_var9 = ai:GetRandam_Int(1, 100)
   if func4_var8 <= 60 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6, 3)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func4_var7, 0, 90)
   elseif func4_var8 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 1, 4, TARGET_ENE_0, true, -1)
   elseif func4_var8 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, bRight, ai:GetRandam_Int(120, 120), true, true, -1)
   elseif func4_var8 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_SELF, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HumanityM417100_Act10 = function(ai, goal, func5_param2)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HumanityM417100_ActAfter = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(0, 1)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   if func6_var5 <= 2 then
      if func6_var3 <= 10 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func6_var4, ai:GetRandam_Int(120, 120), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
      end
   elseif func6_var5 <= 5 then
      if func6_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func6_var4, ai:GetRandam_Int(120, 120), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 7, TARGET_SELF, true, -1)
      end
   elseif func6_var3 <= 100 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 4, TARGET_ENE_0, func6_var4, ai:GetRandam_Int(120, 120), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

HumanityM417100_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

HumanityM417100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HumanityM417100Battle_Terminate = function(ai, goal)
end

HumanityM417100Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 20
   local func10_var7 = 100
   if UseItem_Act(ai, goal, func10_var6, func10_var7) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
      return true
   end
   local func10_var8 = 10
   local func10_var9 = 30
   local func10_var10 = 100
   local func10_var11 = 100
   local func10_var12 = Shoot_2dist(ai, goal, func10_var8, func10_var9, func10_var10, func10_var11)
   local func10_var13 = ai:GetRandam_Int(0, 1)
   if func10_var12 == 1 then
      if func10_var2 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
      elseif func10_var2 <= 85 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func10_var13, ai:GetRandam_Int(60, 90), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3001, TARGET_ENE_0, DIST_None, 0, 90)
      end
      return true
   elseif func10_var12 == 2 then
      if func10_var2 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
      elseif func10_var2 <= 100 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, func10_var13, ai:GetRandam_Int(60, 90), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3001, TARGET_ENE_0, DIST_None, 0, 90)
      end
      return true
   end
   return false
end


