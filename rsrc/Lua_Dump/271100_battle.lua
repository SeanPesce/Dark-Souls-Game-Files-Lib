local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2
local localScriptConfigVar4 = 0.5
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 5
local localScriptConfigVar8 = 0.5
local localScriptConfigVar9 = 2.6
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 5.1
local localScriptConfigVar12 = 4.5
local localScriptConfigVar13 = 8.3
local localScriptConfigVar14 = 7.5
local localScriptConfigVar15 = 11.5
CrystalAmber271100Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 11.5 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[3] = 5
      func1_var2[4] = 5
      func1_var2[5] = 20
      func1_var2[6] = 0
      func1_var2[7] = 60
   elseif func1_var5 >= 8.3 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[3] = 5
      func1_var2[4] = 5
      func1_var2[5] = 30
      func1_var2[6] = 0
      func1_var2[7] = 50
   elseif func1_var5 >= 5.1 then
      func1_var2[1] = 10
      func1_var2[2] = 10
      func1_var2[3] = 10
      func1_var2[4] = 10
      func1_var2[5] = 30
      func1_var2[6] = 10
      func1_var2[7] = 20
   else
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[3] = 20
      func1_var2[4] = 20
      func1_var2[5] = 0
      func1_var2[6] = 20
      func1_var2[7] = 0
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, CrystalAmber271100_Act01)
   local func1_var6 = {localScriptConfigVar1, 0, 30, 70, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar9, 0, 3005, DIST_Middle, nil}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, CrystalAmber271100_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, CrystalAmber271100_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, CrystalAmber271100_Act06)
   func1_var3[6] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, CrystalAmber271100_Act07)
   func1_var3[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, CrystalAmber271100_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

CrystalAmber271100_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar3
   local func2_var6 = localScriptConfigVar3 + 2
   local func2_var7 = 0
   local func2_var8 = 3002
   local func2_var9 = DIST_Middle
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 2.5, 5)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

CrystalAmber271100_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar5
   local func3_var6 = localScriptConfigVar5 + 2
   local func3_var7 = 0
   local func3_var8 = 3003
   local func3_var9 = DIST_Middle
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2.5, 22)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

CrystalAmber271100_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar11
   local func4_var6 = localScriptConfigVar11 + 2
   local func4_var7 = 0
   local func4_var8 = 3006
   local func4_var9 = DIST_Middle
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 2.5, 37)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

CrystalAmber271100_Act06 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 2
   local func5_var7 = 0
   local func5_var8 = 3004
   local func5_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var5, func5_var6, func5_var7, func5_var8, func5_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

CrystalAmber271100_Act07 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(1, 100)
   if localScriptConfigVar14 <= func6_var3 and func6_var4 <= 40 then
      local func6_var6 = localScriptConfigVar15
      local func6_var7 = localScriptConfigVar15 + 2
      local func6_var8 = 0
      local func6_var9 = 3008
      local func6_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10)
   else
      local func6_var6 = localScriptConfigVar13
      local func6_var7 = localScriptConfigVar13 + 2
      local func6_var8 = 0
      local func6_var9 = 3007
      local func6_var10 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

CrystalAmber271100_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(0, 100)
   local func7_var4 = ai:GetRandam_Int(0, 1)
   local func7_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func7_var4, TARGET_ENE_0, 2)
   if func7_var3 <= 60 then
   elseif func7_var3 <= 65 and func7_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func7_var4, ai:GetRandam_Int(30, 45), true, true, -1)
   elseif func7_var3 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
   elseif func7_var3 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local func7_var6 = ai:GetRandam_Int(1, 100)
      if func7_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

CrystalAmber271100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CrystalAmber271100Battle_Terminate = function(ai, goal)
end

CrystalAmber271100Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 2
   local func10_var7 = 30
   if GuardBreak_Act(ai, goal, func10_var6, func10_var7) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func10_var8 = 8
   local func10_var9 = 25
   if UseItem_Act(ai, goal, func10_var8, func10_var9) then
      if func10_var5 <= 4.4 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


