local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 4.7
local localScriptConfigVar2 = 5
local localScriptConfigVar3 = 7.8
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.9
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.9
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4.1
local localScriptConfigVar12 = 6
local localScriptConfigVar13 = 7.7
WhiteKnight_Spear241003Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   ai:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 80, 9)
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      if func1_var5 >= 8 then
         func1_var2[4] = 20
      elseif func1_var5 >= 5.5 then
         func1_var2[4] = 80
      else
         func1_var2[4] = 150
      end
   end
   if func1_var5 >= 8 then
      func1_var2[1] = 85
      func1_var2[2] = 5
      func1_var2[3] = 5
      func1_var2[9] = 5
   elseif func1_var5 >= 5.5 then
      func1_var2[1] = 30
      func1_var2[2] = 35
      func1_var2[3] = 15
      func1_var2[9] = 20
   else
      func1_var2[1] = 0
      func1_var2[2] = 40
      func1_var2[3] = 25
      func1_var2[9] = 35
   end
   local func1_var7 = {localScriptConfigVar3, 100, 3003, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = {localScriptConfigVar1, 100, 10, 30, nil, nil, nil, nil}
   func1_var4[2] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Spear241003_Act03)
   func1_var3[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Spear241003_Act04)
   func1_var3[4] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Spear241003_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Spear241003_Act06)
   func1_var3[6] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Spear241003_Act09)
   func1_var3[9] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Spear241003_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

WhiteKnight_Spear241003_Act03 = function(ai, goal, func2_param2)
   local func2_var3 = localScriptConfigVar5
   local func2_var4 = localScriptConfigVar5 + 2
   local func2_var5 = 90
   local func2_var6 = 3004
   local func2_var7 = DIST_Middle
   Approach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 60)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Spear241003_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar9
   local func3_var6 = localScriptConfigVar9 + 2
   local func3_var7 = 90
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Spear241003_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar11
   local func4_var5 = localScriptConfigVar11 + 2
   local func4_var6 = 90
   local func4_var7 = 3008
   local func4_var8 = DIST_Middle
   Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Spear241003_Act06 = function(ai, goal, func5_param2)
   local func5_var3 = localScriptConfigVar13
   local func5_var4 = localScriptConfigVar13 + 2
   local func5_var5 = 90
   local func5_var6 = 3009
   local func5_var7 = DIST_Middle
   Approach_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Spear241003_Act09 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar7
   local func6_var6 = localScriptConfigVar7 + 2
   local func6_var7 = 90
   local func6_var8 = 3006
   local func6_var9 = DIST_Middle
   Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   if func6_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 60)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 60)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Spear241003_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
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

WhiteKnight_Spear241003Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

WhiteKnight_Spear241003Battle_Terminate = function(ai, goal)
end

WhiteKnight_Spear241003Battle_Interupt = function(ai, goal)
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
   local func10_var17 = 2.5
   local func10_var18 = 35
   if MissSwing_Int(ai, goal, func10_var17, func10_var18) then
      if func10_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var19 = 7.5
   local func10_var20 = 55
   if UseItem_Act(ai, goal, func10_var19, func10_var20) then
      if func10_var5 <= 5.8 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var21 = 5.8
   local func10_var22 = 18
   local func10_var23 = 40
   local func10_var24 = 50
   local func10_var25 = Shoot_2dist(ai, goal, func10_var21, func10_var22, func10_var23, func10_var24)
   if func10_var25 == 1 then
      if func10_var2 <= 80 then
         if func10_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func10_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   elseif func10_var25 == 2 then
      if func10_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         return true
      elseif func10_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var26 = 40
   local func10_var27 = 50
   local func10_var28 = 25
   local func10_var29 = 25
   local func10_var30 = 3.5
   if RebByOpGuard_Step(ai, goal, func10_var26, func10_var27, func10_var28, func10_var29, func10_var30) then
      return true
   end
   local func10_var31 = 2.5
   local func10_var32 = 70
   if SuccessGuard_Act(ai, goal, func10_var31, func10_var32) then
      if func10_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   if ai:IsInsideObserve(0) and ai:IsFinishTimer(0) == true and func10_var5 <= 7.7 then
      goal:ClearSubGoal()
      ai:SetTimer(0, 18)
      if func10_var5 >= 4.1 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


