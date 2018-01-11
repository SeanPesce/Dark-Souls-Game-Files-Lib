local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 5.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2.5
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 6.5
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 0.7
HonebutoSk_Senshi292001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 5.5 then
      func1_var2[1] = 10
      func1_var2[2] = 5
      func1_var2[3] = 40
      func1_var2[4] = 40
      func1_var2[5] = 0
      func1_var2[9] = 5
   elseif func1_var5 >= 2.7 then
      func1_var2[1] = 50
      func1_var2[2] = 25
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[9] = 25
   else
      func1_var2[1] = 35
      func1_var2[2] = 17
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 30
      func1_var2[9] = 18
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, HonebutoSk_Senshi292001_Act01)
   local func1_var6 = {localScriptConfigVar1, 75, 33, 33, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar9, 75, 3004, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HonebutoSk_Senshi292001_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HonebutoSk_Senshi292001_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = {localScriptConfigVar1, 75, 33, 33, 3000, 3001, 3003, nil}
   func1_var4[9] = func1_var6
   func1_var6 = {100, 40, 15, 15, 0, 15, 15}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

HonebutoSk_Senshi292001_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar11
   local func2_var6 = localScriptConfigVar11 + 2
   local func2_var7 = 0
   local func2_var8 = 3005
   local func2_var9 = DIST_Middle
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, 180)
   GetWellSpace_Odds = 75
   return GetWellSpace_Odds
end

HonebutoSk_Senshi292001_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar13
   local func3_var5 = localScriptConfigVar13 + 2
   local func3_var6 = 75
   Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HonebutoSk_Senshi292001_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar15
   local func4_var5 = localScriptConfigVar15 + 2
   local func4_var6 = 75
   Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HonebutoSk_Senshi292001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HonebutoSk_Senshi292001Battle_Terminate = function(ai, goal)
end

HonebutoSk_Senshi292001Battle_Interupt = function(ai, goal)
   local func7_var2 = ai:GetRandam_Int(1, 100)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetDist(TARGET_ENE_0)
   local func7_var6 = 3
   local func7_var7 = 50
   local func7_var8 = 30
   local func7_var9 = 30
   local func7_var10 = 35
   local func7_var11 = 35
   local func7_var12 = 4
   local func7_var13 = 50
   local func7_var14 = 4.5
   local func7_var15 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func7_var6, func7_var7, func7_var8, func7_var9, func7_var10, func7_var11, func7_var12, func7_var13, func7_var14, func7_var15) then
      return true
   end
   local func7_var16 = 2.2
   local func7_var17 = 50
   if GuardBreak_Act(ai, goal, func7_var16, func7_var17) then
      if func7_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var18 = 2.2
   local func7_var19 = 30
   if MissSwing_Int(ai, goal, func7_var18, func7_var19) then
      if func7_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var20 = 1
   local func7_var21 = 40
   local func7_var22 = 30
   local func7_var23 = 30
   local func7_var24 = 4
   if MissSwingSelf_Step(ai, goal, func7_var20, func7_var21, func7_var22, func7_var23, func7_var24) then
      return true
   end
   local func7_var25 = 20
   local func7_var26 = 30
   local func7_var27 = 35
   local func7_var28 = 35
   local func7_var29 = 4
   if RebByOpGuard_Step(ai, goal, func7_var25, func7_var26, func7_var27, func7_var28, func7_var29) then
      return true
   end
   local func7_var30 = 2.2
   local func7_var31 = 50
   if SuccessGuard_Act(ai, goal, func7_var30, func7_var31) then
      if func7_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


