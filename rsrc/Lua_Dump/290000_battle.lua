local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.2
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.5
local localScriptConfigVar8 = 3
local localScriptConfigVar9 = 6
local localScriptConfigVar10 = 4
local localScriptConfigVar11 = 9
local localScriptConfigVar12 = 3.5
local localScriptConfigVar13 = 6.5
Skeleton_Falchion290000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsLadderAct(TARGET_SELF) then
      func1_var2[3] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 25
      func1_var2[2] = 25
      func1_var2[3] = 5
      func1_var2[4] = 0
      func1_var2[6] = 30
      func1_var2[7] = 15
      func1_var2[8] = 0
   elseif func1_var5 >= 3.5 then
      func1_var2[1] = 15
      func1_var2[2] = 20
      func1_var2[3] = 15
      func1_var2[4] = 0
      func1_var2[6] = 15
      func1_var2[7] = 15
      func1_var2[8] = 20
   elseif func1_var5 >= 1.5 then
      func1_var2[1] = 20
      func1_var2[2] = 35
      func1_var2[3] = 20
      func1_var2[4] = 0
      func1_var2[6] = 0
      func1_var2[7] = 0
      func1_var2[8] = 25
   else
      func1_var2[1] = 10
      func1_var2[2] = 30
      func1_var2[3] = 30
      func1_var2[4] = 30
      func1_var2[6] = 0
      func1_var2[7] = 0
      func1_var2[8] = 0
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act04)
   func1_var3[6] = REGIST_FUNC(ai, goal, Skeleton_Falchion290000_Act06)
   local func1_var6 = {localScriptConfigVar13, 75, 3008, DIST_Middle}
   func1_var4[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Skeleton_Falchion290000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

Skeleton_Falchion290000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar5, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar1, 0)
   if func3_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 40 then
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

Skeleton_Falchion290000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar3, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 2
   local func5_var7 = 0
   local func5_var8 = 3005
   local func5_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var5, func5_var6, func5_var7, func5_var8, func5_var9)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_Act06 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar10 <= func6_var3 and func6_var4 <= 40 then
      local func6_var6 = localScriptConfigVar11
      local func6_var7 = localScriptConfigVar11 + 2
      local func6_var8 = 75
      local func6_var9 = 3007
      local func6_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10)
   else
      local func6_var6 = localScriptConfigVar9
      local func6_var7 = localScriptConfigVar9 + 2
      local func6_var8 = 75
      local func6_var9 = 3006
      local func6_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Skeleton_Falchion290000_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   if func7_var4 <= 25 then
   elseif func7_var4 <= 35 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0)
      return true
   elseif func7_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0)
      return true
   elseif func7_var4 <= 90 then
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

Skeleton_Falchion290000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Skeleton_Falchion290000Battle_Terminate = function(ai, goal)
end

Skeleton_Falchion290000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 3
   local func10_var7 = 60
   local func10_var8 = 4
   local func10_var9 = 60
   if Parry_Act(ai, goal, func10_var6, func10_var7, func10_var8, func10_var9) then
      return true
   end
   local func10_var10 = 3
   local func10_var11 = 25
   local func10_var12 = 50
   local func10_var13 = 40
   local func10_var14 = 30
   local func10_var15 = 30
   local func10_var16 = 3.5
   local func10_var17 = 50
   local func10_var18 = 4.5
   local func10_var19 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func10_var10, func10_var11, func10_var12, func10_var13, func10_var14, func10_var15, func10_var16, func10_var17, func10_var18, func10_var19) then
      return true
   end
   local func10_var20 = 3
   local func10_var21 = 25
   local func10_var22 = 50
   local func10_var23 = 40
   local func10_var24 = 30
   local func10_var25 = 30
   local func10_var26 = 3.5
   local func10_var27 = 50
   local func10_var28 = 4.5
   local func10_var29 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func10_var20, func10_var21, func10_var22, func10_var23, func10_var24, func10_var25, func10_var26, func10_var27, func10_var28, func10_var29) then
      return true
   end
   local func10_var30 = 3.1
   local func10_var31 = 50
   if MissSwing_Int(ai, goal, func10_var30, func10_var31) then
      if func10_var5 <= 2.2 then
         if func10_var2 <= 50 then
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
   local func10_var32 = 6
   local func10_var33 = 5
   if UseItem_Act(ai, goal, func10_var32, func10_var33) then
      if func10_var5 <= 3 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var34 = 6
   local func10_var35 = 18
   local func10_var36 = 20
   local func10_var37 = 30
   local func10_var38 = Shoot_2dist(ai, goal, func10_var34, func10_var35, func10_var36, func10_var37)
   if func10_var38 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func10_var38 == 2 then
      if func10_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         return true
      elseif func10_var2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func10_var39 = 20
   local func10_var40 = 40
   local func10_var41 = 30
   local func10_var42 = 30
   local func10_var43 = 3.5
   if RebByOpGuard_Step(ai, goal, func10_var39, func10_var40, func10_var41, func10_var42, func10_var43) then
      return true
   end
   return false
end


