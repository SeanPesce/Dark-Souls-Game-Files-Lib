local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.7
local localScriptConfigVar2 = 1
local localScriptConfigVar3 = 2.4
local localScriptConfigVar4 = 1
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.3
FlameDog334100Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetRandam_Int(1, 100)
   local func1_var9 = ai:GetRandam_Int(1, 100)
   if func1_var5 >= 6 then
      func1_var2[1] = 10
      func1_var2[2] = 55
      func1_var2[3] = 35
      func1_var2[4] = 0
   elseif func1_var5 >= 3.5 then
      func1_var2[1] = 20
      func1_var2[2] = 45
      func1_var2[3] = 30
      func1_var2[4] = 5
   elseif func1_var5 >= 1.5 then
      func1_var2[1] = 45
      func1_var2[2] = 15
      func1_var2[3] = 25
      func1_var2[4] = 15
   else
      func1_var2[1] = 70
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 30
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, FlameDog334100_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, FlameDog334100_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, FlameDog334100_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, FlameDog334100_Act04)
   local func1_var10 = REGIST_FUNC(ai, goal, FlameDog334100_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var10, func1_var4)
end

FlameDog334100_Act01 = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetRandam_Int(0, 1)
   local func2_var5 = ai:GetRandam_Int(0.7, 1.7)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   if localScriptConfigVar9 + 0.5 <= func2_var6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, -1)
      if func2_var2 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, -1, 30)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, -1, 30)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, -1)
      if func2_var2 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_Middle, -1, 30)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_Middle, -1, 30)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

FlameDog334100_Act02 = function(ai, goal)
   local func3_var2 = ai:GetRandam_Int(1, 100)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = ai:GetRandam_Int(0, 1)
   local func3_var5 = ai:GetRandam_Int(0.7, 1.7)
   local func3_var6 = ai:GetDist(TARGET_ENE_0)
   if localScriptConfigVar5 + 0.5 <= func3_var6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
      if func3_var2 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 30)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 30)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, true, -1)
      if func3_var2 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_Middle, -1, 30)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_Middle, -1, 30)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

FlameDog334100_Act03 = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetDist(TARGET_ENE_0)
   if localScriptConfigVar7 + 0.5 <= func4_var4 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_Middle, -1, 30)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

FlameDog334100_Act04 = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   if func5_var2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func5_var2 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FlameDog334100_ActAfter_AdjustSpace = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   if func6_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1.8, 3), TARGET_ENE_0, 0, 0, 0)
   elseif func6_var3 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2.4, 3.4), TARGET_ENE_0, 0, 0, 0)
   elseif func6_var3 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1.8, 3), TARGET_ENE_0, 0, 0, 0)
   elseif fate2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1.8, 3), TARGET_ENE_0, 0, 0, 0)
end

FlameDog334100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FlameDog334100Battle_Terminate = function(ai, goal)
end

FlameDog334100Battle_Interupt = function(ai, goal)
   local func9_var2 = ai:GetRandam_Int(1, 100)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   local func9_var6 = 3.5
   local func9_var7 = 35
   local func9_var8 = 40
   local func9_var9 = 30
   local func9_var10 = 30
   local func9_var11 = 3
   if FindAttack_Step(ai, goal, func9_var6, func9_var7, func9_var8, func9_var9, func9_var10, func9_var11) then
      return true
   end
   local func9_var12 = 3.5
   local func9_var13 = 35
   local func9_var14 = 40
   local func9_var15 = 30
   local func9_var16 = 30
   local func9_var17 = 3
   if Damaged_Step(ai, goal, func9_var12, func9_var13, func9_var14, func9_var15, func9_var16, func9_var17) then
      return true
   end
   local func9_var18 = 8
   local func9_var19 = 50
   if MissSwing_Int(ai, goal, func9_var18, func9_var19) then
      if func9_var5 <= 2.1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var20 = 6
   local func9_var21 = 15
   local func9_var22 = 0
   local func9_var23 = 60
   local func9_var24 = Shoot_2dist(ai, goal, func9_var20, func9_var21, func9_var22, func9_var23)
   if func9_var24 == 1 then
      if func9_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      return true
   elseif func9_var24 == 2 then
      if func9_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      if func9_var3 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         if func9_var2 <= 5 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 30)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 30)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, DIST_Middle, 0)
         end
      end
      return true
   end
   local func9_var25 = 25
   local func9_var26 = 50
   local func9_var27 = 25
   local func9_var28 = 25
   local func9_var29 = 3
   if RebByOpGuard_Step(ai, goal, func9_var25, func9_var26, func9_var27, func9_var28, func9_var29) then
      return true
   end
   return false
end


