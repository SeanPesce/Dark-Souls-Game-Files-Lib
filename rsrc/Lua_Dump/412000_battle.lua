local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.5
local localScriptConfigVar4 = 4
local localScriptConfigVar5 = 5.5
local localScriptConfigVar6 = 4
local localScriptConfigVar7 = 6.2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2
Kyu_DoguKishi412000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetDistY(TARGET_ENE_0)
   if func1_var6 >= 20 then
      func1_var2[6] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 50
      func1_var2[4] = 50
      func1_var2[5] = 0
   elseif func1_var5 >= 4 then
      func1_var2[1] = 0
      func1_var2[2] = 0
      func1_var2[3] = 50
      func1_var2[4] = 50
      func1_var2[5] = 0
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 35
      func1_var2[2] = 35
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 30
   else
      func1_var2[1] = 40
      func1_var2[2] = 40
      func1_var2[3] = 0
      func1_var2[4] = 0
      func1_var2[5] = 20
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Kyu_DoguKishi412000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Kyu_DoguKishi412000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Kyu_DoguKishi412000_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, Kyu_DoguKishi412000_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, Kyu_DoguKishi412000_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, Kyu_DoguKishi412000_Act06)
   local func1_var7 = {0, 20, 30, 35, 15, 0, 0}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

Kyu_DoguKishi412000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 30
   local func2_var7 = localScriptConfigVar1 + 2
   local func2_var8 = 0
   if func2_var5 <= func2_var3 then
      Approach_Act(ai, goal, func2_var5, func2_var6, func2_var8, 3)
   end
   if func2_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func2_var7, 1, 90)
   elseif func2_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func2_var7, 1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func2_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func2_var7, 1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, func2_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func2_var7, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kyu_DoguKishi412000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar3
   local func3_var6 = localScriptConfigVar3 + 30
   local func3_var7 = localScriptConfigVar3 - 0.2
   local func3_var8 = 0
   if func3_var5 <= func3_var3 then
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var8, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, func3_var7, 1, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, func3_var7, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_DoguKishi412000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar5
   local func4_var6 = localScriptConfigVar5 + 30
   local func4_var7 = localScriptConfigVar5 - 2.2
   local func4_var8 = 0
   if func4_var5 <= func4_var3 then
      Approach_Act(ai, goal, func4_var5, func4_var6, func4_var8, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, func4_var7, 1, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, func4_var7, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_DoguKishi412000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 30
   local func5_var7 = localScriptConfigVar7 + 1
   local func5_var8 = 0
   if func5_var5 <= func5_var3 then
      Approach_Act(ai, goal, func5_var5, func5_var6, func5_var8, 3)
   end
   if ai:IsFinishTimer(0) == false then
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.35, TARGET_ENE_0, 0, 0, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, func5_var7, 1, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kyu_DoguKishi412000_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar9
   local func6_var5 = localScriptConfigVar9 + 30
   local func6_var6 = localScriptConfigVar9 + 0.5
   local func6_var7 = 0
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, func6_var6, 1, 90)
   ai:SetTimer(0, 7)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kyu_DoguKishi412000_Act06 = function(ai, goal, func7_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, false, -1)
end

Kyu_DoguKishi412000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kyu_DoguKishi412000Battle_Terminate = function(ai, goal)
end

Kyu_DoguKishi412000Battle_Interupt = function(ai, goal)
   local func10_var2 = 6.5
   local func10_var3 = 35
   local func10_var4 = ai:GetDist(TARGET_ENE_0)
   local func10_var5 = ai:GetRandam_Int(1, 100)
   local func10_var6 = 0
   if GuardBreak_Act(ai, goal, func10_var2, func10_var3) then
      if func10_var4 >= 4 then
         if func10_var5 <= 50 then
            local func10_var7 = localScriptConfigVar5 + 0.8
            local func10_var8 = localScriptConfigVar5 + 30
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3005, TARGET_ENE_0, func10_var7, 1, 90)
         else
            local func10_var7 = localScriptConfigVar7 + 1
            local func10_var8 = localScriptConfigVar7 + 30
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3006, TARGET_ENE_0, func10_var7, 1, 90)
         end
      elseif func10_var5 <= 50 then
         local func10_var7 = localScriptConfigVar1 + 0.5
         local func10_var8 = localScriptConfigVar1 + 30
         Approach_Act(ai, goal, AppDist, func10_var8, func10_var6, 3)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3000, TARGET_ENE_0, func10_var7, 1, 90)
      else
         local func10_var7 = localScriptConfigVar3 + 0.8
         local func10_var8 = localScriptConfigVar3 + 30
         Approach_Act(ai, goal, AppDist, func10_var8, func10_var6, 3)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, func10_var7, 1, 90)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   local func10_var7 = 6.5
   local func10_var8 = 20
   local func10_var9 = 60
   local func10_var10 = 85
   local func10_var11 = ai:GetRandam_Int(1, 100)
   local func10_var12 = ai:GetRandam_Int(1, 100)
   local func10_var13 = ai:GetDist(TARGET_ENE_0)
   local func10_var14 = Shoot_2dist(ai, goal, func10_var7, func10_var8, func10_var9, func10_var10)
   if func10_var14 == 1 then
      if func10_var13 >= 4 then
         if func10_var11 <= 50 then
            local func10_var15 = localScriptConfigVar5 + 0.8
            local func10_var16 = localScriptConfigVar5 + 30
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3005, TARGET_ENE_0, func10_var15, 1, 90)
         else
            local func10_var15 = localScriptConfigVar7 + 1
            local func10_var16 = localScriptConfigVar7 + 30
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3006, TARGET_ENE_0, func10_var15, 1, 90)
         end
      elseif func10_var11 <= 50 then
         local func10_var15 = localScriptConfigVar1
         local func10_var16 = localScriptConfigVar1 + 0.5
         local func10_var17 = localScriptConfigVar1 + 30
         Approach_Act(ai, goal, func10_var15, func10_var17, func10_var6, 3)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3000, TARGET_ENE_0, func10_var16, 1, 90)
      else
         local func10_var15 = localScriptConfigVar3
         local func10_var16 = localScriptConfigVar3 + 0.8
         local func10_var17 = localScriptConfigVar3 + 30
         Approach_Act(ai, goal, func10_var15, func10_var17, func10_var6, 3)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, func10_var16, 1, 90)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   elseif func10_var14 == 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
      return true
   end
   return false
end


