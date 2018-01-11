local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 0.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.3
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.1
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 0.8
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1.1
local localScriptConfigVar14 = 1
local localScriptConfigVar15 = 2.5
KajiyaAndre264000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var5 >= 4.2 then
      func1_var2[1] = 20
      func1_var2[2] = 80
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[6] = 0
   else
      func1_var2[1] = 0
      func1_var2[2] = 20
      func1_var2[3] = 20
      func1_var2[4] = 20
      func1_var2[5] = 20
      func1_var2[6] = 20
   end
   local func1_var7 = {localScriptConfigVar13, 0, 3006, DIST_Near}
   func1_var4[1] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, KajiyaAndre264000_Act02)
   func1_var3[2] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, KajiyaAndre264000_Act03)
   func1_var3[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, KajiyaAndre264000_Act04)
   func1_var3[4] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, KajiyaAndre264000_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, KajiyaAndre264000_Act06)
   func1_var3[6] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, KajiyaAndre264000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

KajiyaAndre264000_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar15
   local func2_var5 = localScriptConfigVar15 + 2
   local func2_var6 = 0
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3007, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

KajiyaAndre264000_Act03 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 2
   local func3_var7 = 0
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KajiyaAndre264000_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   local func4_var6 = localScriptConfigVar1
   local func4_var7 = localScriptConfigVar1 + 2
   local func4_var8 = 0
   Approach_Act(ai, goal, func4_var6, func4_var7, func4_var8)
   if func4_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
   end
   if func4_var5 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KajiyaAndre264000_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   local func5_var6 = localScriptConfigVar1
   local func5_var7 = localScriptConfigVar1 + 0
   local func5_var8 = 0
   Approach_Act(ai, goal, func5_var6, func5_var7, func5_var8)
   if func5_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Near, 0)
   end
   if func5_var5 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
   end
   Approach_Act(ai, goal, func5_var6, func5_var7, func5_var8)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Near, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KajiyaAndre264000_Act06 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(1, 100)
   local func6_var6 = ai:GetRandam_Int(1, 100)
   local func6_var7 = ai:GetRandam_Int(1, 100)
   local func6_var8 = ai:GetRandam_Int(1, 100)
   local func6_var9 = localScriptConfigVar1
   local func6_var10 = localScriptConfigVar1 + 2
   local func6_var11 = 0
   Approach_Act(ai, goal, func6_var9, func6_var10, func6_var11)
   if func6_var4 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
   elseif func6_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
   elseif func6_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Near, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KajiyaAndre264000_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(0, 100)
   local func7_var4 = ai:GetRandam_Int(0, 1)
   local func7_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func7_var4, TARGET_ENE_0, 2)
   if func7_var3 <= 30 and func7_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func7_var4, ai:GetRandam_Int(30, 45), true, true, -1)
   elseif func7_var3 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
   elseif func7_var3 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local func7_var6 = ai:GetRandam_Int(1, 100)
      if func7_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

KajiyaAndre264000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

KajiyaAndre264000Battle_Terminate = function(ai, goal)
end

KajiyaAndre264000Battle_Interupt = function(ai, goal)
   local func10_var2 = 3
   local func10_var3 = 35
   local func10_var4 = 30
   local func10_var5 = 35
   local func10_var6 = 35
   if FindAttack_Step(ai, goal, func10_var2, func10_var3, func10_var4, func10_var5, func10_var6) then
      return true
   end
   local func10_var7 = 3
   local func10_var8 = 25
   local func10_var9 = 30
   local func10_var10 = 35
   local func10_var11 = 35
   local func10_var12 = 4
   if Damaged_Step(ai, goal, func10_var7, func10_var8, func10_var9, func10_var10, func10_var11, func10_var12) then
      return true
   end
   local func10_var13 = 2
   local func10_var14 = 35
   local func10_var15 = ai:GetRandam_Int(1, 100)
   if GuardBreak_Act(ai, goal, func10_var13, func10_var14) then
      if func10_var15 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var16 = 5
   local func10_var17 = 30
   local func10_var18 = ai:GetRandam_Int(1, 100)
   if UseItem_Act(ai, goal, func10_var16, func10_var17) then
      if func10_var18 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var19 = 8.5
   local func10_var20 = 18
   local func10_var21 = 0
   local func10_var22 = 30
   local func10_var23 = ai:GetRandam_Int(1, 100)
   local func10_var24 = ai:GetRandam_Int(1, 100)
   local func10_var25 = Shoot_2dist(ai, goal, func10_var19, func10_var20, func10_var21, func10_var22)
   if func10_var25 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      return true
   elseif func10_var25 == 2 then
      if func10_var23 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         return true
      elseif func10_var23 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func10_var26 = 20
   local func10_var27 = 60
   local func10_var28 = 20
   local func10_var29 = 20
   local func10_var30 = 4
   if RebByOpGuard_Step(ai, goal, func10_var26, func10_var27, func10_var28, func10_var29, func10_var30) then
      return true
   end
   return false
end


