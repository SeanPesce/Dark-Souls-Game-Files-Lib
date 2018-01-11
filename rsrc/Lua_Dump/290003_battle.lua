local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.2
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.5
local localScriptConfigVar8 = 3.5
local localScriptConfigVar9 = 6.5
Sk_Fal_non_screw290003Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      func1_var2[3] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 10
      func1_var2[2] = 15
      func1_var2[3] = 5
      func1_var2[4] = 0
      func1_var2[7] = 70
      func1_var2[8] = 0
   elseif func1_var5 >= 3.5 then
      func1_var2[1] = 15
      func1_var2[2] = 20
      func1_var2[3] = 15
      func1_var2[4] = 0
      func1_var2[7] = 30
      func1_var2[8] = 20
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 20
      func1_var2[2] = 35
      func1_var2[3] = 20
      func1_var2[4] = 0
      func1_var2[7] = 0
      func1_var2[8] = 25
   else
      func1_var2[1] = 10
      func1_var2[2] = 30
      func1_var2[3] = 20
      func1_var2[4] = 40
      func1_var2[7] = 0
      func1_var2[8] = 0
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Sk_Fal_non_screw290003_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Sk_Fal_non_screw290003_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Sk_Fal_non_screw290003_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, Sk_Fal_non_screw290003_Act04)
   local func1_var6 = {localScriptConfigVar9, 75, 3008, DIST_Middle}
   func1_var4[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Sk_Fal_non_screw290003_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

Sk_Fal_non_screw290003_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = localScriptConfigVar5
   local func2_var4 = localScriptConfigVar5 + 2
   local func2_var5 = 80
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Sk_Fal_non_screw290003_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar1
   local func3_var4 = localScriptConfigVar1 + 2
   local func3_var5 = 80
   local func3_var6 = ai:GetDist(TARGET_ENE_0)
   local func3_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   if func3_var7 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var7 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Sk_Fal_non_screw290003_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = localScriptConfigVar3
   local func4_var4 = localScriptConfigVar3 + 2
   local func4_var5 = 80
   local func4_var6 = ai:GetDist(TARGET_ENE_0)
   local func4_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Sk_Fal_non_screw290003_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 2
   local func5_var7 = 80
   local func5_var8 = 3005
   local func5_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var5, func5_var6, func5_var7, func5_var8, func5_var9)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Sk_Fal_non_screw290003_ActAfter_AdjustSpace = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(0, 1)
   local func6_var6 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func6_var5, TARGET_ENE_0, 2)
   if func6_var4 <= 10 then
   elseif func6_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0)
      return true
   elseif func6_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0)
      return true
   elseif func6_var4 <= 80 and func6_var6 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func6_var5, ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      return true
   end
   return false
end

Sk_Fal_non_screw290003Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Sk_Fal_non_screw290003Battle_Terminate = function(ai, goal)
end

Sk_Fal_non_screw290003Battle_Interupt = function(ai, goal)
   local func9_var2 = ai:GetRandam_Int(1, 100)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func9_var6 = 3
   local func9_var7 = 60
   local func9_var8 = 4
   local func9_var9 = 60
   if Parry_Act(ai, goal, func9_var6, func9_var7, func9_var8, func9_var9) then
      return true
   end
   local func9_var10 = 3
   local func9_var11 = 25
   local func9_var12 = 50
   local func9_var13 = 40
   local func9_var14 = 30
   local func9_var15 = 30
   local func9_var16 = 3.5
   local func9_var17 = 50
   local func9_var18 = 4.5
   local func9_var19 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func9_var10, func9_var11, func9_var12, func9_var13, func9_var14, func9_var15, func9_var16, func9_var17, func9_var18, func9_var19) then
      return true
   end
   local func9_var20 = 3
   local func9_var21 = 25
   local func9_var22 = 50
   local func9_var23 = 40
   local func9_var24 = 30
   local func9_var25 = 30
   local func9_var26 = 3.5
   local func9_var27 = 50
   local func9_var28 = 4.5
   local func9_var29 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func9_var20, func9_var21, func9_var22, func9_var23, func9_var24, func9_var25, func9_var26, func9_var27, func9_var28, func9_var29) then
      return true
   end
   local func9_var30 = 3.1
   local func9_var31 = 50
   if MissSwing_Int(ai, goal, func9_var30, func9_var31) then
      if func9_var5 <= 2.2 then
         if func9_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local func9_var32 = 6.5
   local func9_var33 = 5
   if UseItem_Act(ai, goal, func9_var32, func9_var33) then
      if func9_var5 <= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var34 = 6
   local func9_var35 = 18
   local func9_var36 = 20
   local func9_var37 = 30
   local func9_var38 = Shoot_2dist(ai, goal, func9_var34, func9_var35, func9_var36, func9_var37)
   if func9_var38 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func9_var38 == 2 then
      if func9_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         return true
      elseif func9_var2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func9_var39 = 20
   local func9_var40 = 40
   local func9_var41 = 30
   local func9_var42 = 30
   local func9_var43 = 3.5
   if RebByOpGuard_Step(ai, goal, func9_var39, func9_var40, func9_var41, func9_var42, func9_var43) then
      return true
   end
   return false
end


