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
Hammer225002Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = 0
   local func1_var4 = 0
   local func1_var5 = 0
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 100
   if func1_var2 >= 15 then
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
   local func1_var10 = ai:GetRandam_Int(1, func1_var3 + func1_var4 + func1_var5 + func1_var6 + func1_var7 + func1_var8)
   if func1_var10 <= func1_var3 then
      Hammer225002_Act01(ai, goal)
   elseif func1_var10 <= func1_var3 + func1_var4 then
      Hammer225002_Act02(ai, goal)
   elseif func1_var10 <= func1_var3 + func1_var4 + func1_var5 then
      Hammer225002_Act03(ai, goal)
   elseif func1_var10 <= func1_var3 + func1_var4 + func1_var5 + func1_var6 then
      Hammer225002_Act04(ai, goal)
   elseif func1_var10 <= func1_var3 + func1_var4 + func1_var5 + func1_var6 + func1_var7 then
      Hammer225002_Act05(ai, goal)
   else
      Hammer225002_Act06(ai, goal)
   end
   local func1_var11 = ai:GetRandam_Int(1, 100)
   if func1_var11 <= func1_var9 then
      Hammer225002_GetWellSpace_Act(ai, goal)
   end
end

Hammer225002_Act01 = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 0
   BusyApproach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 17, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer225002_Act02 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = localScriptConfigVar3
   local func3_var5 = localScriptConfigVar3 + 2
   local func3_var6 = 0
   BusyApproach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, -1, 22, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer225002_Act03 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   if func4_var3 <= 50 then
      local func4_var6 = localScriptConfigVar5
      local func4_var7 = localScriptConfigVar5 + 2
      local func4_var8 = 0
      BusyApproach_Act(ai, goal, func4_var6, func4_var7, func4_var8)
      if func4_var4 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 10, 10)
      end
   else
      local func4_var6 = localScriptConfigVar7
      local func4_var7 = localScriptConfigVar7 + 2
      local func4_var8 = 0
      BusyApproach_Act(ai, goal, func4_var6, func4_var7, func4_var8)
      if func4_var4 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 38, 10, 10)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 10, 10)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
end

Hammer225002_Act04 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = localScriptConfigVar9
   local func5_var5 = localScriptConfigVar9 + 2
   local func5_var6 = 0
   BusyApproach_Act(ai, goal, func5_var4, func5_var5, func5_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 27, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer225002_Act05 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = localScriptConfigVar11
   local func6_var5 = localScriptConfigVar11 + 2
   local func6_var6 = 0
   BusyApproach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 14, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer225002_Act06 = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = localScriptConfigVar13
   local func7_var5 = localScriptConfigVar13 + 2
   local func7_var6 = 0
   BusyApproach_Act(ai, goal, func7_var4, func7_var5, func7_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 23, 10, 10)
   GetWellSpace_Odds = 100
end

Hammer225002_GetWellSpace_Act = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   if func8_var3 <= 75 then
   elseif func8_var3 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
      return true
   elseif func8_var3 <= 95 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      return true
   end
   return false
end

Hammer225002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hammer225002Battle_Terminate = function(ai, goal)
   if ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
   end
   if ai:GetNumber(1) == 1 then
      ai:SetNumber(1, 0)
   end
end

Hammer225002Battle_Interupt = function(ai, goal)
   return false
end


