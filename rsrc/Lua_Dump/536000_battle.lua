local localScriptConfigVar0 = 0.5
local localScriptConfigVar1 = 1.1
local localScriptConfigVar2 = 2.7
local localScriptConfigVar3 = 4.5
local localScriptConfigVar4 = 0.5
local localScriptConfigVar5 = 1.7
local localScriptConfigVar6 = 0.5
local localScriptConfigVar7 = 1.1
local localScriptConfigVar8 = 0.5
local localScriptConfigVar9 = 12.7
local localScriptConfigVar10 = 0.5
local localScriptConfigVar11 = 24.5
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 24
LargeCat536000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 100, 2)
   local func1_var6 = 1
   if ai:IsFinishTimer(0) == false then
      func1_var6 = 0
   end
   local func1_var7 = 1
   if ai:IsFinishTimer(1) == false then
      func1_var7 = 0
   end
   if not ai:IsInsideTargetRegion(TARGET_ENE_0, 1202730) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1202731) then
      func1_var2[11] = 100
   else
      local func1_var8 = 0
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 15) then
         func1_var8 = 1
      end
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 100) and func1_var5 <= 0.8 then
         func1_var2[8] = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and func1_var5 <= 0.8 then
         func1_var2[9] = 100
      elseif func1_var5 >= 12.7 then
         func1_var2[1] = 5
         func1_var2[2] = 5
         func1_var2[3] = 5
         func1_var2[4] = 5 * func1_var8
         func1_var2[5] = 35
         func1_var2[6] = 40
         func1_var2[7] = 5 * func1_var7
      elseif func1_var5 >= 8 then
         func1_var2[1] = 15
         func1_var2[2] = 20
         func1_var2[3] = 15
         func1_var2[4] = 15 * func1_var8
         func1_var2[5] = 15
         func1_var2[6] = 10
         func1_var2[7] = 5 * func1_var7
      elseif func1_var5 >= 4.5 then
         func1_var2[1] = 32
         func1_var2[2] = 28
         func1_var2[3] = 20
         func1_var2[4] = 20 * func1_var8
         func1_var2[5] = 0
         func1_var2[6] = 0
         func1_var2[7] = 0
      elseif func1_var5 >= 2 then
         func1_var2[1] = 25
         func1_var2[2] = 20
         func1_var2[3] = 25
         func1_var2[4] = 20 * func1_var8
         func1_var2[5] = 0
         func1_var2[6] = 0
         func1_var2[7] = 0
         func1_var2[10] = 10 * func1_var6
      else
         func1_var2[1] = 10
         func1_var2[2] = 0
         func1_var2[3] = 30
         func1_var2[4] = 40 * func1_var8
         func1_var2[5] = 0
         func1_var2[6] = 0
         func1_var2[7] = 0
         func1_var2[10] = 20 * func1_var6
      end
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, LargeCat536000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, LargeCat536000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, LargeCat536000_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, LargeCat536000_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, LargeCat536000_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, LargeCat536000_Act06)
   func1_var3[7] = REGIST_FUNC(ai, goal, LargeCat536000_Act07)
   func1_var3[8] = REGIST_FUNC(ai, goal, LargeCat536000_Act08)
   func1_var3[9] = REGIST_FUNC(ai, goal, LargeCat536000_Act09)
   func1_var3[10] = REGIST_FUNC(ai, goal, LargeCat536000_Act10)
   func1_var3[11] = REGIST_FUNC(ai, goal, LargeCat536000_Act11)
   local func1_var8 = REGIST_FUNC(ai, goal, LargeCat536000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

LargeCat536000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 0
   BusyApproach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar3
   local func3_var5 = localScriptConfigVar3 + 2
   local func3_var6 = 0
   BusyApproach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_Middle, -1, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar5
   local func4_var5 = localScriptConfigVar5 + 2
   local func4_var6 = 0
   BusyApproach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar7
   local func5_var5 = localScriptConfigVar7 + 2
   local func5_var6 = 0
   BusyApproach_Act(ai, goal, func5_var4, func5_var5, func5_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar9
   local func6_var5 = localScriptConfigVar9 + 2
   local func6_var6 = 0
   BusyApproach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3004, TARGET_ENE_0, DIST_Middle, -1, 22)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar11
   local func7_var5 = localScriptConfigVar11 + 2
   local func7_var6 = 0
   BusyApproach_Act(ai, goal, func7_var4, func7_var5, func7_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3005, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = localScriptConfigVar13
   local func8_var5 = localScriptConfigVar13 + 2
   local func8_var6 = 0
   BusyApproach_Act(ai, goal, func8_var4, func8_var5, func8_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_Middle, 0)
   ai:SetTimer(1, 20)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

LargeCat536000_Act08 = function(ai, goal, func9_param2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act09 = function(ai, goal, func10_param2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3008, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

LargeCat536000_Act10 = function(ai, goal, func11_param2)
   ai:SetTimer(0, 15)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 9)
end

LargeCat536000_Act11 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   ai:SetEventMoveTarget(1202732)
   local func12_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if func12_var4 >= 3 then
      ai:SetEventMoveTarget(1202732)
      if func12_var3 <= 5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, TARGET_ENE_0, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, TARGET_SELF, false, -1)
      end
   end
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
end

LargeCat536000_ActAfter_AdjustSpace = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   if func13_var4 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 9)
      return true
   elseif func13_var4 <= 45 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0.5, AI_DIR_TYPE_L, 5)
      return true
   elseif func13_var4 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0.5, AI_DIR_TYPE_R, 5)
      return true
   else
   end
      return false
end

LargeCat536000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LargeCat536000Battle_Terminate = function(ai, goal)
end

LargeCat536000Battle_Interupt = function(ai, goal)
   local func16_var2 = ai:GetRandam_Int(1, 100)
   local func16_var3 = ai:GetRandam_Int(1, 100)
   local func16_var4 = ai:GetRandam_Int(1, 100)
   local func16_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 10)
      if func16_var2 <= 50 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
      elseif func16_var2 <= 75 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
      else
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
      end
      return true
   end
   local func16_var6 = 4.5
   local func16_var7 = 15
   local func16_var8 = 50
   local func16_var9 = 25
   local func16_var10 = 25
   local func16_var11 = 5
   if FindAttack_Step(ai, goal, func16_var6, func16_var7, func16_var8, func16_var9, func16_var10, func16_var11) then
      return true
   end
   local func16_var12 = 3.5
   local func16_var13 = 60
   if GuardBreak_Act(ai, goal, func16_var12, func16_var13) then
      if func16_var5 >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func16_var14 = 3.5
   local func16_var15 = 50
   if MissSwing_Int(ai, goal, func16_var14, func16_var15) then
      if func16_var5 >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func16_var16 = 12.7
   local func16_var17 = 10
   if UseItem_Act(ai, goal, func16_var16, func16_var17) then
      if func16_var5 >= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif func16_var5 >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   local func16_var18 = 25
   local func16_var19 = 100
   local func16_var20 = 0
   local func16_var21 = 85
   local func16_var22 = Shoot_2dist(ai, goal, func16_var18, func16_var19, func16_var20, func16_var21)
   if func16_var22 == 1 then
      if func16_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      return true
   elseif func16_var22 == 2 then
      if func16_var5 >= 35 then
         local func16_var23 = localScriptConfigVar11
         local func16_var24 = localScriptConfigVar11 + 2
         local func16_var25 = 0
         BusyApproach_Act(ai, goal, func16_var23, func16_var24, func16_var25)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
      else
         local func16_var23 = localScriptConfigVar9
         local func16_var24 = localScriptConfigVar9 + 2
         local func16_var25 = 0
         BusyApproach_Act(ai, goal, func16_var23, func16_var24, func16_var25)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3004, TARGET_ENE_0, DIST_Middle, -1, 50)
      end
   end
   return false
end


