local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.1
local localScriptConfigVar2 = 3.5
local localScriptConfigVar3 = 5.5
local localScriptConfigVar4 = 1.5
local localScriptConfigVar5 = 2.4
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.3
OnIf_256002 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

LightKnight_Rapier256002Battle_Activate = function(ai, goal)
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
      func2_var5[2] = 100
   elseif func2_var9 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var8 >= 4.5 then
         func2_var5[1] = 0
         func2_var5[2] = 15
         func2_var5[3] = 10
         func2_var5[4] = 75
         func2_var5[7] = 0
         func2_var5[8] = 0
      elseif func2_var8 >= 3 then
         func2_var5[1] = 7
         func2_var5[2] = 20
         func2_var5[3] = 8
         func2_var5[4] = 50
         func2_var5[7] = 15
         func2_var5[8] = 0
      else
         func2_var5[1] = 0
         func2_var5[2] = 35
         func2_var5[3] = 20
         func2_var5[4] = 35
         func2_var5[7] = 0
         func2_var5[8] = 10
      end
   elseif func2_var8 >= 8 then
      func2_var5[1] = 0
      func2_var5[2] = 15
      func2_var5[3] = 15
      func2_var5[7] = 70
      func2_var5[8] = 0
   elseif func2_var8 >= 3.5 then
      func2_var5[1] = 15
      func2_var5[2] = 40
      func2_var5[3] = 15
      func2_var5[7] = 30
      func2_var5[8] = 0
   elseif func2_var8 >= 1.5 then
      func2_var5[1] = 35
      func2_var5[2] = 35
      func2_var5[3] = 15
      func2_var5[7] = 0
      func2_var5[8] = 25
   else
      func2_var5[1] = 0
      func2_var5[2] = 65
      func2_var5[3] = 20
      func2_var5[7] = 0
      func2_var5[8] = 15
   end
   -- Tried to add an 'end' here but it's incorrect
   local func2_var10 = {localScriptConfigVar5, 75, 3004, DIST_Middle, nil}
   func2_var7[1] = func2_var10
   func2_var10 = {localScriptConfigVar1, 75, 10, 30, nil, nil, nil, nil}
   func2_var7[2] = func2_var10
   func2_var10 = {localScriptConfigVar7, 100, 3005, DIST_Middle, nil}
   func2_var7[3] = func2_var10
   func2_var10 = REGIST_FUNC
   func2_var10 = func2_var10(ai, goal, LightKnight_Rapier256002_Act04)
   func2_var6[4] = func2_var10
   func2_var10 = {localScriptConfigVar3, 75, 3003, DIST_Middle, nil}
   func2_var7[7] = func2_var10
   func2_var10 = {nil}
   func2_var7[8] = func2_var10
   func2_var10 = {100, 60, 5, 5, 0, 15, 15}
   local func2_var11 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func2_var10)
   Common_Battle_Activate(ai, goal, func2_var5, func2_var6, func2_var11, func2_var7)
end

LightKnight_Rapier256002_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   if func3_var3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 2.5)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

LightKnight_Rapier256002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LightKnight_Rapier256002Battle_Terminate = function(ai, goal)
end

LightKnight_Rapier256002Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = 3
   local func6_var7 = 25
   local func6_var8 = 20
   local func6_var9 = 60
   local func6_var10 = 20
   local func6_var11 = 20
   local func6_var12 = 2.8
   local func6_var13 = 50
   local func6_var14 = 3.5
   local func6_var15 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10, func6_var11, func6_var12, func6_var13, func6_var14, func6_var15) then
      return true
   end
   local func6_var16 = 3
   local func6_var17 = 25
   local func6_var18 = 40
   local func6_var19 = 60
   local func6_var20 = 20
   local func6_var21 = 20
   local func6_var22 = 2.8
   local func6_var23 = 50
   local func6_var24 = 3.5
   local func6_var25 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func6_var16, func6_var17, func6_var18, func6_var19, func6_var20, func6_var21, func6_var22, func6_var23, func6_var24, func6_var25) then
      return true
   end
   local func6_var26 = 2.1
   local func6_var27 = 30
   if GuardBreak_Act(ai, goal, func6_var26, func6_var27) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func6_var28 = 5.5
   local func6_var29 = 60
   if MissSwing_Int(ai, goal, func6_var28, func6_var29) then
      if func6_var5 <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var30 = 8
   local func6_var31 = 15
   if UseItem_Act(ai, goal, func6_var30, func6_var31) then
      if func6_var5 <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var32 = 4.5
   local func6_var33 = 13
   local func6_var34 = 0
   local func6_var35 = 50
   local func6_var36 = ai:GetRandam_Int(1, 100)
   local func6_var37 = ai:GetRandam_Int(1, 100)
   local func6_var38 = ai:GetDist(TARGET_ENE_0)
   local func6_var39 = Shoot_2dist(ai, goal, func6_var32, func6_var33, func6_var34, func6_var35)
   if func6_var39 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func6_var39 == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   end
   local func6_var40 = 50
   local func6_var41 = 60
   local func6_var42 = 20
   local func6_var43 = 20
   local func6_var44 = 2.8
   if RebByOpGuard_Step(ai, goal, func6_var40, func6_var41, func6_var42, func6_var43, func6_var44) then
      return true
   end
   local func6_var45 = 2.1
   local func6_var46 = 50
   if SuccessGuard_Act(ai, goal, func6_var45, func6_var46) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func6_var47 = 3
   local func6_var48 = 60
   local func6_var49 = 4
   local func6_var50 = 60
   if Parry_Act(ai, goal, func6_var47, func6_var48, func6_var49, func6_var50) then
      return true
   end
   local func6_var51 = 0
   local func6_var52 = 1
   local func6_var53 = 0
   local func6_var54 = 20
   if Backstab_Act(ai, goal, func6_var51, func6_var52, func6_var53, func6_var54) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   end
   return false
end


