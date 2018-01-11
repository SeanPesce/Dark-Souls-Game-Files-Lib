local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.6
local localScriptConfigVar8 = 3.6
local localScriptConfigVar9 = 4.2
local localScriptConfigVar10 = 5.3
local localScriptConfigVar11 = 6.9
WhiteKnight_Ax241002Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var5 >= 5.3 then
      func1_var2[1] = 15
      func1_var2[2] = 5
      func1_var2[3] = 70
      func1_var2[4] = 0
      func1_var2[5] = 5
      func1_var2[9] = 5
   elseif func1_var5 >= 3.6 then
      func1_var2[1] = 45
      func1_var2[2] = 15
      func1_var2[3] = 0
      func1_var2[4] = 10
      func1_var2[5] = 15
      func1_var2[9] = 15
   else
      func1_var2[1] = 0
      func1_var2[2] = 35
      func1_var2[3] = 0
      func1_var2[4] = 15
      func1_var2[5] = 15
      func1_var2[9] = 35
   end
   local func1_var7 = {localScriptConfigVar9, 75, 3008, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Ax241002_Act02)
   func1_var3[2] = func1_var7
   func1_var7 = {localScriptConfigVar11, 75, 3009, DIST_Middle}
   func1_var4[3] = func1_var7
   func1_var7 = {localScriptConfigVar7, 75, 3006, DIST_Middle, 3004, DIST_Middle, nil}
   func1_var4[4] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Ax241002_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = {localScriptConfigVar5, 75, 20, 80, 3005, 3007, nil, nil}
   func1_var4[9] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Ax241002_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

WhiteKnight_Ax241002_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 75
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   if func2_var7 <= 50 then
      Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var8 <= 50 then
      Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Ax241002_Act05 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar3
   local func3_var5 = localScriptConfigVar3 + 2
   local func3_var6 = 75
   local func3_var7 = 3004
   local func3_var8 = DIST_Middle
   Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Ax241002_ActAfter_AdjustSpace = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetRandam_Int(0, 100)
   local func4_var4 = ai:GetRandam_Int(0, 1)
   local func4_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func4_var4, TARGET_ENE_0, 2)
   if func4_var3 <= 30 and func4_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func4_var4, ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func4_var3 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
   elseif func4_var3 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local func4_var6 = ai:GetRandam_Int(1, 100)
      if func4_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

WhiteKnight_Ax241002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

WhiteKnight_Ax241002Battle_Terminate = function(ai, goal)
end

WhiteKnight_Ax241002Battle_Interupt = function(ai, goal)
   local func7_var2 = ai:GetRandam_Int(1, 100)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetDist(TARGET_ENE_0)
   local func7_var6 = 3
   local func7_var7 = 10
   local func7_var8 = 30
   local func7_var9 = 60
   local func7_var10 = 20
   local func7_var11 = 20
   local func7_var12 = 3.5
   local func7_var13 = 50
   local func7_var14 = 25
   local func7_var15 = 4.5
   local func7_var16 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func7_var6, func7_var7, func7_var8, func7_var9, func7_var10, func7_var11, func7_var12, func7_var13, oddsSide, func7_var14, func7_var15, func7_var16) then
      return true
   end
   local func7_var17 = 2.5
   local func7_var18 = 70
   if GuardBreak_Act(ai, goal, func7_var17, func7_var18) then
      if func7_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var19 = 2.5
   local func7_var20 = 35
   if MissSwing_Int(ai, goal, func7_var19, func7_var20) then
      if func7_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var21 = 6.9
   local func7_var22 = 55
   if UseItem_Act(ai, goal, func7_var21, func7_var22) then
      if func7_var5 <= 5.2 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var23 = 5.2
   local func7_var24 = 18
   local func7_var25 = 40
   local func7_var26 = 50
   local func7_var27 = Shoot_2dist(ai, goal, func7_var23, func7_var24, func7_var25, func7_var26)
   if func7_var27 == 1 then
      if func7_var2 <= 80 then
         if func7_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func7_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   elseif func7_var27 == 2 then
      if func7_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
         return true
      elseif func7_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var28 = 35
   local func7_var29 = 60
   local func7_var30 = 20
   local func7_var31 = 20
   local func7_var32 = 3.5
   if RebByOpGuard_Step(ai, goal, func7_var28, func7_var29, func7_var30, func7_var31, func7_var32) then
      return true
   end
   local func7_var33 = 2.5
   local func7_var34 = 70
   if SuccessGuard_Act(ai, goal, func7_var33, func7_var34) then
      if func7_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


