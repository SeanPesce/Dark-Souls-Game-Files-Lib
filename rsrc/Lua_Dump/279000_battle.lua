local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.7
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.6
local localScriptConfigVar6 = 4.1
local localScriptConfigVar7 = 6.2
BlackKnight_Sword279000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   local func1_var7 = 1
   if ai:IsRideEdgeFlag(TARGET_SELF) or ai:IsRideEdgeFlag(TARGET_ENE_0) then
      func1_var7 = 0
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      if func1_var5 >= 8 then
         func1_var2[4] = 20
      elseif func1_var5 >= 4.1 then
         func1_var2[4] = 80
      else
         func1_var2[4] = 150
      end
   end
   if func1_var5 >= 8 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[5] = 90 * func1_var7
   elseif func1_var5 >= 4.1 then
      func1_var2[1] = 20
      func1_var2[2] = 45
      func1_var2[5] = 35 * func1_var7
      func1_var2[6] = 5
   elseif func1_var5 >= 1.7 then
      func1_var2[1] = 30
      func1_var2[2] = 45
      func1_var2[5] = 0
      func1_var2[6] = 25
   else
      func1_var2[1] = 20
      func1_var2[2] = 35
      func1_var2[5] = 0
      func1_var2[6] = 45
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act02)
   func1_var3[4] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_Act06)
   local func1_var8 = REGIST_FUNC(ai, goal, BlackKnight_Sword279000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

BlackKnight_Sword279000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar3
   local func2_var5 = localScriptConfigVar3 + 2
   local func2_var6 = 75
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar1
   local func3_var4 = localScriptConfigVar1 + 2
   local func3_var5 = 75
   Approach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   local func3_var6 = ai:GetRandam_Int(1, 100)
   if func3_var6 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var6 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var6 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar5
   local func4_var6 = localScriptConfigVar5 + 2
   local func4_var7 = 75
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = localScriptConfigVar7
   local func5_var4 = localScriptConfigVar7 + 2
   local func5_var5 = 75
   Approach_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_Act06 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = 1.5
   local func6_var6 = 3.5
   local func6_var7 = 75
   Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 45, 0, 0)
   if func6_var4 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 30)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 60)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackKnight_Sword279000_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(0, 100)
   local func7_var4 = ai:GetRandam_Int(0, 1)
   local func7_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func7_var4, TARGET_ENE_0, 2)
   if func7_var3 <= 20 and func7_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func7_var4, ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func7_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
   elseif func7_var3 <= 37 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif func7_var3 <= 45 then
      local func7_var6 = ai:GetRandam_Int(1, 100)
      if func7_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

BlackKnight_Sword279000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BlackKnight_Sword279000Battle_Terminate = function(ai, goal)
end

BlackKnight_Sword279000Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 3
   local func10_var7 = 25
   local func10_var8 = 30
   local func10_var9 = 60
   local func10_var10 = 20
   local func10_var11 = 20
   local func10_var12 = 3.5
   local func10_var13 = 50
   local func10_var14 = 25
   local func10_var15 = 4.5
   local func10_var16 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func10_var6, func10_var7, func10_var8, func10_var9, func10_var10, func10_var11, func10_var12, func10_var13, oddsSide, func10_var14, func10_var15, func10_var16) then
      return true
   end
   local func10_var17 = 2.7
   local func10_var18 = 30
   if MissSwing_Int(ai, goal, func10_var17, func10_var18) then
      if func10_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var19 = 6.2
   local func10_var20 = 60
   if UseItem_Act(ai, goal, func10_var19, func10_var20) then
      if func10_var5 <= 4 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      elseif not ai:IsRideEdgeFlag(TARGET_SELF) and not ai:IsRideEdgeFlag(TARGET_ENE_0) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var21 = 6
   local func10_var22 = 18
   local func10_var23 = 40
   local func10_var24 = 50
   local func10_var25 = Shoot_2dist(ai, goal, func10_var21, func10_var22, func10_var23, func10_var24)
   if func10_var25 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func10_var25 == 2 then
      if func10_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      elseif func10_var2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func10_var26 = 35
   local func10_var27 = 60
   local func10_var28 = 20
   local func10_var29 = 20
   local func10_var30 = 3.5
   if RebByOpGuard_Step(ai, goal, func10_var26, func10_var27, func10_var28, func10_var29, func10_var30) then
      return true
   end
   return false
end


