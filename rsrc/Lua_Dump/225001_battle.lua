local localScriptConfigVar0 = -0.5
local localScriptConfigVar1 = 3.4
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.6
local localScriptConfigVar4 = 2.3
local localScriptConfigVar5 = 4.5
local localScriptConfigVar6 = -1.5
local localScriptConfigVar7 = 4.5
local localScriptConfigVar8 = 5.5
local localScriptConfigVar9 = 9.2
local localScriptConfigVar10 = -1
local localScriptConfigVar11 = 3.5
local localScriptConfigVar12 = -1.4
local localScriptConfigVar13 = 1.1
Hammer_m11_225001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = 0
   local func1_var4 = 0
   local func1_var5 = 0
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   if not ai:IsInsideTargetRegion(TARGET_ENE_0, 1812990) then
      func1_var9 = 100
   elseif func1_var2 >= 15 then
      func1_var3 = 0
      func1_var4 = 0
      func1_var5 = 25
      func1_var6 = 75
      func1_var7 = 0
      func1_var8 = 0
   elseif func1_var2 >= 7 then
      func1_var3 = 0
      func1_var4 = 0
      func1_var5 = 40
      func1_var6 = 60
      func1_var7 = 0
      func1_var8 = 0
   elseif func1_var2 >= 3 then
      func1_var3 = 20
      func1_var4 = 15
      func1_var5 = 35
      func1_var6 = 0
      func1_var7 = 15
      func1_var8 = 15
   else
      func1_var3 = 20
      func1_var4 = 20
      func1_var5 = 20
      func1_var6 = 0
      func1_var7 = 20
      func1_var8 = 20
   end
   local func1_var11 = ai:GetRandam_Int(1, func1_var3 + func1_var4 + func1_var5 + func1_var6 + func1_var7 + func1_var8 + func1_var9)
   local func1_var12 = ai:GetNumber(0)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and func1_var12 == 0 then
      Hammer225001_Act08(ai, goal)
      ai:SetNumber(0, 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and func1_var12 == 1 and ai:GetNumber(1) <= 2 then
      Hammer225001_Act09(ai, goal)
      local func1_var13 = ai:GetNumber(1)
      ai:SetNumber(1, func1_var13 + 1)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812996) and func1_var12 == 1 then
      Hammer225001_Act10(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812350) and func1_var12 == 1 and ai:GetNumber(1) == 3 then
      Hammer225001_Act11(ai, goal)
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812351) then
      Hammer225001_Act12(ai, goal)
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1812352) then
      Hammer225001_Act12(ai, goal)
   elseif func1_var11 <= func1_var3 then
      Hammer225001_Act01(ai, goal)
      func1_var10 = 100
   elseif func1_var11 <= func1_var3 + func1_var4 then
      Hammer225001_Act02(ai, goal)
      func1_var10 = 100
   elseif func1_var11 <= func1_var3 + func1_var4 + func1_var5 then
      Hammer225001_Act03(ai, goal)
      func1_var10 = 100
   elseif func1_var11 <= func1_var3 + func1_var4 + func1_var5 + func1_var6 then
      Hammer225001_Act04(ai, goal)
      func1_var10 = 100
   elseif func1_var11 <= func1_var3 + func1_var4 + func1_var5 + func1_var6 + func1_var7 then
      Hammer225001_Act05(ai, goal)
      func1_var10 = 100
   elseif func1_var11 <= func1_var3 + func1_var4 + func1_var5 + func1_var6 + func1_var7 + func1_var8 then
      Hammer225001_Act06(ai, goal)
      func1_var10 = 100
   else
      Hammer225001_Act07(ai, goal)
      func1_var10 = 0
   end
   local func1_var13 = ai:GetRandam_Int(1, 100)
   if func1_var13 <= func1_var10 then
      Hammer225001_GetWellSpace_Act(ai, goal)
   end
end

Hammer225001_Act01 = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 0
   BusyApproach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act02 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = localScriptConfigVar3
   local func3_var5 = localScriptConfigVar3 + 2
   local func3_var6 = 0
   BusyApproach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
end

Hammer225001_Act03 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = localScriptConfigVar5
   local func4_var5 = localScriptConfigVar5 + 2
   local func4_var6 = 0
   BusyApproach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
   if func4_var3 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 45)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 45)
   end
   GetWellSpace_Odds = 100
end

Hammer225001_Act04 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = localScriptConfigVar9
   local func5_var5 = localScriptConfigVar9 + 2
   local func5_var6 = 0
   BusyApproach_Act(ai, goal, func5_var4, func5_var5, func5_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act05 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = localScriptConfigVar11
   local func6_var5 = localScriptConfigVar11 + 2
   local func6_var6 = 0
   BusyApproach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act06 = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = localScriptConfigVar13
   local func7_var5 = localScriptConfigVar13 + 2
   local func7_var6 = 0
   BusyApproach_Act(ai, goal, func7_var4, func7_var5, func7_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
end

Hammer225001_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 2, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF)
   GetWellSpace_Odds = 0
end

Hammer225001_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3011, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3012, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
end

Hammer225001_Act12 = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   local func13_var4 = 6
   local func13_var5 = 8
   local func13_var6 = 0
   BusyApproach_Act(ai, goal, func13_var4, func13_var5, func13_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
end

Hammer225001_GetWellSpace_Act = function(ai, goal)
   local func14_var2 = ai:GetDist(TARGET_ENE_0)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   if func14_var3 <= 75 then
   elseif func14_var3 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   elseif func14_var3 <= 95 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      return true
   end
   return false
end

Hammer_m11_225001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hammer_m11_225001Battle_Terminate = function(ai, goal)
end

Hammer_m11_225001Battle_Interupt = function(ai, goal)
   local func17_var2 = 3
   local func17_var3 = 30
   local func17_var4 = 100
   local func17_var5 = 0
   local func17_var6 = 0
   local func17_var7 = 5
   if Damaged_Step(ai, goal, func17_var2, func17_var3, func17_var4, func17_var5, func17_var6, func17_var7) then
      return true
   end
   return false
end


