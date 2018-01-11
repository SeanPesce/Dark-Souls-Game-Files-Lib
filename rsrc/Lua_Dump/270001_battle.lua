local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.5
local localScriptConfigVar8 = 3
local localScriptConfigVar9 = 5.6
local localScriptConfigVar10 = 4
local localScriptConfigVar11 = 14
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 0.9
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 20
HebibitoB_shot270001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   local func1_var7 = ai:GetRandam_Int(30, 60)
   if func1_var5 >= 10 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[6] = 100
      func1_var2[7] = 0
   elseif func1_var5 >= 8 then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, func1_var7)
         func1_var2[1] = 0
         func1_var2[2] = 0
         func1_var2[3] = 0
         func1_var2[4] = 0
         func1_var2[5] = 0
         func1_var2[6] = 15
         func1_var2[7] = 0
         func1_var2[9] = 85
      else
         func1_var2[1] = 0
         func1_var2[2] = 0
         func1_var2[3] = 0
         func1_var2[4] = 0
         func1_var2[5] = 0
         func1_var2[6] = 100
         func1_var2[7] = 0
         func1_var2[9] = 0
      end
   elseif func1_var5 >= 5.7 then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, func1_var7)
         func1_var2[1] = 0
         func1_var2[2] = 0
         func1_var2[3] = 0
         func1_var2[4] = 0
         func1_var2[5] = 0
         func1_var2[6] = 10
         func1_var2[7] = 0
         func1_var2[9] = 90
      else
         func1_var2[1] = 0
         func1_var2[2] = 0
         func1_var2[3] = 0
         func1_var2[4] = 0
         func1_var2[5] = 0
         func1_var2[6] = 100
         func1_var2[7] = 0
      end
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[6] = 100
      func1_var2[7] = 0
   else
      func1_var2[1] = 20
      func1_var2[2] = 25
      func1_var2[3] = 25
      func1_var2[4] = 0
      func1_var2[5] = 25
      func1_var2[6] = 0
      func1_var2[7] = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, HebibitoB_shot270001_Act01)
   local func1_var8 = {localScriptConfigVar1, 0, 0, 0, nil, nil, nil, nil}
   func1_var4[2] = func1_var8
   func1_var8 = {localScriptConfigVar5, 0, 3004, DIST_Middle}
   func1_var4[3] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, HebibitoB_shot270001_Act04)
   func1_var3[4] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, HebibitoB_shot270001_Act05)
   func1_var3[5] = func1_var8
   func1_var8 = {3007, DIST_Far, nil}
   func1_var4[6] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, HebibitoB_shot270001_Act07)
   func1_var3[7] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, HebibitoB_shot270001_Act09)
   func1_var3[9] = func1_var8
   func1_var8 = {0, 50, 5, 5, 0, 20, 20}
   local func1_var9 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var8)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var9, func1_var4)
end

HebibitoB_shot270001_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar3
   local func2_var5 = localScriptConfigVar3 + 2
   local func2_var6 = 0
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 5)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoB_shot270001_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar7
   local func3_var5 = localScriptConfigVar7 + 2
   local func3_var6 = 0
   Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoB_shot270001_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar13
   local func4_var5 = localScriptConfigVar13 + 2
   local func4_var6 = 0
   Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3008, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoB_shot270001_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoB_shot270001_Act09 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoB_shot270001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HebibitoB_shot270001Battle_Terminate = function(ai, goal)
end

HebibitoB_shot270001Battle_Interupt = function(ai, goal)
   local func9_var2 = 3
   local func9_var3 = 25
   local func9_var4 = 30
   local func9_var5 = 35
   local func9_var6 = 35
   if FindAttack_Step(ai, goal, func9_var2, func9_var3, func9_var4, func9_var5, func9_var6) then
      return true
   end
   local func9_var7 = 3
   local func9_var8 = 25
   local func9_var9 = 30
   local func9_var10 = 35
   local func9_var11 = 35
   local func9_var12 = 3
   if Damaged_Step(ai, goal, func9_var7, func9_var8, func9_var9, func9_var10, func9_var11, func9_var12) then
      return true
   end
   local func9_var13 = 10
   local func9_var14 = 50
   local func9_var15 = ai:GetRandam_Int(1, 100)
   local func9_var16 = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, func9_var13, func9_var14) then
      if func9_var16 >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var17 = 10
   local func9_var18 = 40
   local func9_var19 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func9_var17, func9_var18) then
      if func9_var19 >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func9_var20 = 10.5
   local func9_var21 = 20
   local func9_var22 = 0
   local func9_var23 = 40
   local func9_var24 = ai:GetRandam_Int(1, 100)
   local func9_var25 = ai:GetRandam_Int(1, 100)
   local func9_var26 = ai:GetDist(TARGET_ENE_0)
   local func9_var27 = Shoot_2dist(ai, goal, func9_var20, func9_var21, func9_var22, func9_var23)
   if func9_var27 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   elseif func9_var27 == 2 then
      if func9_var24 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      elseif func9_var25 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
      return true
   end
   local func9_var28 = 15
   local func9_var29 = 30
   local func9_var30 = 35
   local func9_var31 = 35
   local func9_var32 = 3
   if RebByOpGuard_Step(ai, goal, func9_var28, func9_var29, func9_var30, func9_var31, func9_var32) then
      return true
   end
   return false
end


