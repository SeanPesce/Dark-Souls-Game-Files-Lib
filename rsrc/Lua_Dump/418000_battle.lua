local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3
local localScriptConfigVar4 = 3
local localScriptConfigVar5 = 5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 3
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.5
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 2.5
OnIf_418000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      Chainman418000_ActAfter(ai, goal)
   end
end

Chainman418000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetHpRate(TARGET_SELF)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = 1
   ai:SetNumber(0, 0)
   if func2_var6 <= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and func2_var7 <= 70 then
      func2_var2[4] = 100
   elseif func2_var6 >= 7 then
      func2_var2[1] = 15
      func2_var2[2] = 15
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 70
      func2_var2[6] = 0
      func2_var2[7] = 0
   elseif func2_var6 >= 4 then
      func2_var2[1] = 25
      func2_var2[2] = 30
      func2_var2[3] = 15
      func2_var2[4] = 10
      func2_var2[5] = 20
      func2_var2[6] = 0
      func2_var2[7] = 0
   elseif func2_var6 >= 2 then
      func2_var2[1] = 20
      func2_var2[2] = 20
      func2_var2[3] = 20
      func2_var2[4] = 15
      func2_var2[5] = 0
      func2_var2[6] = 10
      func2_var2[7] = 15
   else
      func2_var2[1] = 15
      func2_var2[2] = 10
      func2_var2[3] = 15
      func2_var2[4] = 15
      func2_var2[5] = 0
      func2_var2[6] = 30
      func2_var2[7] = 15
   end
   func2_var3[1] = REGIST_FUNC(ai, goal, Chainman418000_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, Chainman418000_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, Chainman418000_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, Chainman418000_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, Chainman418000_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, Chainman418000_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, Chainman418000_Act07)
   func2_var3[10] = REGIST_FUNC(ai, goal, Chainman418000_Act10)
   local func2_var10 = REGIST_FUNC(ai, goal, Chainman418000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var10, func2_var4)
end

Chainman418000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1 + 0
   local func3_var5 = localScriptConfigVar1 + 0
   local func3_var6 = 0
   local func3_var7 = localScriptConfigVar1 + 10
   local func3_var8 = ai:GetRandam_Int(1, 100)
   local func3_var9 = ai:GetRandam_Int(1, 100)
   local func3_var10 = ai:GetHpRate(TARGET_ENE_0)
   local func3_var11 = ai:GetDist(TARGET_FRI_0)
   if func3_var4 <= func3_var3 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 3)
   end
   if func3_var8 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 70)
   elseif func3_var8 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, func3_var7, 0, 70)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func3_var7, 0)
   end
   if func3_var11 <= 15 and func3_var11 >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Chainman418000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar7 + 0
   local func4_var5 = localScriptConfigVar7 + 0
   local func4_var6 = 0
   local func4_var7 = localScriptConfigVar7 + 10
   local func4_var8 = ai:GetRandam_Int(1, 100)
   local func4_var9 = ai:GetRandam_Int(1, 100)
   local func4_var10 = ai:GetHpRate(TARGET_ENE_0)
   local func4_var11 = ai:GetDist(TARGET_FRI_0)
   if func4_var4 <= func4_var3 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6, 3)
   end
   if func4_var8 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, func4_var7, 0, 70)
   elseif func4_var8 <= 45 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, func4_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, func4_var7, 0)
   elseif func4_var8 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, func4_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func4_var7, 0)
   elseif func4_var8 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, func4_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func4_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, func4_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func4_var7, 0)
   end
   if func4_var11 <= 15 and func4_var11 >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Chainman418000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar3 + 0
   local func5_var5 = localScriptConfigVar3 + 0
   local func5_var6 = 0
   local func5_var7 = localScriptConfigVar3 + 10
   local func5_var8 = ai:GetRandam_Int(1, 100)
   local func5_var9 = ai:GetRandam_Int(1, 100)
   local func5_var10 = ai:GetDist(TARGET_FRI_0)
   if func5_var4 <= func5_var3 then
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6, 3)
   end
   if func5_var9 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var7, 0, 70)
   elseif func5_var9 <= 60 then
      if func5_var8 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var7, 0, 70)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func5_var7, 0)
      elseif func5_var8 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var7, 0, 70)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func5_var7, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var7, 0, 70)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, func5_var7, 0)
      end
   elseif func5_var8 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func5_var7, 0)
   elseif func5_var8 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, func5_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, func5_var7, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func5_var7, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   if func5_var10 <= 15 and func5_var10 >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 50
   end
   return GetWellSpace_Odds
end

Chainman418000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar9 + 0
   local func6_var5 = localScriptConfigVar9 + 0
   local func6_var6 = 0
   local func6_var7 = localScriptConfigVar9 + 10
   local func6_var8 = ai:GetRandam_Int(1, 100)
   local func6_var9 = ai:GetRandam_Int(1, 100)
   local func6_var10 = ai:GetDist(TARGET_FRI_0)
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 3)
   end
   if func6_var8 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, func6_var7, 0, 70)
   elseif func6_var8 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, func6_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func6_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, func6_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, func6_var7, 0)
   end
   if func6_var10 <= 15 and func6_var10 >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Chainman418000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar5 + 0
   local func7_var5 = localScriptConfigVar5 + 0
   local func7_var6 = 0
   local func7_var7 = localScriptConfigVar5 + 10
   local func7_var8 = ai:GetRandam_Int(1, 100)
   local func7_var9 = ai:GetRandam_Int(1, 100)
   local func7_var10 = ai:GetHpRate(TARGET_ENE_0)
   local func7_var11 = ai:GetDist(TARGET_FRI_0)
   if func7_var4 <= func7_var3 then
      Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6, 3)
   end
   if func7_var8 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, func7_var7, 2, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, func7_var7, 2, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func7_var7, 0)
   end
   if func7_var11 <= 15 and func7_var11 >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

Chainman418000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = localScriptConfigVar11 + 0
   local func8_var5 = localScriptConfigVar11 + 0
   local func8_var6 = 0
   local func8_var7 = localScriptConfigVar11 + 10
   local func8_var8 = ai:GetRandam_Int(1, 100)
   local func8_var9 = ai:GetRandam_Int(1, 100)
   local func8_var10 = ai:GetDist(TARGET_FRI_0)
   if func8_var4 <= func8_var3 then
      Approach_Act(ai, goal, func8_var4, func8_var5, func8_var6, 3)
   end
   if func8_var8 <= 0 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3007, TARGET_ENE_0, func8_var7, 0, 20)
   elseif func8_var8 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3007, TARGET_ENE_0, func8_var7, 0, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func8_var7, 0)
   elseif func8_var8 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3007, TARGET_ENE_0, func8_var7, 0, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, func8_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3007, TARGET_ENE_0, func8_var7, 0, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, func8_var7, 0)
   end
   if func8_var10 <= 15 and func8_var10 >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 50
   end
   return GetWellSpace_Odds
end

Chainman418000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = localScriptConfigVar13 + 0
   local func9_var5 = localScriptConfigVar13 + 0
   local func9_var6 = 0
   local func9_var7 = localScriptConfigVar13 + 10
   local func9_var8 = ai:GetRandam_Int(1, 100)
   local func9_var9 = ai:GetRandam_Int(1, 100)
   local func9_var10 = ai:GetDist(TARGET_FRI_0)
   if func9_var4 <= func9_var3 then
      Approach_Act(ai, goal, func9_var4, func9_var5, func9_var6, 3)
   end
   if func9_var8 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, func9_var7, 0, 70)
   elseif func9_var8 <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, func9_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var8 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, func9_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var8 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, func9_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func9_var7, 0)
   elseif func9_var8 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, func9_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, func9_var7, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, func9_var7, 0, 70)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, func9_var7, 0)
   end
   if func9_var10 <= 15 and func9_var10 >= 0 then
      GetWellSpace_Odds = 100
   else
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Chainman418000_Act10 = function(ai, goal, func10_param2)
   ai:SetEventMoveTarget(1212651)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 1, TARGET_SELF, true, -1)
end

Chainman418000_ActAfter = function(ai, goal)
   local func11_var2 = ai:GetRandam_Int(1, 100)
   local func11_var3 = ai:GetRandam_Int(1, 100)
   local func11_var4 = ai:GetRandam_Int(0, 1)
   local func11_var5 = ai:GetDist(TARGET_ENE_0)
   local func11_var6 = ai:GetDist(TARGET_FRI_0)
   local func11_var7 = ai:GetRandam_Int(4, 10)
   local func11_var8 = ai:GetRandam_Int(60, 90)
   if func11_var6 <= 3 and func11_var6 >= 0 then
      if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 100) then
         if func11_var3 <= 80 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func11_var7, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
         elseif func11_var3 <= 90 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 1, func11_var8, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 0, func11_var8, true, true, -1)
         end
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_B, 100) then
         if func11_var3 <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, func11_var7, TARGET_ENE_0, 4, TARGET_SELF, true, -1)
         elseif func11_var3 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 1, func11_var8, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 0, func11_var8, true, true, -1)
         end
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
         if func11_var3 <= 20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func11_var7, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
         elseif func11_var3 <= 90 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 1, func11_var8, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 0, func11_var8, true, true, -1)
         end
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
         if func11_var3 <= 20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func11_var7, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
         elseif func11_var3 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 1, func11_var8, true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func11_var7, TARGET_ENE_0, 0, func11_var8, true, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func11_var7, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      end
   elseif func11_var5 <= 2 then
      if func11_var3 <= 0 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func11_var4, func11_var8, true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
      end
   elseif func11_var5 <= 5 then
      if func11_var3 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func11_var4, func11_var8, true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
      end
   elseif func11_var5 <= 10 then
      if func11_var3 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func11_var4, func11_var8, true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
      end
   elseif func11_var3 <= 100 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func11_var4, func11_var8, true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
end

Chainman418000_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

Chainman418000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Chainman418000Battle_Terminate = function(ai, goal)
end

Chainman418000Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetRandam_Int(1, 100)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1212650) and ai:IsInterupt(INTERUPT_HitEnemyWall) then
      goal:ClearSubGoal()
      ai:SetEventMoveTarget(1212651)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, POINT_EVENT, 1, TARGET_ENE_0, true, -1)
      ai:SetNumber(0, 1)
      return true
   end
   if ai:IsInterupt(INTERUPT_Damaged) and ai:GetNumber(0) == 1 then
      goal:ClearSubGoal()
      ai:Replaning()
      return false
   elseif ai:IsInterupt(INTERUPT_Damaged) and func15_var2 <= 40 then
      goal:ClearSubGoal()
      ai:Replaning()
      return false
   end
   local func15_var6 = 10
   local func15_var7 = 10
   if UseItem_Act(ai, goal, func15_var6, func15_var7) then
      goal:ClearSubGoal()
      if func15_var5 <= 3 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3005, TARGET_ENE_0, DIST_None, 0, 70)
      elseif func15_var5 <= 5 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, 0, 70)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
      end
      return true
   end
   local func15_var8 = 4
   local func15_var9 = 20
   local func15_var10 = 40
   local func15_var11 = 70
   local func15_var12 = Shoot_2dist(ai, goal, func15_var8, func15_var9, func15_var10, func15_var11)
   if func15_var12 == 1 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3000, TARGET_ENE_0, DIST_None, 0, 70)
      return true
   elseif func15_var12 == 2 then
      if func15_var5 <= 5 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3004, TARGET_ENE_0, DIST_None, 2, 20)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 4, TARGET_SELF, false, -1)
      end
      return true
   end
   return false
end


