local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.7
local localScriptConfigVar4 = 1.7
local localScriptConfigVar5 = 3
local localScriptConfigVar6 = 5
local localScriptConfigVar7 = 7.2
local localScriptConfigVar8 = 11
local localScriptConfigVar9 = 11.7
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2
HusiCrystal_Sword280000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var6 == 10 then
      func1_var2[8] = 100
   elseif ai:IsLadderAct(TARGET_SELF) then
      func1_var2[2] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[3] = 10
      func1_var2[7] = 80
   elseif func1_var5 >= 4 then
      func1_var2[1] = 20
      func1_var2[2] = 10
      func1_var2[3] = 10
      func1_var2[7] = 60
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 30
      func1_var2[2] = 30
      func1_var2[3] = 20
      func1_var2[7] = 20
   else
      func1_var2[1] = 35
      func1_var2[2] = 35
      func1_var2[3] = 30
      func1_var2[7] = 0
   end
   local func1_var7 = {localScriptConfigVar11, 30, 3007, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = {localScriptConfigVar1, 30, 20, 40, nil, nil, nil, nil}
   func1_var4[2] = func1_var7
   func1_var7 = {localScriptConfigVar3, 30, 3003, DIST_Middle}
   func1_var4[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiCrystal_Sword280000_Act07)
   func1_var3[7] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiCrystal_Sword280000_Act08)
   func1_var3[8] = func1_var7
   func1_var7 = {30, 5, 20, 15, 10, 10, 10}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

HusiCrystal_Sword280000_Act07 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar8 <= func2_var3 and func2_var4 <= 20 then
      local func2_var7 = localScriptConfigVar9
      local func2_var8 = localScriptConfigVar9 + 2
      local func2_var9 = 0
      Approach_Act(ai, goal, func2_var7, func2_var8, func2_var9)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   elseif localScriptConfigVar6 <= func2_var3 and func2_var5 <= 50 then
      local func2_var7 = localScriptConfigVar7
      local func2_var8 = localScriptConfigVar7 + 2
      local func2_var9 = 0
      Approach_Act(ai, goal, func2_var7, func2_var8, func2_var9)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   else
      local func2_var7 = localScriptConfigVar5
      local func2_var8 = localScriptConfigVar5 + 2
      local func2_var9 = 0
      Approach_Act(ai, goal, func2_var7, func2_var8, func2_var9)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiCrystal_Sword280000_Act08 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiCrystal_Sword280000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiCrystal_Sword280000Battle_Terminate = function(ai, goal)
end

HusiCrystal_Sword280000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = 3
   local func6_var7 = 15
   local func6_var8 = 50
   local func6_var9 = 30
   local func6_var10 = 35
   local func6_var11 = 35
   local func6_var12 = 3.5
   local func6_var13 = 50
   local func6_var14 = 2.5
   local func6_var15 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10, func6_var11, func6_var12, func6_var13, func6_var14, func6_var15) then
      return true
   end
   local func6_var16 = 3
   local func6_var17 = 30
   if MissSwing_Int(ai, goal, func6_var16, func6_var17) then
      if func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var18 = 3
   local func6_var19 = 30
   if GuardBreak_Act(ai, goal, func6_var18, func6_var19) then
      if func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var20 = 8.5
   local func6_var21 = 18
   local func6_var22 = 0
   local func6_var23 = 15
   local func6_var24 = ai:GetRandam_Int(1, 100)
   local func6_var25 = ai:GetRandam_Int(1, 100)
   local func6_var26 = ai:GetDist(TARGET_ENE_0)
   local func6_var27 = Shoot_2dist(ai, goal, func6_var20, func6_var21, func6_var22, func6_var23)
   if func6_var27 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func6_var27 == 2 then
      if func6_var24 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         return true
      elseif func6_var24 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func6_var28 = 20
   local func6_var29 = 30
   local func6_var30 = 35
   local func6_var31 = 35
   local func6_var32 = 3.5
   if RebByOpGuard_Step(ai, goal, func6_var28, func6_var29, func6_var30, func6_var31, func6_var32) then
      return true
   end
   return false
end


