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
PondAunt6530Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetDist(TARGET_ENE_0)
   local func1_var5 = ai:GetDist(TARGET_LOCALPLAYER)
   local func1_var6 = ai:IsSearchTarget(TARGET_ENE_0)
   local func1_var7 = ai:GetEventRequest(0)
   local func1_var8 = ai:GetNpcThinkParamID()
   local func1_var9 = ai:GetMp(TARGET_SELF)
   local func1_var10 = 0
   if func1_var8 == 6530 then
      PointFrontOfWall = 1402997
   end
   if func1_var7 == 10 then
      ai:SetEventMoveTarget(PointFrontOfWall)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, 3, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, 0.1, TARGET_SELF, true, -1)
   elseif func1_var5 <= 0.1 then
      if func1_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
      elseif func1_var2 <= 85 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 25), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
      end
   elseif func1_var5 <= 0.4 then
      if func1_var2 <= 20 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_LOCALPLAYER, 1, TARGET_LOCALPLAYER, true, -1)
      elseif func1_var2 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 1.5, TARGET_LOCALPLAYER, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(20, 25), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_LOCALPLAYER, 0, 0, 0)
      end
   elseif func1_var5 >= 20 or func1_var4 >= 10 or func1_var6 == false then
      local func1_var11 = true
      if func1_var5 >= 2.2 then
         func1_var11 = false
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, func1_var11, -1)
   else
      PondAunt6530_Battle(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

PondAunt6530_Battle = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetDist(TARGET_ENE_0)
   local func2_var9 = 1
   local func2_var10 = ai:GetNumber(0)
   if func2_var10 >= 5 then
      func2_var9 = 0
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == false and ai:IsBothHandMode(TARGET_SELF) and func2_var7 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   if func2_var8 >= 8 then
      func2_var2[1] = 10
      func2_var2[3] = 15
      func2_var2[7] = 20
      func2_var2[9] = 50
      func2_var2[10] = 5
   elseif func2_var8 >= 5 then
      func2_var2[1] = 15
      func2_var2[3] = 15
      func2_var2[7] = 15
      func2_var2[9] = 50
      func2_var2[10] = 5
   elseif func2_var8 >= 2.9 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[1] = 10
         func2_var2[3] = 25
         func2_var2[9] = 50
         func2_var2[4] = 15
      else
         func2_var2[1] = 10
         func2_var2[3] = 20
         func2_var2[4] = 15
         func2_var2[9] = 50
         func2_var2[10] = 5
      end
   elseif func2_var8 >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[1] = 10
         func2_var2[3] = 20
         func2_var2[4] = 10
         func2_var2[6] = 10
         func2_var2[9] = 50
      else
         func2_var2[1] = 15
         func2_var2[3] = 20
         func2_var2[6] = 15
         func2_var2[9] = 50
         func2_var2[10] = 5
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func2_var2[1] = 10
      func2_var2[3] = 20
      func2_var2[4] = 10
      func2_var2[6] = 10
      func2_var2[9] = 50
   else
      func2_var2[1] = 15
      func2_var2[3] = 20
      func2_var2[6] = 10
      func2_var2[9] = 50
      func2_var2[10] = 5
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, PondAunt6530_Act01)
   func2_var3[3] = REGIST_FUNC(ai, goal, PondAunt6530_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, PondAunt6530_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, PondAunt6530_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, PondAunt6530_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, PondAunt6530_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, PondAunt6530_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, PondAunt6530_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, PondAunt6530_Act10)
   local func2_var11 = REGIST_FUNC(ai, goal, PondAunt6530_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var11, func2_var4)
end

PondAunt6530_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 5
   local func3_var7 = 50
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt6530_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 5
   local func4_var7 = 50
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   return GetWellSpace_Odds
end

PondAunt6530_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar9
   local func5_var6 = localScriptConfigVar9 + 5
   local func5_var7 = 100
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

PondAunt6530_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func6_var6 = ai:GetNumber(0)
   CommonNPC_ChangeWepR2(ai, goal)
   if localScriptConfigVar11 <= func6_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   elseif func6_var3 <= localScriptConfigVar10 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar10, TARGET_ENE_0, false, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   ai:SetNumber(0, func6_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt6530_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func7_var5 = localScriptConfigVar13
   local func7_var6 = localScriptConfigVar13 + 5
   local func7_var7 = 50
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt6530_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   if ai:IsTargetGuard(TARGET_ENE_0) == true and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   local func8_var5 = localScriptConfigVar15
   local func8_var6 = localScriptConfigVar15 + 5
   local func8_var7 = 50
   NPC_Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

PondAunt6530_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   if func9_var3 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt6530_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt6530_Act10 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

PondAunt6530_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = 3
   if func12_var3 <= 5 then
      if func12_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func12_var4 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif func12_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func12_var3 <= 15 then
      if func12_var4 <= 70 then
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

PondAunt6530Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

PondAunt6530Battle_Terminate = function(ai, goal)
end

PondAunt6530Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetRandam_Int(1, 100)
   local func15_var6 = ai:GetNpcThinkParamID()
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func15_var7 = 3
      local func15_var8 = 10
      local func15_var9 = 3
      if func15_var2 <= func15_var7 and func15_var3 <= func15_var8 then
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
      local func15_var7 = 3
      local func15_var8 = 80
      if func15_var2 <= func15_var7 and func15_var3 <= func15_var8 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      if func15_var6 == 6530 then
         local func15_var7 = 5
         local func15_var8 = 80
         if func15_var2 < func15_var7 and func15_var3 <= func15_var8 then
            goal:ClearSubGoal()
            if func15_var3 <= 60 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
            end
         else
            local func15_var7 = 3
            local func15_var8 = 10
            if func15_var2 < func15_var7 and func15_var3 <= func15_var8 then
               goal:ClearSubGoal()
               if func15_var3 <= 60 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
               end
            end
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         if ai:IsInterupt(INTERUPT_GuardBreak) then
            local func15_var7 = 2
            local func15_var8 = 80
            if func15_var2 <= func15_var7 and func15_var3 <= func15_var8 then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
               return true
            end
         end
         if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
            local func15_var7 = 3
            local func15_var8 = 10
            if func15_var2 < func15_var7 then
               if func15_var3 <= func15_var8 then
                  goal:ClearSubGoal()
                  if func15_var4 <= func15_var8 then
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
            local func15_var7 = 50
            if func15_var3 <= func15_var7 then
               goal:ClearSubGoal()
               if func15_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
               else
                  local func15_var8 = localScriptConfigVar3
                  local func15_var9 = localScriptConfigVar3 + 5
                  local func15_var10 = 100
                  NPC_Approach_Act(ai, goal, func15_var8, func15_var9, func15_var10)
                  goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
               end
               return true
            end
         end
         return false
end


