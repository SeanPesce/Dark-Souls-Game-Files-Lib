local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.9
local localScriptConfigVar8 = 6.5
local localScriptConfigVar9 = 8.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 3
local localScriptConfigVar12 = -1.4
local localScriptConfigVar13 = 1.1
OnIf_225000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   if func1_param2 == 0 then
      ai:SetEventMoveTarget(1012745)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 5, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 26, 3009, POINT_EVENT, DIST_None, 5, 5)
   elseif func1_param2 == 1 then
      ai:SetEventMoveTarget(1012744)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 5, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3008, POINT_EVENT, DIST_None, 5, 5)
   elseif func1_param2 == 2 then
      ai:SetEventMoveTarget(1012745)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 5, 0, 0)
   end
end

Hammer_m10_225000Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = 0
   local func2_var4 = 0
   local func2_var5 = 0
   local func2_var6 = 0
   local func2_var7 = 0
   local func2_var8 = 0
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   local func2_var14 = 0
   local func2_var15 = 100
   ai:AddObserveRegion(0, TARGET_SELF, 1012740)
   ai:AddObserveRegion(1, TARGET_SELF, 1012741)
   ai:AddObserveRegion(2, TARGET_ENE_0, 1012742)
   ai:AddObserveRegion(3, TARGET_ENE_0, 1012743)
   ai:AddObserveRegion(4, TARGET_SELF, 1012742)
   ai:AddObserveRegion(5, TARGET_SELF, 1012743)
   if func2_var2 >= 15 then
      func2_var3 = 0
      func2_var4 = 0
      func2_var5 = 25
      func2_var6 = 75
      func2_var7 = 0
      func2_var8 = 0
   elseif func2_var2 >= 7 then
      func2_var3 = 0
      func2_var4 = 0
      func2_var5 = 40
      func2_var6 = 60
      func2_var7 = 0
      func2_var8 = 0
   elseif func2_var2 >= 3 then
      func2_var3 = 20
      func2_var4 = 15
      func2_var5 = 35
      func2_var6 = 0
      func2_var7 = 15
      func2_var8 = 15
   else
      func2_var3 = 20
      func2_var4 = 20
      func2_var5 = 20
      func2_var6 = 0
      func2_var7 = 20
      func2_var8 = 20
   end
   local func2_var16 = ai:GetRandam_Int(1, func2_var3 + func2_var4 + func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 + func2_var13 + func2_var14)
   local func2_var17 = ai:GetNumber(0)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1012743) and ai:IsInsideTargetRegion(TARGET_SELF, 1012742) and func2_var17 == 0 then
      Hammer_m10_225000_Act09(ai, goal)
      ai:SetNumber(0, 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012742) and ai:IsInsideTargetRegion(TARGET_SELF, 1012743) then
      Hammer_m10_225000_Act07(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012743) and func2_var17 == 1 and ai:GetNumber(1) <= 2 then
      Hammer_m10_225000_Act10(ai, goal)
      local func2_var18 = ai:GetNumber(1)
      ai:SetNumber(1, func2_var18 + 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012742) and func2_var17 == 1 then
      Hammer_m10_225000_Act11(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012743) and func2_var17 == 1 and ai:GetNumber(1) == 3 then
      Hammer_m10_225000_Act08(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif func2_var16 <= func2_var3 then
      Hammer_m10_225000_Act01(ai, goal)
   elseif func2_var16 <= func2_var3 + func2_var4 then
      Hammer_m10_225000_Act02(ai, goal)
   elseif func2_var16 <= func2_var3 + func2_var4 + func2_var5 then
      Hammer_m10_225000_Act03(ai, goal)
   elseif func2_var16 <= func2_var3 + func2_var4 + func2_var5 + func2_var6 then
      Hammer_m10_225000_Act04(ai, goal)
   elseif func2_var16 <= func2_var3 + func2_var4 + func2_var5 + func2_var6 + func2_var7 then
      Hammer_m10_225000_Act05(ai, goal)
   elseif func2_var16 <= func2_var3 + func2_var4 + func2_var5 + func2_var6 + func2_var7 + func2_var8 then
      Hammer_m10_225000_Act06(ai, goal)
   elseif func2_var16 <= func2_var3 + func2_var4 + func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 then
      Hammer_m10_225000_Act07(ai, goal)
   else
      Hammer_m10_225000_Act08(ai, goal)
   end
   local func2_var18 = ai:GetRandam_Int(1, 100)
   if func2_var18 <= func2_var15 then
      Hammer_m10_225000_GetWellSpace_Act(ai, goal)
   end
end

Hammer_m10_225000_Act01 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = localScriptConfigVar1
   local func3_var5 = localScriptConfigVar1 + 2
   local func3_var6 = 0
   BusyApproach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 17, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act02 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = localScriptConfigVar3
   local func4_var5 = localScriptConfigVar3 + 2
   local func4_var6 = 0
   BusyApproach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 22, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act03 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   if func5_var3 <= 50 then
      local func5_var6 = localScriptConfigVar5
      local func5_var7 = localScriptConfigVar5 + 2
      local func5_var8 = 0
      BusyApproach_Act(ai, goal, func5_var6, func5_var7, func5_var8)
      if func5_var4 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 10, 10)
      end
   else
      local func5_var6 = localScriptConfigVar7
      local func5_var7 = localScriptConfigVar7 + 2
      local func5_var8 = 0
      BusyApproach_Act(ai, goal, func5_var6, func5_var7, func5_var8)
      if func5_var4 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 10, 10)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act04 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = localScriptConfigVar9
   local func6_var5 = localScriptConfigVar9 + 2
   local func6_var6 = 0
   BusyApproach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 27, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act05 = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = localScriptConfigVar11
   local func7_var5 = localScriptConfigVar11 + 2
   local func7_var6 = 0
   BusyApproach_Act(ai, goal, func7_var4, func7_var5, func7_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 14, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act06 = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = localScriptConfigVar13
   local func8_var5 = localScriptConfigVar13 + 2
   local func8_var6 = 0
   BusyApproach_Act(ai, goal, func8_var4, func8_var5, func8_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 23, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer_m10_225000_Act07 = function(ai, goal)
   ai:SetEventMoveTarget(1012740)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0.8, TARGET_SELF, True, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act08 = function(ai, goal)
   ai:SetEventMoveTarget(1012741)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, POINT_EVENT, 0.7, TARGET_SELF, True, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 26, 0)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act09 = function(ai, goal)
   ai:SetEventMoveTarget(1012741)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 0.1, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_If, 26, 2)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3012, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hamme_m10_r225000_Act12 = function(ai, goal)
   ai:SetEventMoveTarget(1012741)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 0.1, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
end

Hammer_m10_225000_GetWellSpace_Act = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   if func15_var3 <= 30 then
   elseif func15_var3 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
      return true
   elseif func15_var3 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      return true
   end
   return false
end

Hammer_m10_225000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hammer_m10_225000Battle_Terminate = function(ai, goal)
end

Hammer_m10_225000Battle_Interupt = function(ai, goal)
   return false
end


