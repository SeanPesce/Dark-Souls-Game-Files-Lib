local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.2
local localScriptConfigVar4 = 2.9
local localScriptConfigVar5 = 4.2
local localScriptConfigVar6 = 5.7
local localScriptConfigVar7 = 6.8
local localScriptConfigVar8 = 8.4
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = 2
local localScriptConfigVar11 = 5.7
local localScriptConfigVar12 = 1.1
local localScriptConfigVar13 = 2
HusiFight_Sword254000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest(3)
   if func1_var6 == 1 then
      func1_var2[8] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 5
      func1_var2[2] = 35
      func1_var2[3] = 20
      func1_var2[5] = 0
      func1_var2[7] = 40
   elseif func1_var5 >= 4 then
      func1_var2[1] = 10
      func1_var2[2] = 50
      func1_var2[3] = 25
      func1_var2[5] = 0
      func1_var2[7] = 15
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 30
      func1_var2[2] = 50
      func1_var2[3] = 15
      func1_var2[5] = 0
      func1_var2[7] = 5
   else
      func1_var2[1] = 20
      func1_var2[2] = 50
      func1_var2[3] = 30
      func1_var2[5] = 0
      func1_var2[7] = 0
   end
   local func1_var7 = {localScriptConfigVar13, 0, 3010, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = {localScriptConfigVar1, 50, 5, 15, nil, nil, nil, 80}
   func1_var4[2] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Sword254000_Act03)
   func1_var3[3] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Sword254000_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Sword254000_Act07)
   func1_var3[7] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, HusiFight_Sword254000_Act08)
   func1_var3[8] = func1_var7
   func1_var7 = {100, 75, 9, 8, 0, 4, 4}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

HusiFight_Sword254000_Act03 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar3
   local func2_var6 = localScriptConfigVar3 + 2
   local func2_var7 = 50
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 55 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Sword254000_Act05 = function(ai, goal, func3_param2)
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

HusiFight_Sword254000_Act07 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   local func4_var6 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar8 <= func4_var3 and func4_var4 <= 20 then
      local func4_var7 = localScriptConfigVar9
      local func4_var8 = localScriptConfigVar9 + 2
      local func4_var9 = 40
      local func4_var10 = 3007
      local func4_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11)
   elseif localScriptConfigVar6 <= func4_var3 and func4_var5 <= 50 then
      local func4_var7 = localScriptConfigVar7
      local func4_var8 = localScriptConfigVar7 + 2
      local func4_var9 = 40
      local func4_var10 = 3006
      local func4_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11)
   else
      local func4_var7 = localScriptConfigVar5
      local func4_var8 = localScriptConfigVar5 + 2
      local func4_var9 = 40
      local func4_var10 = 3005
      local func4_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_Sword254000_Act08 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   local func5_var6 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiFight_Sword254000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiFight_Sword254000Battle_Terminate = function(ai, goal)
end

HusiFight_Sword254000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   local func8_var6 = 3
   local func8_var7 = 15
   local func8_var8 = 30
   local func8_var9 = 40
   local func8_var10 = 30
   local func8_var11 = 30
   local func8_var12 = 3.5
   local func8_var13 = 50
   local func8_var14 = 3.5
   local func8_var15 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func8_var6, func8_var7, func8_var8, func8_var9, func8_var10, func8_var11, func8_var12, func8_var13, func8_var14, func8_var15) then
      return true
   end
   local func8_var16 = 3
   local func8_var17 = 15
   local func8_var18 = 30
   local func8_var19 = 40
   local func8_var20 = 30
   local func8_var21 = 30
   local func8_var22 = 3.5
   local func8_var23 = 50
   local func8_var24 = 3.5
   local func8_var25 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func8_var16, func8_var17, func8_var18, func8_var19, func8_var20, func8_var21, func8_var22, func8_var23, func8_var24, func8_var25) then
      return true
   end
   local func8_var26 = 4.2
   local func8_var27 = 50
   if MissSwing_Int(ai, goal, func8_var26, func8_var27) then
      if func8_var5 <= 2.2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
   local func8_var28 = 5.7
   local func8_var29 = 15
   local func8_var30 = 0
   local func8_var31 = 30
   local func8_var32 = Shoot_2dist(ai, goal, func8_var28, func8_var29, func8_var30, func8_var31)
   if func8_var32 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func8_var32 == 2 then
      if func8_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         return true
      elseif func8_var2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func8_var33 = 20
   local func8_var34 = 40
   local func8_var35 = 30
   local func8_var36 = 30
   local func8_var37 = 3.5
   if RebByOpGuard_Step(ai, goal, func8_var33, func8_var34, func8_var35, func8_var36, func8_var37) then
      return true
   end
   local func8_var38 = 4.2
   local func8_var39 = 30
   if SuccessGuard_Act(ai, goal, func8_var38, func8_var39) then
      if func8_var5 <= 2.2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
   return false
end


