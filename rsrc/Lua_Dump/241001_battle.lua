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
WhiteKnight_Lar_Sw241001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var5 >= 6.7 then
      func1_var2[1] = 32
      func1_var2[2] = 10
      func1_var2[3] = 32
      func1_var2[4] = 6
      func1_var2[5] = 10
      func1_var2[6] = 10
   elseif func1_var5 >= 4.4 then
      func1_var2[1] = 0
      func1_var2[2] = 25
      func1_var2[3] = 20
      func1_var2[4] = 10
      func1_var2[5] = 25
      func1_var2[6] = 20
   else
      func1_var2[1] = 0
      func1_var2[2] = 45
      func1_var2[3] = 0
      func1_var2[4] = 10
      func1_var2[5] = 20
      func1_var2[6] = 40
   end
   local func1_var7 = {localScriptConfigVar7, 75, 3010, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Lar_Sw241001_Act02)
   func1_var3[2] = func1_var7
   func1_var7 = {localScriptConfigVar9, 75, 3011, DIST_Middle}
   func1_var4[3] = func1_var7
   func1_var7 = {localScriptConfigVar11, 75, 3012, DIST_Middle, 3007, DIST_Middle, nil}
   func1_var4[4] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Lar_Sw241001_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Lar_Sw241001_Act06)
   func1_var3[6] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, WhiteKnight_Lar_Sw241001_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

WhiteKnight_Lar_Sw241001_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 75
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   if func2_var7 <= 30 then
      if func2_var8 <= 30 then
         Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      elseif func2_var8 <= 70 then
         Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func2_var7 <= 70 then
      if func2_var8 <= 33 then
         Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      elseif func2_var8 <= 66 then
         Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func2_var8 <= 50 then
      Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Lar_Sw241001_Act05 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar5
   local func3_var5 = localScriptConfigVar5 + 2
   local func3_var6 = 75
   local func3_var7 = 3007
   local func3_var8 = DIST_Middle
   Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Lar_Sw241001_Act06 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar3
   local func4_var5 = localScriptConfigVar3 + 2
   local func4_var6 = 75
   local func4_var7 = ai:GetRandam_Int(1, 100)
   local func4_var8 = ai:GetRandam_Int(1, 100)
   if func4_var7 <= 30 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   elseif func4_var8 <= 33 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func4_var8 <= 66 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Lar_Sw241001_ActAfter_AdjustSpace = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetRandam_Int(0, 100)
   local func5_var4 = ai:GetRandam_Int(0, 1)
   local func5_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func5_var4, TARGET_ENE_0, 2)
   if func5_var3 <= 30 and func5_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func5_var4, ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func5_var3 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
   elseif func5_var3 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local func5_var6 = ai:GetRandam_Int(1, 100)
      if func5_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

WhiteKnight_Lar_Sw241001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

WhiteKnight_Lar_Sw241001Battle_Terminate = function(ai, goal)
end

WhiteKnight_Lar_Sw241001Battle_Interupt = function(ai, goal)
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   local func8_var6 = 3
   local func8_var7 = 8
   local func8_var8 = 30
   local func8_var9 = 60
   local func8_var10 = 20
   local func8_var11 = 20
   local func8_var12 = 3.5
   local func8_var13 = 50
   local func8_var14 = 25
   local func8_var15 = 4.5
   local func8_var16 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func8_var6, func8_var7, func8_var8, func8_var9, func8_var10, func8_var11, func8_var12, func8_var13, oddsSide, func8_var14, func8_var15, func8_var16) then
      return true
   end
   local func8_var17 = 3.6
   local func8_var18 = 70
   if GuardBreak_Act(ai, goal, func8_var17, func8_var18) then
      if func8_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var19 = 3.6
   local func8_var20 = 30
   if MissSwing_Int(ai, goal, func8_var19, func8_var20) then
      if func8_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var21 = 8.3
   local func8_var22 = 60
   if UseItem_Act(ai, goal, func8_var21, func8_var22) then
      if func8_var5 <= 6.4 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var23 = 6.4
   local func8_var24 = 18
   local func8_var25 = 40
   local func8_var26 = 50
   local func8_var27 = Shoot_2dist(ai, goal, func8_var23, func8_var24, func8_var25, func8_var26)
   if func8_var27 == 1 then
      if func8_var2 <= 80 then
         if func8_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func8_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   elseif func8_var27 == 2 then
      if func8_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
         return true
      elseif func8_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var28 = 30
   local func8_var29 = 60
   local func8_var30 = 20
   local func8_var31 = 20
   local func8_var32 = 3.5
   if RebByOpGuard_Step(ai, goal, func8_var28, func8_var29, func8_var30, func8_var31, func8_var32) then
      return true
   end
   local func8_var33 = 3.6
   local func8_var34 = 70
   if SuccessGuard_Act(ai, goal, func8_var33, func8_var34) then
      if func8_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


