local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 4.1
local localScriptConfigVar4 = 1.6
local localScriptConfigVar5 = 3.7
local localScriptConfigVar6 = 6.5
local localScriptConfigVar7 = 8.3
local localScriptConfigVar8 = 4.4
local localScriptConfigVar9 = 6.7
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.7
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 3
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 3
BlackKnight_Lar_Sw279001Battle_Activate = function(ai, goal)
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
      if func1_var5 >= 7 then
         func1_var2[4] = 20
      elseif func1_var5 >= 3 then
         func1_var2[4] = 80
      else
         func1_var2[4] = 150
      end
   end
   if func1_var5 >= 6.7 then
      func1_var2[1] = 25 * func1_var7
      func1_var2[2] = 10
      func1_var2[3] = 24 * func1_var7
      func1_var2[5] = 10
      func1_var2[6] = 10
      func1_var2[7] = 10
      func1_var2[8] = 5
   elseif func1_var5 >= 4.4 then
      func1_var2[1] = 0 * func1_var7
      func1_var2[2] = 15
      func1_var2[3] = 15 * func1_var7
      func1_var2[5] = 15
      func1_var2[6] = 20
      func1_var2[7] = 15
      func1_var2[8] = 10
   elseif func1_var5 >= 3 then
      func1_var2[1] = 0
      func1_var2[2] = 15
      func1_var2[3] = 0
      func1_var2[5] = 15
      func1_var2[6] = 25
      func1_var2[7] = 15
      func1_var2[8] = 15
   else
      func1_var2[1] = 0
      func1_var2[2] = 20
      func1_var2[3] = 0
      func1_var2[5] = 15
      func1_var2[6] = 15
      func1_var2[7] = 20
      func1_var2[8] = 20
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, BlackKnight_Lar_Sw279001_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, BlackKnight_Lar_Sw279001_Act02)
   local func1_var8 = {localScriptConfigVar9, 75, 3011, DIST_Middle}
   func1_var4[3] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, BlackKnight_Lar_Sw279001_Act04)
   func1_var3[4] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, BlackKnight_Lar_Sw279001_Act05)
   func1_var3[5] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, BlackKnight_Lar_Sw279001_Act06)
   func1_var3[6] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, BlackKnight_Lar_Sw279001_Act07)
   func1_var3[7] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, BlackKnight_Lar_Sw279001_Act08)
   func1_var3[8] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, BlackKnight_Lar_Sw279001_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

BlackKnight_Lar_Sw279001_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar7
   local func2_var5 = localScriptConfigVar7 + 2
   local func2_var6 = 75
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, -1, 30)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Lar_Sw279001_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1
   local func3_var5 = localScriptConfigVar1 + 2
   local func3_var6 = 75
   local func3_var7 = ai:GetRandam_Int(1, 100)
   local func3_var8 = ai:GetRandam_Int(1, 100)
   local func3_var9 = localScriptConfigVar1
   local func3_var10 = localScriptConfigVar1 + 2
   local func3_var11 = 75
   Approach_Act(ai, goal, func3_var9, func3_var10, func3_var11)
   if func3_var7 <= 30 then
      if func3_var8 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      elseif func3_var8 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func3_var7 <= 70 then
      if func3_var8 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      elseif func3_var8 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func3_var8 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Lar_Sw279001_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar11
   local func4_var6 = localScriptConfigVar11 + 2
   local func4_var7 = 75
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3012, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Lar_Sw279001_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = localScriptConfigVar5
   local func5_var4 = localScriptConfigVar5 + 2
   local func5_var5 = 75
   Approach_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Lar_Sw279001_Act06 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar3
   local func6_var6 = localScriptConfigVar3 + 2
   local func6_var7 = 75
   Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   if func6_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   elseif func6_var4 <= 33 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func6_var4 <= 66 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Lar_Sw279001_Act07 = function(ai, goal, func7_param2)
   local func7_var3 = localScriptConfigVar13
   local func7_var4 = localScriptConfigVar13 + 2
   local func7_var5 = 75
   Approach_Act(ai, goal, func7_var3, func7_var4, func7_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Lar_Sw279001_Act08 = function(ai, goal, func8_param2)
   local func8_var3 = localScriptConfigVar15
   local func8_var4 = localScriptConfigVar15 + 2
   local func8_var5 = 75
   Approach_Act(ai, goal, func8_var3, func8_var4, func8_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackKnight_Lar_Sw279001_ActAfter_AdjustSpace = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetRandam_Int(0, 100)
   local func9_var4 = ai:GetRandam_Int(0, 1)
   local func9_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func9_var4, TARGET_ENE_0, 2)
   if func9_var3 <= 20 and func9_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func9_var4, ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func9_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
   elseif func9_var3 <= 37 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif func9_var3 <= 45 then
      local func9_var6 = ai:GetRandam_Int(1, 100)
      if func9_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

BlackKnight_Lar_Sw279001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BlackKnight_Lar_Sw279001Battle_Terminate = function(ai, goal)
end

BlackKnight_Lar_Sw279001Battle_Interupt = function(ai, goal)
   local func12_var2 = ai:GetRandam_Int(1, 100)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = ai:GetDist(TARGET_ENE_0)
   local func12_var6 = 3
   local func12_var7 = 25
   local func12_var8 = 30
   local func12_var9 = 60
   local func12_var10 = 20
   local func12_var11 = 20
   local func12_var12 = 3.5
   local func12_var13 = 50
   local func12_var14 = 25
   local func12_var15 = 4.5
   local func12_var16 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func12_var6, func12_var7, func12_var8, func12_var9, func12_var10, func12_var11, func12_var12, func12_var13, oddsSide, func12_var14, func12_var15, func12_var16) then
      return true
   end
   local func12_var17 = 3.6
   local func12_var18 = 30
   if MissSwing_Int(ai, goal, func12_var17, func12_var18) then
      if func12_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func12_var19 = 8.3
   local func12_var20 = 60
   if UseItem_Act(ai, goal, func12_var19, func12_var20) then
      if func12_var5 <= 6.4 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      elseif not ai:IsRideEdgeFlag(TARGET_SELF) and not ai:IsRideEdgeFlag(TARGET_ENE_0) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func12_var21 = 6
   local func12_var22 = 18
   local func12_var23 = 40
   local func12_var24 = 50
   local func12_var25 = Shoot_2dist(ai, goal, func12_var21, func12_var22, func12_var23, func12_var24)
   if func12_var25 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func12_var25 == 2 then
      if func12_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      elseif func12_var2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func12_var26 = 30
   local func12_var27 = 60
   local func12_var28 = 20
   local func12_var29 = 20
   local func12_var30 = 3.5
   if RebByOpGuard_Step(ai, goal, func12_var26, func12_var27, func12_var28, func12_var29, func12_var30) then
      return true
   end
   return false
end


