local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.5
local localScriptConfigVar4 = 3
local localScriptConfigVar5 = 3.9
local localScriptConfigVar6 = 5
local localScriptConfigVar7 = 15
OnIf_252000 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

Husi_robber252000Battle_Activate = function(ai, goal)
   local func2_var2 = 0
   local func2_var3 = 5
   local func2_var4 = 30
   ObserveAreaForBackstab(ai, goal, func2_var2, func2_var3, func2_var4)
   local func2_var5 = {}
   local func2_var6 = {}
   local func2_var7 = {}
   Common_Clear_Param(func2_var5, func2_var6, func2_var7)
   local func2_var8 = ai:GetDist(TARGET_ENE_0)
   local func2_var9 = ai:GetHpRate(TARGET_SELF)
   if ai:IsLadderAct(TARGET_SELF) then
      func2_var5[3] = 100
   elseif func2_var9 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var8 >= 4.5 then
         func2_var5[7] = 300
      elseif func2_var8 >= 3 then
         func2_var5[7] = 100
      else
         func2_var5[7] = 50
      end
   end
   if ai:IsLadderAct(TARGET_SELF) then
      func2_var5[3] = 100
   elseif func2_var8 >= 8 then
      func2_var5[1] = 20
      func2_var5[2] = 5
      func2_var5[3] = 5
      func2_var5[5] = 65
      func2_var5[8] = 0
      func2_var5[9] = 5
   elseif func2_var8 >= 5 then
      func2_var5[1] = 50
      func2_var5[2] = 10
      func2_var5[3] = 10
      func2_var5[5] = 20
      func2_var5[8] = 0
      func2_var5[9] = 10
   elseif func2_var8 >= 3 then
      func2_var5[1] = 50
      func2_var5[2] = 20
      func2_var5[3] = 10
      func2_var5[5] = 0
      func2_var5[8] = 0
      func2_var5[9] = 20
   else
      func2_var5[1] = 0
      func2_var5[2] = 40
      func2_var5[3] = 0
      func2_var5[5] = 0
      func2_var5[8] = 30
      func2_var5[9] = 30
   end
   func2_var6[1] = REGIST_FUNC(ai, goal, Husi_robber252000_Act01)
   func2_var6[2] = REGIST_FUNC(ai, goal, Husi_robber252000_Act02)
   local func2_var10 = {localScriptConfigVar3, 0, 3003, DIST_Middle}
   func2_var7[3] = func2_var10
   func2_var10 = REGIST_FUNC
   func2_var10 = func2_var10(ai, goal, Husi_robber252000_Act05)
   func2_var6[5] = func2_var10
   func2_var10 = REGIST_FUNC
   func2_var10 = func2_var10(ai, goal, Husi_robber252000_Act07)
   func2_var6[7] = func2_var10
   func2_var10 = REGIST_FUNC
   func2_var10 = func2_var10(ai, goal, Husi_robber252000_Act09)
   func2_var6[9] = func2_var10
   func2_var10 = {0, 60, 10, 10, 20, 0}
   local func2_var11 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func2_var10)
   Common_Battle_Activate(ai, goal, func2_var5, func2_var6, func2_var11, func2_var7)
end

Husi_robber252000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar5
   local func3_var6 = localScriptConfigVar5 + 2
   local func3_var7 = 100
   local func3_var8 = 3005
   local func3_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func3_var5, func3_var6, func3_var7, func3_var8, func3_var9)
   if func3_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      GetWellSpace_Odds = 0
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Husi_robber252000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar1
   local func4_var6 = localScriptConfigVar1 + 2
   local func4_var7 = 100
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func4_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif func4_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

Husi_robber252000_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar6
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 2
   local func5_var7 = 100
   Approach_or_Leave_Act(ai, goal, func5_var4, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_None)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_robber252000_Act07 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   if func6_var3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Husi_robber252000_Act09 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar3
   local func7_var6 = localScriptConfigVar3 + 2
   local func7_var7 = 100
   Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 80
   return GetWellSpace_Odds
end

Husi_robber252000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_robber252000Battle_Terminate = function(ai, goal)
end

Husi_robber252000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 3
   local func10_var7 = 25
   local func10_var8 = 40
   local func10_var9 = 30
   local func10_var10 = 30
   if FindAttack_Step(ai, goal, func10_var6, func10_var7, func10_var8, func10_var9, func10_var10) then
      return true
   end
   local func10_var11 = 3
   local func10_var12 = 35
   local func10_var13 = 40
   local func10_var14 = 30
   local func10_var15 = 30
   local func10_var16 = 4
   if Damaged_Step(ai, goal, func10_var11, func10_var12, func10_var13, func10_var14, func10_var15, func10_var16) then
      return true
   end
   local func10_var17 = 3.9
   local func10_var18 = 70
   local func10_var19 = ai:GetRandam_Int(1, 100)
   local func10_var20 = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, func10_var17, func10_var18) then
      if func10_var20 >= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var21 = 3.9
   local func10_var22 = 50
   local func10_var23 = ai:GetDist(TARGET_ENE_0)
   if MissSwing_Int(ai, goal, func10_var21, func10_var22) then
      if func10_var23 >= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var24 = 3.9
   local func10_var25 = 30
   local func10_var26 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func10_var24, func10_var25) then
      if func10_var26 >= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var27 = 35
   local func10_var28 = 40
   local func10_var29 = 30
   local func10_var30 = 30
   local func10_var31 = 4
   if RebByOpGuard_Step(ai, goal, func10_var27, func10_var28, func10_var29, func10_var30, func10_var31) then
      return true
   end
   local func10_var32 = 5
   local func10_var33 = 18
   local func10_var34 = 0
   local func10_var35 = 50
   local func10_var36 = ai:GetRandam_Int(1, 100)
   local func10_var37 = ai:GetRandam_Int(1, 100)
   local func10_var38 = ai:GetDist(TARGET_ENE_0)
   local func10_var39 = Shoot_2dist(ai, goal, func10_var32, func10_var33, func10_var34, func10_var35)
   if func10_var39 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func10_var39 == 2 then
      if func10_var36 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         return true
      elseif func10_var36 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func10_var40 = 3
   local func10_var41 = 60
   if SuccessGuard_Act(ai, goal, func10_var40, func10_var41) then
      if func10_var38 <= 1.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var42 = 3
   local func10_var43 = 60
   local func10_var44 = 4
   local func10_var45 = 60
   if Parry_Act(ai, goal, func10_var42, func10_var43, func10_var44, func10_var45) then
      return true
   end
   local func10_var46 = 0
   local func10_var47 = 1
   local func10_var48 = 0
   local func10_var49 = 20
   if Backstab_Act(ai, goal, func10_var46, func10_var47, func10_var48, func10_var49) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   end
   return false
end


