local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.4
local localScriptConfigVar4 = 2.5
local localScriptConfigVar5 = 4.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.3
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.1
OnIf_256000 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

LightKnight_Sword256000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = ai:GetHpRate(TARGET_SELF)
   if ai:IsLadderAct(TARGET_SELF) then
      func2_var2[3] = 100
   elseif func2_var6 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var5 >= 4.5 then
         func2_var2[1] = 7
         func2_var2[2] = 5
         func2_var2[3] = 8
         func2_var2[7] = 5
         func2_var2[8] = 75
      elseif func2_var5 >= 3 then
         func2_var2[1] = 15
         func2_var2[2] = 15
         func2_var2[3] = 11
         func2_var2[7] = 9
         func2_var2[8] = 50
      else
         func2_var2[1] = 25
         func2_var2[2] = 25
         func2_var2[3] = 15
         func2_var2[7] = 0
         func2_var2[8] = 35
      end
   elseif func2_var5 >= 4 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[1] = 20
         func2_var2[2] = 15
         func2_var2[3] = 25
         func2_var2[4] = 25
         func2_var2[7] = 15
      else
         func2_var2[1] = 25
         func2_var2[2] = 25
         func2_var2[3] = 15
         func2_var2[4] = 0
         func2_var2[7] = 35
      end
   elseif func2_var5 >= 2.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[1] = 15
         func2_var2[2] = 10
         func2_var2[3] = 25
         func2_var2[4] = 40
         func2_var2[7] = 10
      else
         func2_var2[1] = 30
         func2_var2[2] = 30
         func2_var2[3] = 25
         func2_var2[4] = 0
         func2_var2[7] = 15
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func2_var2[1] = 10
      func2_var2[2] = 10
      func2_var2[3] = 20
      func2_var2[4] = 60
      func2_var2[7] = 0
   else
      func2_var2[1] = 35
      func2_var2[2] = 35
      func2_var2[3] = 30
      func2_var2[4] = 0
      func2_var2[7] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func2_var7 = {localScriptConfigVar7, 75, 3005, DIST_Middle, nil}
   func2_var4[1] = func2_var7
   func2_var7 = {localScriptConfigVar1, 75, 10, 30, nil, nil, nil, nil}
   func2_var4[2] = func2_var7
   func2_var7 = {localScriptConfigVar3, 75, 3003, DIST_Middle, nil}
   func2_var4[3] = func2_var7
   func2_var7 = {localScriptConfigVar9, 75, 3006, DIST_Middle, 3003, DIST_Middle, nil}
   func2_var4[4] = func2_var7
   func2_var7 = {localScriptConfigVar5, 75, 3004, DIST_Middle, nil}
   func2_var4[7] = func2_var7
   func2_var7 = REGIST_FUNC
   func2_var7 = func2_var7(ai, goal, LightKnight_Sword256000_Act08)
   func2_var3[8] = func2_var7
   func2_var7 = {100, 60, 10, 10, 0, 10, 10}
   local func2_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func2_var7)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var8, func2_var4)
end

LightKnight_Sword256000_Act05 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_SELF, DIST_None)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, 9910)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle)
   if func3_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

LightKnight_Sword256000_Act06 = function(ai, goal, func4_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_SELF, DIST_None)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

LightKnight_Sword256000_Act08 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   if func5_var3 <= 40 then
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

LightKnight_Sword256000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LightKnight_Sword256000Battle_Terminate = function(ai, goal)
end

LightKnight_Sword256000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   local func8_var6 = 3
   local func8_var7 = 25
   local func8_var8 = 20
   local func8_var9 = 60
   local func8_var10 = 20
   local func8_var11 = 20
   local func8_var12 = 2.8
   local func8_var13 = 50
   local func8_var14 = 3.5
   local func8_var15 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func8_var6, func8_var7, func8_var8, func8_var9, func8_var10, func8_var11, func8_var12, func8_var13, func8_var14, func8_var15) then
      return true
   end
   local func8_var16 = 3
   local func8_var17 = 25
   local func8_var18 = 30
   local func8_var19 = 60
   local func8_var20 = 20
   local func8_var21 = 20
   local func8_var22 = 2.8
   local func8_var23 = 50
   local func8_var24 = 3.5
   local func8_var25 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func8_var16, func8_var17, func8_var18, func8_var19, func8_var20, func8_var21, func8_var22, func8_var23, func8_var24, func8_var25) then
      return true
   end
   local func8_var26 = 2.4
   local func8_var27 = 30
   if GuardBreak_Act(ai, goal, func8_var26, func8_var27) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func8_var28 = 6.5
   local func8_var29 = 60
   if MissSwing_Int(ai, goal, func8_var28, func8_var29) then
      if func8_var5 >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var30 = 6.5
   local func8_var31 = 30
   if UseItem_Act(ai, goal, func8_var30, func8_var31) then
      if func8_var5 >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var32 = 4.5
   local func8_var33 = 13
   local func8_var34 = 0
   local func8_var35 = 50
   local func8_var36 = ai:GetRandam_Int(1, 100)
   local func8_var37 = ai:GetRandam_Int(1, 100)
   local func8_var38 = ai:GetDist(TARGET_ENE_0)
   local func8_var39 = Shoot_2dist(ai, goal, func8_var32, func8_var33, func8_var34, func8_var35)
   if func8_var39 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func8_var39 == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   end
   local func8_var40 = 50
   local func8_var41 = 60
   local func8_var42 = 20
   local func8_var43 = 20
   local func8_var44 = 2.8
   if RebByOpGuard_Step(ai, goal, func8_var40, func8_var41, func8_var42, func8_var43, func8_var44) then
      return true
   end
   local func8_var45 = 2.4
   local func8_var46 = 50
   if SuccessGuard_Act(ai, goal, func8_var45, func8_var46) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end


