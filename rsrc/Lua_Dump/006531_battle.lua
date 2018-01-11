local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.6
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.1
local localScriptConfigVar10 = 5
local localScriptConfigVar11 = 10
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1
local localScriptConfigVar14 = 4
local localScriptConfigVar15 = 5
PondAunt_Enemy6531Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   local func1_var9 = 1
   local func1_var10 = ai:GetNumber(0)
   if func1_var10 >= 5 then
      func1_var9 = 0
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == false and ai:IsBothHandMode(TARGET_SELF) and func1_var7 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if func1_var8 >= 8 then
      func1_var2[1] = 10
      func1_var2[3] = 35
      func1_var2[7] = 50
      func1_var2[10] = 5
   elseif func1_var8 >= 5 then
      func1_var2[1] = 15
      func1_var2[3] = 40
      func1_var2[7] = 40
      func1_var2[10] = 5
   elseif func1_var8 >= 2.9 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 35
         func1_var2[3] = 50
         func1_var2[4] = 15
      else
         func1_var2[1] = 30
         func1_var2[3] = 50
         func1_var2[4] = 15
         func1_var2[10] = 5
      end
   elseif func1_var8 >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 18
         func1_var2[3] = 42
         func1_var2[4] = 10
         func1_var2[6] = 20
         func1_var2[9] = 10
      else
         func1_var2[1] = 20
         func1_var2[3] = 45
         func1_var2[6] = 20
         func1_var2[9] = 10
         func1_var2[10] = 5
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var2[1] = 15
      func1_var2[3] = 40
      func1_var2[4] = 15
      func1_var2[6] = 20
      func1_var2[9] = 10
   else
      func1_var2[1] = 25
      func1_var2[3] = 40
      func1_var2[6] = 20
      func1_var2[9] = 10
      func1_var2[10] = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act01)
   func1_var3[3] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act06)
   func1_var3[7] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act07)
   func1_var3[8] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act08)
   func1_var3[9] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act09)
   func1_var3[10] = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_Act10)
   local func1_var11 = REGIST_FUNC(ai, goal, PondAunt_Enemy6531_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var11, func1_var4)
end

PondAunt_Enemy6531_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 5
   local func2_var7 = 50
   NPC_Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_Act03 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func3_var5 = localScriptConfigVar3
   local func3_var6 = localScriptConfigVar3 + 5
   local func3_var7 = 50
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar9
   local func4_var6 = localScriptConfigVar9 + 5
   local func4_var7 = 100
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func5_var6 = ai:GetNumber(0)
   CommonNPC_ChangeWepR2(ai, goal)
   if localScriptConfigVar11 <= func5_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   elseif func5_var3 <= localScriptConfigVar10 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar10, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   ai:SetNumber(0, func5_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_Act06 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func6_var5 = localScriptConfigVar13
   local func6_var6 = localScriptConfigVar13 + 5
   local func6_var7 = 50
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_Act07 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func7_var5 = localScriptConfigVar15
   local func7_var6 = localScriptConfigVar15 + 5
   local func7_var7 = 50
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_Act08 = function(ai, goal, func8_param2)
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

PondAunt_Enemy6531_Act09 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_Act10 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt_Enemy6531_ActAfter_AdjustSpace = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetRandam_Int(1, 100)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   local func11_var5 = 3
   if func11_var3 <= 5 then
      if func11_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func11_var4 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif func11_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func11_var3 <= 15 then
      if func11_var4 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

PondAunt_Enemy6531Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

PondAunt_Enemy6531Battle_Terminate = function(ai, goal)
end

PondAunt_Enemy6531Battle_Interupt = function(ai, goal)
   local func14_var2 = ai:GetDist(TARGET_ENE_0)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func14_var6 = 3
      local func14_var7 = 10
      local func14_var8 = 3
      if func14_var2 <= func14_var6 and func14_var3 <= func14_var7 then
         goal:ClearSubGoal()
         if func14_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func14_var6 = 3
      local func14_var7 = 80
      if func14_var2 <= func14_var6 and func14_var3 <= func14_var7 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func14_var6 = 3
      local func14_var7 = 10
      if func14_var2 < func14_var6 and func14_var3 <= func14_var7 then
         goal:ClearSubGoal()
         if func14_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_GuardBreak) then
      local func14_var6 = 2
      local func14_var7 = 100
      if func14_var2 <= func14_var6 and func14_var3 <= func14_var7 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func14_var6 = 3
      local func14_var7 = 10
      if func14_var2 < func14_var6 then
         if func14_var3 <= func14_var7 then
            goal:ClearSubGoal()
            if func14_var4 <= func14_var7 then
               if func14_var5 <= 50 then
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
      local func14_var6 = 50
      if func14_var3 <= func14_var6 then
         goal:ClearSubGoal()
         if func14_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         else
            local func14_var7 = localScriptConfigVar3
            local func14_var8 = localScriptConfigVar3 + 5
            local func14_var9 = 100
            NPC_Approach_Act(ai, goal, func14_var7, func14_var8, func14_var9)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         return true
      end
   end
   return false
end


