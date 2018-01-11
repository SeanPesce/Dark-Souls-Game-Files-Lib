local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.3
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1
Frustrated_merchant6250Battle_Activate = function(ai, goal)
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
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var9 = 10
   end
   if func1_var8 >= 8 then
      func1_var2[1] = 35 * func1_var10
      func1_var2[2] = 35 * func1_var10
      func1_var2[9] = 35 * func1_var9
      func1_var2[10] = 35 * func1_var9
      func1_var2[20] = 30 * func1_var9
   elseif func1_var8 >= 3.5 then
      func1_var2[1] = 30 * func1_var10
      func1_var2[2] = 30 * func1_var10
      func1_var2[7] = 5 * func1_var10
      func1_var2[9] = 30 * func1_var9
      func1_var2[10] = 30 * func1_var9
      func1_var2[15] = 5 * func1_var9
      func1_var2[20] = 40 * func1_var9
   elseif func1_var8 >= 2 then
      func1_var2[1] = 32 * func1_var10
      func1_var2[2] = 33 * func1_var10
      func1_var2[9] = 32 * func1_var9
      func1_var2[10] = 33 * func1_var9
      func1_var2[17] = 20 * func1_var9
      func1_var2[20] = 35 * func1_var9
   elseif func1_var8 >= 1 then
      func1_var2[1] = 18 * func1_var10
      func1_var2[2] = 17 * func1_var10
      func1_var2[5] = 15 * func1_var10
      func1_var2[9] = 10 * func1_var9
      func1_var2[10] = 10 * func1_var9
      func1_var2[13] = 13 * func1_var10
      func1_var2[17] = 20 * func1_var9
   else
      func1_var2[1] = 17 * func1_var10
      func1_var2[2] = 18 * func1_var10
      func1_var2[5] = 15 * func1_var10
      func1_var2[9] = 17 * func1_var9
      func1_var2[10] = 18 * func1_var9
      func1_var2[13] = 15 * func1_var10
      func1_var2[17] = 20 * func1_var9
      func1_var2[20] = 30 * func1_var9
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act02)
   func1_var3[5] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act05)
   func1_var3[7] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act07)
   func1_var3[9] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act09)
   func1_var3[10] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act10)
   func1_var3[13] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act13)
   func1_var3[15] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act15)
   func1_var3[17] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act17)
   func1_var3[20] = REGIST_FUNC(ai, goal, Frustrated_merchant6250_Act20)
   local func1_var11 = REGIST_FUNC(ai, goal, Frustrated_merchant6250_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var11, func1_var4)
end

Frustrated_merchant6250_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 5
   local func2_var7 = 100
   NPC_Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func3_var5 = localScriptConfigVar3
   local func3_var6 = localScriptConfigVar3 + 5
   local func3_var7 = 100
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act05 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func4_var5 = localScriptConfigVar9
   local func4_var6 = localScriptConfigVar9 + 5
   local func4_var7 = 100
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func5_var5 = Rolling_Atk_max
   local func5_var6 = Rolling_Atk_max + 5
   local func5_var7 = 50
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act09 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func6_var5 = localScriptConfigVar5
   local func6_var6 = localScriptConfigVar5 + 5
   local func6_var7 = 100
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   if func6_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act10 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func7_var5 = localScriptConfigVar7
   local func7_var6 = localScriptConfigVar7 + 5
   local func7_var7 = 100
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act13 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func8_var5 = localScriptConfigVar11
   local func8_var6 = localScriptConfigVar11 + 5
   local func8_var7 = 100
   NPC_Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act15 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func9_var5 = Rolling_AtkW_max
   local func9_var6 = Rolling_AtkW_max + 5
   local func9_var7 = 100
   NPC_Approach_Act(ai, goal, func9_var5, func9_var6, func9_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act17 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = localScriptConfigVar13
   local func10_var6 = localScriptConfigVar13 + 5
   local func10_var7 = 100
   NPC_KATATE_Switch(ai, goal)
   NPC_Approach_Act(ai, goal, func10_var5, func10_var6, func10_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Frustrated_merchant6250_Act20 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   if func11_var3 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Frustrated_merchant6250_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = 3
   if func12_var3 <= 100 then
      if func12_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3.5, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Frustrated_merchant6250Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Frustrated_merchant6250Battle_Terminate = function(ai, goal)
end

Frustrated_merchant6250Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func15_var6 = 3
      local func15_var7 = 10
      local func15_var8 = 3
      if func15_var2 <= func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func15_var6 = 3
      local func15_var7 = 80
      if func15_var2 <= func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func15_var6 = 3
      local func15_var7 = 10
      if func15_var2 < func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_GuardBreak) then
      local func15_var6 = 2
      local func15_var7 = 100
      if func15_var2 <= func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func15_var6 = 3
      local func15_var7 = 10
      if func15_var2 < func15_var6 then
         if func15_var3 <= func15_var7 then
            goal:ClearSubGoal()
            if func15_var4 <= func15_var7 then
               if func15_var5 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
               end
            else
               ai:Replaning()
               goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
               return true
            end
         else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
            ai:Replaning()
            return true
         end
      else
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
         ai:Replaning()
         return true
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func15_var6 = 50
      if func15_var3 <= func15_var6 then
         goal:ClearSubGoal()
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         else
            local func15_var7 = localScriptConfigVar3
            local func15_var8 = localScriptConfigVar3 + 5
            local func15_var9 = 100
            NPC_Approach_Act(ai, goal, func15_var7, func15_var8, func15_var9)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         return true
      end
   end
   return false
end


