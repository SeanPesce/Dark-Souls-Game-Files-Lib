local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 3
local localScriptConfigVar7 = 6
local localScriptConfigVar8 = 5
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = 3.9
local localScriptConfigVar11 = 6.9
Sk_Large_Falchion290002Battle_Activate = function(ai, goal)
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
      func1_var2[3] = 0
      func1_var2[6] = 50
      func1_var2[7] = 30
   elseif func1_var5 >= 8 then
      func1_var2[1] = 15
      func1_var2[2] = 15
      func1_var2[3] = 5
      func1_var2[6] = 35
      func1_var2[7] = 30
   elseif func1_var5 >= 5 then
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[3] = 10
      func1_var2[6] = 25
      func1_var2[7] = 15
   elseif func1_var5 >= 1 then
      func1_var2[1] = 35
      func1_var2[2] = 35
      func1_var2[3] = 30
      func1_var2[6] = 0
      func1_var2[7] = 0
   else
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[3] = 50
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Sk_Large_Falchion290002_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Sk_Large_Falchion290002_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Sk_Large_Falchion290002_Act03)
   func1_var3[6] = REGIST_FUNC(ai, goal, Sk_Large_Falchion290002_Act06)
   local func1_var6 = {localScriptConfigVar11, 0, 3008, DIST_Middle}
   func1_var4[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Sk_Large_Falchion290002_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

Sk_Large_Falchion290002_Act01 = function(ai, goal, func2_param2)
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

Sk_Large_Falchion290002_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar1
   local func3_var4 = localScriptConfigVar1 + 2
   local func3_var5 = 0
   local func3_var6 = ai:GetDist(TARGET_ENE_0)
   local func3_var7 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar1, 0)
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

Sk_Large_Falchion290002_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = localScriptConfigVar3
   local func4_var4 = localScriptConfigVar3 + 2
   local func4_var5 = 0
   local func4_var6 = ai:GetDist(TARGET_ENE_0)
   local func4_var7 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar3, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Sk_Large_Falchion290002_Act06 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar8 <= func5_var3 and func5_var4 <= 40 then
      local func5_var6 = localScriptConfigVar9
      local func5_var7 = localScriptConfigVar9 + 2
      local func5_var8 = 0
      local func5_var9 = 3007
      local func5_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func5_var6, func5_var7, func5_var8, func5_var9, func5_var10)
   else
      local func5_var6 = localScriptConfigVar7
      local func5_var7 = localScriptConfigVar7 + 2
      local func5_var8 = 0
      local func5_var9 = 3006
      local func5_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func5_var6, func5_var7, func5_var8, func5_var9, func5_var10)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Sk_Large_Falchion290002_ActAfter_AdjustSpace = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   if func6_var4 <= 25 then
   elseif func6_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0)
      return true
   elseif func6_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      return true
   end
   return false
end

Sk_Large_Falchion290002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Sk_Large_Falchion290002Battle_Terminate = function(ai, goal)
end

Sk_Large_Falchion290002Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func9_var2 = ai:GetRandam_Int(1, 100)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   local func9_var6 = 3
   local func9_var7 = 25
   local func9_var8 = 40
   local func9_var9 = 30
   local func9_var10 = 30
   local func9_var11 = 3.5
   if FindAttack_Step(ai, goal, func9_var6, func9_var7, func9_var8, func9_var9, func9_var10, func9_var11) then
      return true
   end
   local func9_var12 = 3
   local func9_var13 = 25
   local func9_var14 = 40
   local func9_var15 = 30
   local func9_var16 = 30
   local func9_var17 = 3.5
   if Damaged_Step(ai, goal, func9_var12, func9_var13, func9_var14, func9_var15, func9_var16, func9_var17) then
      return true
   end
   local func9_var18 = 3.1
   local func9_var19 = 50
   if MissSwing_Int(ai, goal, func9_var18, func9_var19) then
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
   local func9_var20 = 6
   local func9_var21 = 15
   if UseItem_Act(ai, goal, func9_var20, func9_var21) then
      if func9_var5 <= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var22 = 6
   local func9_var23 = 18
   local func9_var24 = 0
   local func9_var25 = 30
   local func9_var26 = Shoot_2dist(ai, goal, func9_var22, func9_var23, func9_var24, func9_var25)
   if func9_var26 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Guard, 2, 9910, TARGET_ENE_0, false, 0)
      return true
   elseif func9_var26 == 2 then
      if func9_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func9_var27 = 20
   local func9_var28 = 40
   local func9_var29 = 30
   local func9_var30 = 30
   local func9_var31 = 3.5
   if RebByOpGuard_Step(ai, goal, func9_var27, func9_var28, func9_var29, func9_var30, func9_var31) then
      return true
   end
   return false
end


