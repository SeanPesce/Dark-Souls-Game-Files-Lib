OnIf_255006 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

HusiHeavy_Bow_only255006Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = ai:GetHpRate(TARGET_SELF)
   local func2_var7 = ai:GetNpcThinkParamID()
   if func2_var6 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var5 >= 20 then
         func2_var2[1] = 25
         func2_var2[2] = 0
         func2_var2[3] = 0
         func2_var2[4] = 75
      elseif func2_var5 >= 10 then
         func2_var2[1] = 15
         func2_var2[2] = 10
         func2_var2[3] = 0
         func2_var2[4] = 75
      elseif func2_var5 >= 4.5 then
         func2_var2[1] = 0
         func2_var2[2] = 15
         func2_var2[3] = 10
         func2_var2[4] = 75
      elseif func2_var5 >= 3 then
         func2_var2[1] = 0
         func2_var2[2] = 15
         func2_var2[3] = 35
         func2_var2[4] = 50
      else
         func2_var2[1] = 0
         func2_var2[2] = 0
         func2_var2[3] = 65
         func2_var2[4] = 35
      end
   elseif func2_var5 >= 20 then
      func2_var2[1] = 100
   elseif func2_var5 >= 10 then
      func2_var2[1] = 70
      func2_var2[2] = 30
   elseif func2_var5 >= 5 then
      func2_var2[2] = 60
      func2_var2[3] = 40
   else
      func2_var2[3] = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, HusiHeavy_Bow_only255006_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, HusiHeavy_Bow_only255006_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, HusiHeavy_Bow_only255006_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, HusiHeavy_Bow_only255006_Act04)
   local func2_var8 = {0, 100, 0, 0, 0, 0, 0}
   local func2_var9 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func2_var8)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var9, func2_var4)
end

HusiHeavy_Bow_only255006_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetNpcThinkParamID()
   if func3_var5 == 255004 then
      if func3_var4 <= 50 then
         local func3_var6 = 3000
         local func3_var7 = 3001
         local func3_var8 = ai:GetRandam_Int(2, 5)
         Shoot_Act(ai, goal, func3_var6, func3_var7, func3_var8)
      else
         local func3_var6 = 3002
         local func3_var7 = 3003
         local func3_var8 = ai:GetRandam_Int(2, 5)
         Shoot_Act(ai, goal, func3_var6, func3_var7, func3_var8)
      end
   else
      local func3_var6 = 3000
      local func3_var7 = 3001
      local func3_var8 = ai:GetRandam_Int(2, 5)
      Shoot_Act(ai, goal, func3_var6, func3_var7, func3_var8)
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow_only255006_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetNpcThinkParamID()
   if func4_var5 == 255004 then
      if func4_var4 <= 50 then
         local func4_var6 = 3000
         local func4_var7 = 3001
         local func4_var8 = ai:GetRandam_Int(2, 5)
         Shoot_Act(ai, goal, func4_var6, func4_var7, func4_var8)
      else
         local func4_var6 = 3002
         local func4_var7 = 3003
         local func4_var8 = ai:GetRandam_Int(2, 5)
         Shoot_Act(ai, goal, func4_var6, func4_var7, func4_var8)
      end
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   else
      local func4_var6 = 3000
      local func4_var7 = 3001
      local func4_var8 = ai:GetRandam_Int(2, 5)
      Shoot_Act(ai, goal, func4_var6, func4_var7, func4_var8)
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow_only255006_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetNpcThinkParamID()
   if func5_var5 == 255004 then
      if func5_var4 <= 50 then
         local func5_var6 = 3000
         local func5_var7 = 3001
         local func5_var8 = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, func5_var6, func5_var7, func5_var8)
      else
         local func5_var6 = 3002
         local func5_var7 = 3003
         local func5_var8 = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, func5_var6, func5_var7, func5_var8)
      end
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
   else
      local func5_var6 = 3000
      local func5_var7 = 3001
      local func5_var8 = ai:GetRandam_Int(1, 3)
      Shoot_Act(ai, goal, func5_var6, func5_var7, func5_var8)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow_only255006_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow_only255006Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Bow_only255006Battle_Terminate = function(ai, goal)
end

HusiHeavy_Bow_only255006Battle_Interupt = function(ai, goal)
   local func9_var2 = ai:GetRandam_Int(1, 100)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   local func9_var6 = 3
   local func9_var7 = 10
   local func9_var8 = 50
   local func9_var9 = 25
   local func9_var10 = 25
   if FindAttack_Step(ai, goal, func9_var6, func9_var7, func9_var8, func9_var9, func9_var10) then
      return true
   end
   local func9_var11 = 3
   local func9_var12 = 15
   local func9_var13 = 50
   local func9_var14 = 25
   local func9_var15 = 25
   local func9_var16 = 4
   if Damaged_Step(ai, goal, func9_var11, func9_var12, func9_var13, func9_var14, func9_var15, func9_var16) then
      return true
   end
   return false
end


