local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 4.5
local localScriptConfigVar2 = 4
local localScriptConfigVar3 = 6.5
local localScriptConfigVar4 = 6.5
local localScriptConfigVar5 = 10
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 4.5
local localScriptConfigVar8 = 12
local localScriptConfigVar9 = 25
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 4.5
SpearDemon226000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 12 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[9] = 5
      func1_var2[5] = 75
      func1_var2[6] = 0
      func1_var2[7] = 10
   elseif func1_var5 >= 6.5 then
      func1_var2[1] = 10
      func1_var2[2] = 10
      func1_var2[9] = 10
      func1_var2[5] = 0
      func1_var2[6] = 0
      func1_var2[7] = 70
   elseif func1_var5 >= 4 then
      func1_var2[1] = 25
      func1_var2[2] = 35
      func1_var2[9] = 25
      func1_var2[5] = 0
      func1_var2[6] = 0
      func1_var2[7] = 15
   else
      func1_var2[1] = 15
      func1_var2[2] = 20
      func1_var2[9] = 15
      func1_var2[5] = 0
      func1_var2[6] = 50
      func1_var2[7] = 0
   end
   local func1_var6 = {localScriptConfigVar13, 0, 3008, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar1, 0, 10, 40}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar11, 0, 10, 20, 3007, 3009, 3010}
   func1_var4[9] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, SpearDemon226000_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = {3005, DIST_Far}
   func1_var4[6] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, SpearDemon226000_Act07)
   func1_var3[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, SpearDemon226000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

SpearDemon226000_Act05 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar9
   local func2_var6 = localScriptConfigVar9 + 2
   local func2_var7 = 0
   local func2_var8 = 3006
   local func2_var9 = DIST_None
   local func2_var10 = 1.5
   local func2_var11 = 20
   Approach_and_Attack_Act(ai, goal, func2_var5, func2_var6, func2_var7, func2_var8, func2_var9, func2_var10, func2_var11)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

SpearDemon226000_Act07 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   if func3_var3 <= 6.5 then
      local func3_var5 = localScriptConfigVar3
      local func3_var6 = localScriptConfigVar3 + 2
      local func3_var7 = 0
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var4 <= 30 then
      local func3_var5 = localScriptConfigVar3
      local func3_var6 = localScriptConfigVar3 + 2
      local func3_var7 = 0
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      local func3_var5 = localScriptConfigVar5
      local func3_var6 = localScriptConfigVar5 + 2
      local func3_var7 = 0
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

SpearDemon226000_ActAfter_AdjustSpace = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   if func4_var4 <= 45 then
   elseif func4_var4 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   elseif func4_var5 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   end
   return true
   return false
end

SpearDemon226000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SpearDemon226000Battle_Terminate = function(ai, goal)
end

SpearDemon226000Battle_Interupt = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = 3
   local func7_var6 = 25
   local func7_var7 = 60
   local func7_var8 = 20
   local func7_var9 = 20
   local func7_var10 = 3.5
   if FindAttack_Step(ai, goal, func7_var5, func7_var6, func7_var7, func7_var8, func7_var9, func7_var10) then
      return true
   end
   local func7_var11 = 3
   local func7_var12 = 25
   local func7_var13 = 60
   local func7_var14 = 20
   local func7_var15 = 20
   local func7_var16 = 3.5
   if Damaged_Step(ai, goal, func7_var11, func7_var12, func7_var13, func7_var14, func7_var15, func7_var16) then
      return true
   end
   local func7_var17 = 6.5
   local func7_var18 = 30
   if GuardBreak_Act(ai, goal, func7_var17, func7_var18) then
      if func7_var2 <= 4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var19 = 6.5
   local func7_var20 = 50
   if MissSwing_Int(ai, goal, func7_var19, func7_var20) then
      if func7_var2 <= 4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func7_var21 = 8
   local func7_var22 = 60
   if UseItem_Act(ai, goal, func7_var21, func7_var22) then
      if func7_var2 <= 4 then
         if func7_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local func7_var23 = 8
   local func7_var24 = 18
   local func7_var25 = 0
   local func7_var26 = 60
   local func7_var27 = Shoot_2dist(ai, goal, func7_var23, func7_var24, func7_var25, func7_var26)
   if func7_var27 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      return true
   elseif func7_var27 == 2 then
      if func7_var3 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      elseif func7_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
      return true
   end
   local func7_var28 = 50
   local func7_var29 = 60
   local func7_var30 = 20
   local func7_var31 = 20
   local func7_var32 = 3.5
   if RebByOpGuard_Step(ai, goal, func7_var28, func7_var29, func7_var30, func7_var31, func7_var32) then
      return true
   end
   return false
end


