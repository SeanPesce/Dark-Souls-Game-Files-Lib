local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.9
local localScriptConfigVar4 = 2.5
local localScriptConfigVar5 = 3.8
local localScriptConfigVar6 = 3.5
local localScriptConfigVar7 = 5.5
local localScriptConfigVar8 = 5
local localScriptConfigVar9 = 7.5
local localScriptConfigVar10 = 2
local localScriptConfigVar11 = 5.7
HusiFight_FireBom254002Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var7 = ai:GetEventRequest(3)
   local func1_var8 = math.abs(func1_var6)
   if func1_var7 == 1 then
      func1_var2[8] = 100
   elseif func1_var5 >= 5 and func1_var6 < -3 then
      func1_var2[2] = 0
      func1_var2[3] = 0
      func1_var2[5] = 0
      func1_var2[6] = 100
      func1_var2[7] = 0
   elseif func1_var5 >= 8 then
      func1_var2[2] = 3
      func1_var2[3] = 3
      func1_var2[5] = 91
      func1_var2[6] = 0
      func1_var2[7] = 3
   elseif func1_var5 >= 4 then
      func1_var2[2] = 10
      func1_var2[3] = 5
      func1_var2[5] = 80
      func1_var2[6] = 0
      func1_var2[7] = 5
   elseif func1_var5 >= 2.5 then
      func1_var2[2] = 10
      func1_var2[3] = 10
      func1_var2[5] = 75
      func1_var2[6] = 0
      func1_var2[7] = 5
   else
      func1_var2[2] = 40
      func1_var2[3] = 40
      func1_var2[5] = 20
      func1_var2[6] = 0
      func1_var2[7] = 0
   end
   local func1_var9 = {localScriptConfigVar1, 0, 5, 15, nil, nil, nil, nil}
   func1_var4[2] = func1_var9
   func1_var9 = REGIST_FUNC
   func1_var9 = func1_var9(ai, goal, HusiFight_FireBom254002_Act03)
   func1_var3[3] = func1_var9
   func1_var9 = REGIST_FUNC
   func1_var9 = func1_var9(ai, goal, HusiFight_FireBom254002_Act05)
   func1_var3[5] = func1_var9
   func1_var9 = REGIST_FUNC
   func1_var9 = func1_var9(ai, goal, HusiFight_FireBom254002_Act06)
   func1_var3[6] = func1_var9
   func1_var9 = REGIST_FUNC
   func1_var9 = func1_var9(ai, goal, HusiFight_FireBom254002_Act07)
   func1_var3[7] = func1_var9
   func1_var9 = REGIST_FUNC
   func1_var9 = func1_var9(ai, goal, HusiFight_FireBom254002_Act08)
   func1_var3[8] = func1_var9
   func1_var9 = {0, 70, 0, 0, 0, 15, 15}
   local func1_var10 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var9)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var10, func1_var4)
end

HusiFight_FireBom254002_Act03 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar3
   local func2_var6 = localScriptConfigVar3 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act05 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar11 <= func3_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, localScriptConfigVar10, TARGET_ENE_0, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act06 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   local func5_var6 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar8 <= func5_var3 and func5_var4 <= 20 then
      local func5_var7 = localScriptConfigVar9
      local func5_var8 = localScriptConfigVar9 + 2
      local func5_var9 = 0
      local func5_var10 = 3007
      local func5_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func5_var7, func5_var8, func5_var9, func5_var10, func5_var11)
   elseif localScriptConfigVar6 <= func5_var3 and func5_var5 <= 50 then
      local func5_var7 = localScriptConfigVar7
      local func5_var8 = localScriptConfigVar7 + 2
      local func5_var9 = 0
      local func5_var10 = 3006
      local func5_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func5_var7, func5_var8, func5_var9, func5_var10, func5_var11)
   else
      local func5_var7 = localScriptConfigVar5
      local func5_var8 = localScriptConfigVar5 + 2
      local func5_var9 = 0
      local func5_var10 = 3005
      local func5_var11 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func5_var7, func5_var8, func5_var9, func5_var10, func5_var11)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiFight_FireBom254002_Act08 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(1, 100)
   local func6_var6 = ai:GetRandam_Int(1, 100)
   ai:SetEventMoveTarget(1022711)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 0.8, TARGET_SELF, True, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

OnIf_254002 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetRandam_Int(1, 100)
   local func7_var6 = ai:GetDist(TARGET_ENE_0)
   if func7_param2 == 0 then
      if localScriptConfigVar11 + 3 <= func7_var6 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_ENE_0, 0, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
      end
   end
end

HusiFight_FireBom254002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiFight_FireBom254002Battle_Terminate = function(ai, goal)
end

HusiFight_FireBom254002Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 3
   local func10_var7 = 15
   local func10_var8 = 40
   local func10_var9 = 30
   local func10_var10 = 30
   if FindAttack_Step(ai, goal, func10_var6, func10_var7, func10_var8, func10_var9, func10_var10) then
      return true
   end
   local func10_var11 = 3
   local func10_var12 = 15
   local func10_var13 = 40
   local func10_var14 = 30
   local func10_var15 = 30
   local func10_var16 = 4
   if Damaged_Step(ai, goal, func10_var11, func10_var12, func10_var13, func10_var14, func10_var15, func10_var16) then
      return true
   end
   local func10_var17 = 5.7
   local func10_var18 = 30
   if MissSwing_Int(ai, goal, func10_var17, func10_var18) then
      if func10_var5 <= 1.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
   local func10_var19 = 5.7
   local func10_var20 = 15
   local func10_var21 = 0
   local func10_var22 = 15
   local func10_var23 = Shoot_2dist(ai, goal, func10_var19, func10_var20, func10_var21, func10_var22)
   if func10_var23 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func10_var23 == 2 then
      if func10_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func10_var24 = 20
   local func10_var25 = 40
   local func10_var26 = 30
   local func10_var27 = 30
   local func10_var28 = 3.5
   if RebByOpGuard_Step(ai, goal, func10_var24, func10_var25, func10_var26, func10_var27, func10_var28) then
      return true
   end
   return false
end


