local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.8
local localScriptConfigVar4 = 2.5
local localScriptConfigVar5 = 3.5
local localScriptConfigVar6 = 3.5
local localScriptConfigVar7 = 5.2
local localScriptConfigVar8 = 5
local localScriptConfigVar9 = 7
local localScriptConfigVar10 = 2
local localScriptConfigVar11 = 5.7
HusiFight_Ax254001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest(3)
   if func1_var6 == 1 then
      func1_var2[8] = 100
   elseif func1_var5 >= 8 then
      func1_var2[2] = 40
      func1_var2[3] = 20
      func1_var2[5] = 0
      func1_var2[7] = 40
   elseif func1_var5 >= 4 then
      func1_var2[2] = 50
      func1_var2[3] = 30
      func1_var2[5] = 0
      func1_var2[7] = 20
   elseif func1_var5 >= 2.5 then
      func1_var2[2] = 65
      func1_var2[3] = 30
      func1_var2[5] = 0
      func1_var2[7] = 5
   else
      func1_var2[2] = 70
      func1_var2[3] = 30
      func1_var2[5] = 0
      func1_var2[7] = 0
   end
   local func1_var7 = {localScriptConfigVar1, 0, 5, 15, nil, nil, nil, 80}
   func1_var4[2] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Ax254001_Act03)
   func1_var3[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Ax254001_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Ax254001_Act07)
   func1_var3[7] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Ax254001_Act08)
   func1_var3[8] = func1_var7
   func1_var7 = {0, 80, 0, 0, 0, 10, 10}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

HusiFight_Ax254001_Act03 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar3
   local func2_var6 = localScriptConfigVar3 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 55 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Ax254001_Act05 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar10
   local func3_var5 = localScriptConfigVar11
   local func3_var6 = localScriptConfigVar11 + 2
   local func3_var7 = 100
   Approach_or_Leave_Act(ai, goal, func3_var4, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3008, TARGET_ENE_0, DIST_None)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Ax254001_Act07 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   local func4_var6 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar8 <= func4_var3 and func4_var4 <= 20 then
      local func4_var7 = localScriptConfigVar9
      local func4_var8 = localScriptConfigVar9 + 2
      local func4_var9 = 0
      local func4_var10 = 3007
      local func4_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11)
      if func4_var6 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif localScriptConfigVar6 <= func4_var3 and func4_var5 <= 50 then
      local func4_var7 = localScriptConfigVar7
      local func4_var8 = localScriptConfigVar7 + 2
      local func4_var9 = 0
      local func4_var10 = 3006
      local func4_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11)
      if func4_var6 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
   else
      local func4_var7 = localScriptConfigVar5
      local func4_var8 = localScriptConfigVar5 + 2
      local func4_var9 = 0
      local func4_var10 = 3005
      local func4_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11)
      if func4_var6 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Ax254001_Act08 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   local func5_var6 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiFight_Ax254001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiFight_Ax254001Battle_Terminate = function(ai, goal)
end

HusiFight_Ax254001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   local func8_var6 = ai:GetEventRequest(3)
   local func8_var7 = 3
   local func8_var8 = 15
   local func8_var9 = 40
   local func8_var10 = 30
   local func8_var11 = 30
   if FindAttack_Step(ai, goal, func8_var7, func8_var8, func8_var9, func8_var10, func8_var11) then
      return true
   end
   local func8_var12 = 3
   local func8_var13 = 15
   local func8_var14 = 40
   local func8_var15 = 30
   local func8_var16 = 30
   local func8_var17 = 3.5
   if Damaged_Step(ai, goal, func8_var12, func8_var13, func8_var14, func8_var15, func8_var16, func8_var17) then
      return true
   end
   local func8_var18 = 3.5
   local func8_var19 = 50
   if MissSwing_Int(ai, goal, func8_var18, func8_var19) then
      if func8_var5 >= 1.8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func8_var20 = 7.5
   local func8_var21 = 15
   local func8_var22 = 0
   local func8_var23 = 20
   local func8_var24 = Shoot_2dist(ai, goal, func8_var20, func8_var21, func8_var22, func8_var23)
   if func8_var24 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3.5)
   elseif func8_var24 == 2 then
      if func8_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3.5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3.5)
      end
      return true
   end
   local func8_var25 = 20
   local func8_var26 = 40
   local func8_var27 = 30
   local func8_var28 = 30
   local func8_var29 = 3.5
   if RebByOpGuard_Step(ai, goal, func8_var25, func8_var26, func8_var27, func8_var28, func8_var29) then
      return true
   end
   local func8_var30 = 3.5
   local func8_var31 = 30
   if SuccessGuard_Act(ai, goal, func8_var30, func8_var31) then
      if func8_var5 >= 1.8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


