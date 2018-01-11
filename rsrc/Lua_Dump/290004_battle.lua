local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 3.9
local localScriptConfigVar7 = 6.9
Sk_LarFal_non_scr290004Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      func1_var2[3] = 100
   elseif func1_var5 >= 12 then
      func1_var2[1] = 10
      func1_var2[2] = 10
      func1_var2[3] = 5
      func1_var2[7] = 75
   elseif func1_var5 >= 8 then
      func1_var2[1] = 15
      func1_var2[2] = 15
      func1_var2[3] = 5
      func1_var2[7] = 65
   elseif func1_var5 >= 5 then
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[3] = 10
      func1_var2[7] = 40
   elseif func1_var5 >= 1 then
      func1_var2[1] = 35
      func1_var2[2] = 35
      func1_var2[3] = 30
   else
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[3] = 50
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Sk_LarFal_non_scr290004_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Sk_LarFal_non_scr290004_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Sk_LarFal_non_scr290004_Act03)
   local func1_var6 = {localScriptConfigVar7, 75, 3008, DIST_Middle}
   func1_var4[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Sk_LarFal_non_scr290004_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

Sk_LarFal_non_scr290004_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = localScriptConfigVar5
   local func2_var4 = localScriptConfigVar5 + 2
   local func2_var5 = 0
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar5, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   if func2_var7 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Sk_LarFal_non_scr290004_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar1
   local func3_var4 = localScriptConfigVar1 + 2
   local func3_var5 = 0
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

Sk_LarFal_non_scr290004_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = localScriptConfigVar3
   local func4_var4 = localScriptConfigVar3 + 2
   local func4_var5 = 0
   local func4_var6 = ai:GetDist(TARGET_ENE_0)
   local func4_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Sk_LarFal_non_scr290004_ActAfter_AdjustSpace = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   if func5_var4 <= 25 then
   elseif func5_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0)
      return true
   elseif func5_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0)
      return true
   elseif func5_var4 <= 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      return true
   end
   return false
end

Sk_LarFal_non_scr290004Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Sk_LarFal_non_scr290004Battle_Terminate = function(ai, goal)
end

Sk_LarFal_non_scr290004Battle_Interupt = function(ai, goal)
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func8_var6 = 3
   local func8_var7 = 25
   local func8_var8 = 40
   local func8_var9 = 30
   local func8_var10 = 30
   local func8_var11 = 3.5
   if FindAttack_Step(ai, goal, func8_var6, func8_var7, func8_var8, func8_var9, func8_var10, func8_var11) then
      return true
   end
   local func8_var12 = 3
   local func8_var13 = 25
   local func8_var14 = 40
   local func8_var15 = 30
   local func8_var16 = 30
   local func8_var17 = 3.5
   if Damaged_Step(ai, goal, func8_var12, func8_var13, func8_var14, func8_var15, func8_var16, func8_var17) then
      return true
   end
   local func8_var18 = 3.1
   local func8_var19 = 50
   if MissSwing_Int(ai, goal, func8_var18, func8_var19) then
      if func8_var5 <= 2.2 then
         if func8_var2 <= 50 then
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
   local func8_var20 = 6
   local func8_var21 = 5
   if UseItem_Act(ai, goal, func8_var20, func8_var21) then
      if func8_var5 <= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var22 = 6
   local func8_var23 = 18
   local func8_var24 = 20
   local func8_var25 = 30
   local func8_var26 = Shoot_2dist(ai, goal, func8_var22, func8_var23, func8_var24, func8_var25)
   if func8_var26 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Guard, 2, 9910, TARGET_ENE_0, false, 0)
      return true
   elseif func8_var26 == 2 then
      if func8_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func8_var27 = 20
   local func8_var28 = 40
   local func8_var29 = 30
   local func8_var30 = 30
   local func8_var31 = 3.5
   if RebByOpGuard_Step(ai, goal, func8_var27, func8_var28, func8_var29, func8_var30, func8_var31) then
      return true
   end
   return false
end


