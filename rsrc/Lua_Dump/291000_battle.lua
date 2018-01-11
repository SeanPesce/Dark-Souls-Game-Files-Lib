local localScriptConfigVar0 = 2.7
local localScriptConfigVar1 = 5.2
local localScriptConfigVar2 = 4.1
local localScriptConfigVar3 = 6
local localScriptConfigVar4 = 3.2
local localScriptConfigVar5 = 5.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.2
BigSk_Sword291000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 6 then
      func1_var2[2] = 25
      func1_var2[3] = 35
      func1_var2[4] = 25
      func1_var2[5] = 10
      func1_var2[6] = 5
   elseif func1_var5 >= 4.1 then
      func1_var2[2] = 25
      func1_var2[3] = 25
      func1_var2[4] = 25
      func1_var2[5] = 15
      func1_var2[6] = 10
   elseif func1_var5 >= 3.1 then
      func1_var2[2] = 20
      func1_var2[3] = 30
      func1_var2[4] = 20
      func1_var2[5] = 10
      func1_var2[6] = 20
   elseif func1_var5 >= 2.7 then
      func1_var2[2] = 15
      func1_var2[3] = 25
      func1_var2[4] = 15
      func1_var2[5] = 20
      func1_var2[6] = 25
   else
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 50
      func1_var2[6] = 50
   end
   func1_var3[2] = REGIST_FUNC(ai, goal, BigSk_Sword291000_Act02)
   local func1_var6 = {localScriptConfigVar3, 75, 3002, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, BigSk_Sword291000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, BigSk_Sword291000_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, BigSk_Sword291000_Act06)
   func1_var3[6] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, BigSkSword291000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

BigSk_Sword291000_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = localScriptConfigVar1
   local func2_var4 = localScriptConfigVar1 + 2
   local func2_var5 = 70
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   if func2_var7 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var7 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigSk_Sword291000_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar5
   local func3_var4 = localScriptConfigVar5 + 2
   local func3_var5 = 70
   local func3_var6 = ai:GetDist(TARGET_ENE_0)
   local func3_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   if func3_var7 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var7 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var7 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var7 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigSk_Sword291000_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = localScriptConfigVar7
   local func4_var4 = localScriptConfigVar7 + 2
   local func4_var5 = 70
   local func4_var6 = ai:GetDist(TARGET_ENE_0)
   local func4_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigSk_Sword291000_Act06 = function(ai, goal, func5_param2)
   local func5_var3 = localScriptConfigVar9
   local func5_var4 = localScriptConfigVar9 + 2
   local func5_var5 = 70
   local func5_var6 = ai:GetDist(TARGET_ENE_0)
   local func5_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BigSkSword291000_ActAfter_AdjustSpace = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   if func6_var4 <= 40 then
   elseif func6_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
      return true
   elseif func6_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
      return true
   elseif func6_var4 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func6_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 4, TARGET_ENE_0, true, 9910)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      return true
   end
   return false
end

BigSk_Sword291000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigSk_Sword291000Battle_Terminate = function(ai, goal)
end

BigSk_Sword291000Battle_Interupt = function(ai, goal)
   local func9_var2 = ai:GetRandam_Int(1, 100)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   local func9_var6 = 3
   local func9_var7 = 25
   local func9_var8 = 20
   local func9_var9 = 40
   local func9_var10 = 30
   local func9_var11 = 30
   local func9_var12 = 5
   local func9_var13 = 50
   local func9_var14 = 4.5
   local func9_var15 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func9_var6, func9_var7, func9_var8, func9_var9, func9_var10, func9_var11, func9_var12, func9_var13, func9_var14, func9_var15) then
      return true
   end
   local func9_var16 = 8
   local func9_var17 = 50
   if GuardBreak_Act(ai, goal, func9_var16, func9_var17) then
      if func9_var5 <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      elseif func9_var5 <= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var18 = 8
   local func9_var19 = 15
   if UseItem_Act(ai, goal, func9_var18, func9_var19) then
      if func9_var5 <= 1.8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      elseif func9_var5 <= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var20 = 8
   local func9_var21 = 20
   local func9_var22 = 0
   local func9_var23 = 15
   local func9_var24 = ai:GetRandam_Int(1, 100)
   local func9_var25 = ai:GetRandam_Int(1, 100)
   local func9_var26 = ai:GetDist(TARGET_ENE_0)
   local func9_var27 = Shoot_2dist(ai, goal, func9_var20, func9_var21, func9_var22, func9_var23)
   if func9_var27 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func9_var27 == 2 then
      if func9_var24 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      elseif func9_var24 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


