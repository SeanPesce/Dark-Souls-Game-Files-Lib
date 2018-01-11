local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 2.5
local localScriptConfigVar7 = 4.1
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.8
OnIf_255001 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

HusiHeavy_Long255001Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = ai:GetHpRate(TARGET_SELF)
   local func2_var7 = ai:GetEventRequest(3)
   if func2_var7 == 1 then
      func2_var2[8] = 100
   elseif func2_var6 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var5 >= 4.5 then
         func2_var2[7] = 10
         func2_var2[2] = 5
         func2_var2[1] = 5
         func2_var2[3] = 5
         func2_var2[4] = 0
         func2_var2[5] = 75
      elseif func2_var5 >= 3 then
         func2_var2[7] = 10
         func2_var2[2] = 15
         func2_var2[1] = 15
         func2_var2[3] = 10
         func2_var2[4] = 0
         func2_var2[5] = 50
      else
         func2_var2[7] = 0
         func2_var2[2] = 20
         func2_var2[1] = 15
         func2_var2[3] = 20
         func2_var2[4] = 10
         func2_var2[5] = 35
      end
   elseif func2_var5 >= 8 then
      func2_var2[7] = 80
      func2_var2[2] = 10
      func2_var2[1] = 10
      func2_var2[3] = 0
      func2_var2[4] = 0
   elseif func2_var5 >= 4 then
      func2_var2[7] = 50
      func2_var2[2] = 20
      func2_var2[1] = 20
      func2_var2[3] = 10
      func2_var2[4] = 0
   elseif func2_var5 >= 2.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[7] = 15
         func2_var2[2] = 10
         func2_var2[1] = 10
         func2_var2[3] = 15
         func2_var2[4] = 50
      else
         func2_var2[7] = 30
         func2_var2[2] = 30
         func2_var2[1] = 30
         func2_var2[3] = 10
         func2_var2[4] = 0
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func2_var2[7] = 0
      func2_var2[2] = 10
      func2_var2[1] = 10
      func2_var2[3] = 10
      func2_var2[4] = 70
   else
      func2_var2[7] = 0
      func2_var2[2] = 40
      func2_var2[1] = 20
      func2_var2[3] = 40
      func2_var2[4] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func2_var8 = {localScriptConfigVar3, 75, 3003, DIST_Middle, nil}
   func2_var4[1] = func2_var8
   func2_var8 = REGIST_FUNC
   func2_var8 = func2_var8(ai, goal, HusiHeavy_Long255001_Act02)
   func2_var3[2] = func2_var8
   func2_var8 = {localScriptConfigVar5, 75, 3004, DIST_Middle, nil}
   func2_var4[3] = func2_var8
   func2_var8 = {localScriptConfigVar9, 75, 3009, DIST_Middle, 3004, DIST_Middle, nil}
   func2_var4[4] = func2_var8
   func2_var8 = REGIST_FUNC
   func2_var8 = func2_var8(ai, goal, HusiHeavy_Long255001_Act05)
   func2_var3[5] = func2_var8
   func2_var8 = REGIST_FUNC
   func2_var8 = func2_var8(ai, goal, HusiHeavy_Long255001_Act07)
   func2_var3[7] = func2_var8
   func2_var8 = REGIST_FUNC
   func2_var8 = func2_var8(ai, goal, HusiHeavy_Long255001_Act08)
   func2_var3[8] = func2_var8
   func2_var8 = {100, 60, 10, 10, 0, 10, 10}
   local func2_var9 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func2_var8)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var9, func2_var4)
end

HusiHeavy_Long255001_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 2
   local func3_var7 = 75
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Long255001_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   if func4_var3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Long255001_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 2
   local func5_var7 = 75
   local func5_var8 = 3005
   local func5_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var5, func5_var6, func5_var7, func5_var8, func5_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Long255001_Act08 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(1, 100)
   local func6_var6 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Long255001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Long255001Battle_Terminate = function(ai, goal)
end

HusiHeavy_Long255001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func9_var2 = ai:GetRandam_Int(1, 100)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   local func9_var6 = ai:GetEventRequest(3)
   local func9_var7 = 3
   local func9_var8 = 15
   local func9_var9 = 30
   local func9_var10 = 40
   local func9_var11 = 30
   local func9_var12 = 30
   local func9_var13 = 3.5
   local func9_var14 = 50
   local func9_var15 = 3.5
   local func9_var16 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func9_var7, func9_var8, func9_var9, func9_var10, func9_var11, func9_var12, func9_var13, func9_var14, func9_var15, func9_var16) then
      return true
   end
   local func9_var17 = 3
   local func9_var18 = 15
   local func9_var19 = 30
   local func9_var20 = 40
   local func9_var21 = 30
   local func9_var22 = 30
   local func9_var23 = 3.5
   local func9_var24 = 50
   local func9_var25 = 3.5
   local func9_var26 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func9_var17, func9_var18, func9_var19, func9_var20, func9_var21, func9_var22, func9_var23, func9_var24, func9_var25, func9_var26) then
      return true
   end
   local func9_var27 = 2
   local func9_var28 = 30
   if GuardBreak_Act(ai, goal, func9_var27, func9_var28) then
      if func9_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var29 = 10.5
   local func9_var30 = 18
   local func9_var31 = 10
   local func9_var32 = 15
   local func9_var33 = Shoot_2dist(ai, goal, func9_var29, func9_var30, func9_var31, func9_var32)
   if func9_var33 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func9_var33 == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   end
   local func9_var34 = 4.1
   local func9_var35 = 50
   if not func9_var6 == 1 and MissSwing_Int(ai, goal, func9_var34, func9_var35) then
      if func9_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var36 = 20
   local func9_var37 = 40
   local func9_var38 = 30
   local func9_var39 = 30
   local func9_var40 = 3.5
   if RebByOpGuard_Step(ai, goal, func9_var36, func9_var37, func9_var38, func9_var39, func9_var40) then
      return true
   end
   local func9_var41 = 2
   local func9_var42 = 30
   if SuccessGuard_Act(ai, goal, func9_var41, func9_var42) then
      if func9_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


