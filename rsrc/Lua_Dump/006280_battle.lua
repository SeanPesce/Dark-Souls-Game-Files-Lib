local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 4.2
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 4.2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.1
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.3
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 3.8
local localScriptConfigVar14 = 4
local localScriptConfigVar15 = 5.6
OnionKnight6280Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   if ai:IsTargetGuard(TARGET_ENE_0) == false and ai:IsBothHandMode(TARGET_SELF) and func1_var7 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if func1_var8 >= 8 then
      func1_var2[1] = 45
      func1_var2[3] = 45
      func1_var2[7] = 5
      func1_var2[8] = 5
      func1_var2[10] = 5
   elseif func1_var8 >= 5 then
      func1_var2[1] = 35
      func1_var2[3] = 40
      func1_var2[7] = 5
      func1_var2[8] = 15
      func1_var2[10] = 5
   elseif func1_var8 >= 2.9 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 30
         func1_var2[3] = 30
         func1_var2[4] = 15
         func1_var2[8] = 25
      else
         func1_var2[1] = 35
         func1_var2[3] = 35
         func1_var2[4] = 13
         func1_var2[8] = 12
         func1_var2[10] = 5
      end
   elseif func1_var8 >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 21
         func1_var2[3] = 21
         func1_var2[4] = 22
         func1_var2[8] = 21
         func1_var2[6] = 15
      else
         func1_var2[1] = 20
         func1_var2[3] = 20
         func1_var2[4] = 20
         func1_var2[8] = 20
         func1_var2[6] = 15
         func1_var2[10] = 5
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var2[1] = 15
      func1_var2[3] = 15
      func1_var2[4] = 25
      func1_var2[8] = 25
      func1_var2[6] = 20
   else
      func1_var2[1] = 15
      func1_var2[3] = 15
      func1_var2[4] = 23
      func1_var2[8] = 22
      func1_var2[6] = 15
      func1_var2[10] = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, OnionKnight6280_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, OnionKnight6280_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, OnionKnight6280_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, OnionKnight6280_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, OnionKnight6280_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, OnionKnight6280_Act06)
   func1_var3[7] = REGIST_FUNC(ai, goal, OnionKnight6280_Act07)
   func1_var3[8] = REGIST_FUNC(ai, goal, OnionKnight6280_Act08)
   func1_var3[9] = REGIST_FUNC(ai, goal, OnionKnight6280_Act09)
   func1_var3[10] = REGIST_FUNC(ai, goal, OnionKnight6280_Act10)
   local func1_var9 = REGIST_FUNC(ai, goal, OnionKnight6280_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var9, func1_var4)
end

OnionKnight6280_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 5
   local func2_var7 = 100
   NPC_Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 4)
   if func2_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

OnionKnight6280_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func3_var5 = Guard_NormalR_max
   local func3_var6 = Guard_NormalR_max + 5
   local func3_var7 = 100
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func3_var4 <= 60 then
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

OnionKnight6280_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 5
   local func4_var7 = 100
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

OnionKnight6280_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar9
   local func5_var6 = localScriptConfigVar9 + 5
   local func5_var7 = 100
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

OnionKnight6280_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetWepCateRight(TARGET_SELF)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Parry, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

OnionKnight6280_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func7_var5 = localScriptConfigVar1
   local func7_var6 = localScriptConfigVar1 + 5
   local func7_var7 = 100
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

OnionKnight6280_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func8_var5 = localScriptConfigVar15
   local func8_var6 = localScriptConfigVar15 + 5
   local func8_var7 = 100
   NPC_Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

OnionKnight6280_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   if func9_var3 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

OnionKnight6280_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

OnionKnight6280_Act10 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

OnionKnight6280_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = 3
   if func12_var3 <= 100 then
      if func12_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

OnionKnight6280Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

OnionKnight6280Battle_Terminate = function(ai, goal)
end

OnionKnight6280Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func15_var6 = 3
      local func15_var7 = 75
      if func15_var2 <= func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, combRunDist, TARGET_ENE_0, true, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
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
   if ai:IsInterupt(INTERUPT_GuardBreak) then
      local func15_var6 = 3
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
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func15_var6 = 3
      local func15_var7 = 50
      if func15_var2 < func15_var6 and func15_var3 <= func15_var7 then
         goal:ClearSubGoal()
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Int(3, 5), TARGET_ENE_0, func15_var6, TARGET_ENE_0, true, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func15_var6 = 75
      if func15_var3 <= func15_var6 then
         goal:ClearSubGoal()
         local func15_var7 = localScriptConfigVar3
         local func15_var8 = localScriptConfigVar3 + 5
         local func15_var9 = 100
         NPC_Approach_Act(ai, goal, func15_var7, func15_var8, func15_var9)
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      end
      return true
   end
   return false
end


