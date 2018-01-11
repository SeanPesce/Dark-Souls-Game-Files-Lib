local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.8
local localScriptConfigVar2 = 2.5
local localScriptConfigVar3 = 6.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.8
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 4
Jujin233000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[3] = 15
      func1_var2[4] = 5
      func1_var2[9] = 40
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[3] = 15
      func1_var2[4] = 15
      func1_var2[9] = 30
   else
      func1_var2[1] = 30
      func1_var2[2] = 20
      func1_var2[3] = 20
      func1_var2[4] = 30
      func1_var2[9] = 0
   end
   local func1_var6 = {localScriptConfigVar7, 0, 3005, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar1, 0, 30, 70, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar9, 0, 3006, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Jujin233000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = {localScriptConfigVar3, 0, 30, 70, 3002, 3003, nil, nil}
   func1_var4[9] = func1_var6
   func1_var6 = {0, 50, 0, 5, 20, 15, 10}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Jujin233000_Act04 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar5
   local func2_var6 = localScriptConfigVar5 + 2
   local func2_var7 = 0
   local func2_var8 = 3004
   local func2_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func2_var5, func2_var6, func2_var7, func2_var8, func2_var9)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Jujin233000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Jujin233000Battle_Terminate = function(ai, goal)
end

Jujin233000Battle_Interupt = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetDist(TARGET_ENE_0)
   local func5_var6 = 3
   local func5_var7 = 15
   local func5_var8 = 30
   local func5_var9 = 35
   local func5_var10 = 35
   local func5_var11 = 3.5
   if FindAttack_Step(ai, goal, func5_var6, func5_var7, func5_var8, func5_var9, func5_var10, func5_var11) then
      return true
   end
   local func5_var12 = 3
   local func5_var13 = 25
   local func5_var14 = 30
   local func5_var15 = 35
   local func5_var16 = 35
   local func5_var17 = 3.5
   if Damaged_Step(ai, goal, func5_var12, func5_var13, func5_var14, func5_var15, func5_var16, func5_var17) then
      return true
   end
   local func5_var18 = 6.5
   local func5_var19 = 30
   if GuardBreak_Act(ai, goal, func5_var18, func5_var19) then
      if func5_var5 <= 3.8 then
         if func5_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local func5_var20 = 6.5
   local func5_var21 = 30
   if MissSwing_Int(ai, goal, func5_var20, func5_var21) then
      if func5_var5 <= 3.8 then
         if func5_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local func5_var22 = 7
   local func5_var23 = 18
   local func5_var24 = 0
   local func5_var25 = 40
   local func5_var26 = Shoot_2dist(ai, goal, func5_var22, func5_var23, func5_var24, func5_var25)
   if func5_var26 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif func5_var26 == 2 then
      if func5_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func5_var27 = 30
   local func5_var28 = 30
   local func5_var29 = 35
   local func5_var30 = 35
   local func5_var31 = 3.5
   if RebByOpGuard_Step(ai, goal, func5_var27, func5_var28, func5_var29, func5_var30, func5_var31) then
      return true
   end
   return false
end


