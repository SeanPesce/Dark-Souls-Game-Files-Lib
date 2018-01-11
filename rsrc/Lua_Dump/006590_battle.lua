local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.7
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1
local localScriptConfigVar6 = 8
local localScriptConfigVar7 = 8
local localScriptConfigVar8 = 8
local localScriptConfigVar9 = 8
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 0.8
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1
local localScriptConfigVar14 = 3
local localScriptConfigVar15 = 4
HeldKnight_laughtrec6590Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetDist(TARGET_ENE_0)
   local func1_var5 = ai:GetDist(TARGET_LOCALPLAYER)
   local func1_var6 = ai:IsSearchTarget(TARGET_ENE_0)
   local func1_var7 = ai:GetEventRequest(0)
   local func1_var8 = ai:GetNpcThinkParamID()
   local func1_var9 = 0
   if func1_var8 == 6590 then
      PointFrontOfWall = 1012997
   elseif func1_var8 == 6591 then
      PointFrontOfWall = 1002997
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
      local func1_var10 = true
      if func1_var5 >= 2.2 then
         func1_var10 = false
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, func1_var10, -1)
   else
      HeldKnight_laughtrec6590_Battle(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

HeldKnight_laughtrec6590_Battle = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetDist(TARGET_ENE_0)
   local func2_var5 = 2
   local func2_var6 = {}
   local func2_var7 = {}
   local func2_var8 = {}
   Common_Clear_Param(func2_var6, func2_var7, func2_var8)
   local func2_var9 = ai:GetRandam_Int(1, 100)
   local func2_var10 = ai:GetRandam_Int(1, 100)
   local func2_var11 = ai:GetDist(TARGET_ENE_0)
   local func2_var12 = 1
   local func2_var13 = ai:GetNumber(0)
   if func2_var13 >= 5 or ai:HasSpecialEffectId(TARGET_SELF, 610) then
      func2_var12 = 0
   end
   local func2_var14 = 1
   local func2_var15 = ai:GetNumber(1)
   if func2_var15 >= 5 or ai:HasSpecialEffectId(TARGET_SELF, 1800) or ai:HasSpecialEffectId(TARGET_SELF, 610) then
      func2_var14 = 0
   end
   local func2_var16 = 1
   local func2_var17 = ai:GetNumber(2)
   if func2_var17 >= 5 or ai:HasSpecialEffectId(TARGET_SELF, 1800) or ai:HasSpecialEffectId(TARGET_SELF, 610) then
      func2_var16 = 0
   end
   local func2_var18 = ai:GetHpRate(TARGET_SELF)
   local func2_var19 = 0
   if func2_var18 <= 0.5 then
      func2_var19 = 1
   end
   if func2_var11 >= 8 then
      func2_var6[1] = 15
      func2_var6[3] = 15
      func2_var6[4] = 0
      func2_var6[5] = 0
      func2_var6[6] = 70
      func2_var6[7] = 0
   elseif func2_var11 >= 3 then
      func2_var6[1] = 20
      func2_var6[3] = 20
      func2_var6[4] = 0
      func2_var6[5] = 0
      func2_var6[6] = 60
      func2_var6[7] = 0
   elseif func2_var11 >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var6[1] = 10
         func2_var6[3] = 20
         func2_var6[4] = 20
         func2_var6[5] = 0
         func2_var6[6] = 0
         func2_var6[7] = 50
      else
         func2_var6[1] = 20
         func2_var6[3] = 30
         func2_var6[4] = 0
         func2_var6[5] = 0
         func2_var6[6] = 0
         func2_var6[7] = 50
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func2_var6[1] = 0
      func2_var6[3] = 15
      func2_var6[4] = 15
      func2_var6[5] = 20
      func2_var6[6] = 0
      func2_var6[7] = 50
   else
      func2_var6[1] = 15
      func2_var6[3] = 15
      func2_var6[4] = 0
      func2_var6[5] = 20
      func2_var6[6] = 0
      func2_var6[7] = 50
   end
   -- Tried to add an 'end' here but it's incorrect
   func2_var7[1] = REGIST_FUNC(ai, goal, HeldKnight_laughtrec6590_Act01)
   func2_var7[3] = REGIST_FUNC(ai, goal, HeldKnight_laughtrec6590_Act03)
   func2_var7[4] = REGIST_FUNC(ai, goal, HeldKnight_laughtrec6590_Act04)
   func2_var7[5] = REGIST_FUNC(ai, goal, HeldKnight_laughtrec6590_Act05)
   func2_var7[6] = REGIST_FUNC(ai, goal, HeldKnight_laughtrec6590_Act06)
   func2_var7[7] = REGIST_FUNC(ai, goal, HeldKnight_laughtrec6590_Act07)
   local func2_var20 = REGIST_FUNC(ai, goal, HeldKnight_laughtrec6590_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func2_var6, func2_var7, func2_var20, func2_var8)
end

HeldKnight_laughtrec6590_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 5
   local func3_var7 = 0
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func3_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeldKnight_laughtrec6590_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 5
   local func4_var7 = 0
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

HeldKnight_laughtrec6590_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar5
   local func5_var6 = localScriptConfigVar5 + 5
   local func5_var7 = 0
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeldKnight_laughtrec6590_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar1
   local func6_var6 = localScriptConfigVar1 + 5
   local func6_var7 = 0
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeldKnight_laughtrec6590_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar15
   local func7_var6 = localScriptConfigVar15 + 5
   local func7_var7 = 0
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeldKnight_laughtrec6590_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepL2(ai, goal)
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

HeldKnight_laughtrec6590_ActAfter_AdjustSpace = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = 3
   if func9_var3 <= 5 then
      if func9_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func9_var4 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif func9_var3 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func9_var3 <= 60 then
      CommonNPC_ChangeWepL2(ai, goal)
      if func9_var4 <= 70 then
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

HeldKnight_laughtrec6590Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HeldKnight_laughtrec6590Battle_Terminate = function(ai, goal)
end

HeldKnight_laughtrec6590Battle_Interupt = function(ai, goal)
   local func12_var2 = ai:GetDist(TARGET_ENE_0)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = ai:GetRandam_Int(1, 100)
   local func12_var6 = 3
   local func12_var7 = 60
   local func12_var8 = 4
   local func12_var9 = 60
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func12_var10 = 3
      local func12_var11 = 80
      if func12_var2 <= func12_var10 and func12_var3 <= func12_var11 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func12_var10 = 3
      local func12_var11 = 40
      if func12_var2 < func12_var10 and func12_var3 <= func12_var11 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func12_var10 = 3
      local func12_var11 = 10
      if func12_var2 < func12_var10 then
         if func12_var3 <= func12_var11 then
            goal:ClearSubGoal()
            if func12_var4 <= func12_var11 then
               if func12_var5 <= 50 then
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
      local func12_var10 = 50
      if func12_var3 <= func12_var10 then
         goal:ClearSubGoal()
         if func12_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end


