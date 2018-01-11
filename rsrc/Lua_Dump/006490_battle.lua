local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.2
local localScriptConfigVar4 = 3
local localScriptConfigVar5 = 6
local localScriptConfigVar6 = 4.5
local localScriptConfigVar7 = 5.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2.3
Attendant_of_laughtrecA6490Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   local func1_var9 = 1
   local func1_var10 = 1
   local func1_var11 = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var11 = 1
   end
   if func1_var8 >= 4.5 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[5] = 40
      func1_var2[7] = 40
      func1_var2[19] = 10 * func1_var11
      func1_var2[20] = 10
   elseif func1_var8 >= 3 then
      func1_var2[1] = 15
      func1_var2[2] = 15
      func1_var2[5] = 40
      func1_var2[19] = 50 * func1_var11
      func1_var2[20] = 30
   elseif func1_var8 >= 1 then
      func1_var2[1] = 25
      func1_var2[2] = 30
      func1_var2[17] = 15 * func1_var11
      func1_var2[19] = 100 * func1_var11
      func1_var2[20] = 30
   else
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[17] = 30 * func1_var11
      func1_var2[19] = 100 * func1_var11
      func1_var2[20] = 30
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_Act02)
   func1_var3[5] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_Act05)
   func1_var3[7] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_Act07)
   func1_var3[17] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_Act17)
   func1_var3[19] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_Act19)
   func1_var3[20] = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_Act20)
   local func1_var12 = REGIST_FUNC(ai, goal, Attendant_of_laughtrecA6490_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var12, func1_var4)
end

Attendant_of_laughtrecA6490_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func2_var5 = localScriptConfigVar11
   local func2_var6 = localScriptConfigVar11 + 5
   local func2_var7 = 100
   NPC_Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func2_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Attendant_of_laughtrecA6490_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func3_var5 = localScriptConfigVar3
   local func3_var6 = localScriptConfigVar3 + 5
   local func3_var7 = 100
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Attendant_of_laughtrecA6490_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func4_var5 = localScriptConfigVar5
   local func4_var6 = localScriptConfigVar5 + 5
   local func4_var7 = 100
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 20, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_None, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Attendant_of_laughtrecA6490_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 5
   local func5_var7 = 100
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_None, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Attendant_of_laughtrecA6490_Act17 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar9
   local func6_var6 = localScriptConfigVar9 + 5
   local func6_var7 = 100
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Attendant_of_laughtrecA6490_Act19 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   local func7_var5 = localScriptConfigVar11
   local func7_var6 = localScriptConfigVar11 + 5
   local func7_var7 = 100
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Attendant_of_laughtrecA6490_Act20 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   if func8_var3 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Attendant_of_laughtrecA6490_ActAfter_AdjustSpace = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   if func9_var3 <= 80 then
      if func9_var4 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Attendant_of_laughtrecA6490Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Attendant_of_laughtrecA6490Battle_Terminate = function(ai, goal)
end

Attendant_of_laughtrecA6490Battle_Interupt = function(ai, goal)
   local func12_var2 = ai:GetDist(TARGET_ENE_0)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func12_var6 = 3
      local func12_var7 = 40
      local func12_var8 = 3
      if func12_var2 <= func12_var6 and func12_var3 <= func12_var7 then
         goal:ClearSubGoal()
         if func12_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, combRunDist, TARGET_ENE_0, true, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func12_var6 = 3
      local func12_var7 = 80
      if func12_var2 <= func12_var6 and func12_var3 <= func12_var7 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func12_var6 = 3
      local func12_var7 = 50
      if func12_var2 < func12_var6 and func12_var3 <= func12_var7 then
         goal:ClearSubGoal()
         if func12_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, func12_var6, TARGET_ENE_0, true, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_GuardBreak) then
      local func12_var6 = 2
      local func12_var7 = 60
      if func12_var2 <= func12_var6 and func12_var3 <= func12_var7 then
         goal:ClearSubGoal()
         CommonNPC_ChangeWepR1(ai, goal)
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      goal:ClearSubGoal()
      ai:Replaning()
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
      return true
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func12_var6 = 75
      if func12_var3 <= func12_var6 then
         if func12_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         else
            local func12_var7 = localScriptConfigVar3
            local func12_var8 = localScriptConfigVar3 + 5
            local func12_var9 = 100
            NPC_Approach_Act(ai, goal, func12_var7, func12_var8, func12_var9)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         return true
      end
      return true
   end
   return false
end


