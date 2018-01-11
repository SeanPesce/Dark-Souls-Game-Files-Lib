local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.8
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.6
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.5
local localScriptConfigVar12 = 3
local localScriptConfigVar13 = 5
local localScriptConfigVar14 = 3
local localScriptConfigVar15 = 10
OnIf_6740 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      Kiaran6740_ActAfter(ai, goal)
   end
end

Kiaran6740Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   CommonNPC_ChangeWepR2(ai, goal)
   CommonNPC_ChangeWepL2(ai, goal)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetDist(TARGET_ENE_0)
   if func2_var7 >= 8 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[2] = 10
         func2_var2[3] = 5
         func2_var2[8] = 0
         func2_var2[9] = 5
         func2_var2[10] = 10
         func2_var2[11] = 10
         func2_var2[13] = 10
         func2_var2[14] = 0
         func2_var2[15] = 0
         func2_var2[16] = 30
         func2_var2[17] = 0
         func2_var2[20] = 20
      else
         func2_var2[1] = 10
         func2_var2[2] = 10
         func2_var2[3] = 10
         func2_var2[4] = 0
         func2_var2[5] = 0
         func2_var2[6] = 30
         func2_var2[7] = 0
         func2_var2[8] = 0
         func2_var2[9] = 10
         func2_var2[10] = 10
         func2_var2[20] = 20
      end
   elseif func2_var7 >= 5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[2] = 5
         func2_var2[3] = 5
         func2_var2[8] = 0
         func2_var2[9] = 10
         func2_var2[10] = 10
         func2_var2[11] = 10
         func2_var2[13] = 5
         func2_var2[14] = 0
         func2_var2[15] = 0
         func2_var2[16] = 25
         func2_var2[17] = 0
         func2_var2[20] = 30
      else
         func2_var2[1] = 10
         func2_var2[2] = 10
         func2_var2[3] = 10
         func2_var2[4] = 0
         func2_var2[5] = 0
         func2_var2[6] = 20
         func2_var2[7] = 0
         func2_var2[8] = 0
         func2_var2[9] = 10
         func2_var2[10] = 10
         func2_var2[20] = 30
      end
   elseif func2_var7 >= 2.8 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[2] = 10
         func2_var2[3] = 10
         func2_var2[8] = 5
         func2_var2[9] = 0
         func2_var2[10] = 10
         func2_var2[11] = 10
         func2_var2[13] = 10
         func2_var2[14] = 0
         func2_var2[15] = 10
         func2_var2[16] = 10
         func2_var2[17] = 5
         func2_var2[20] = 20
      else
         func2_var2[1] = 10
         func2_var2[2] = 15
         func2_var2[3] = 10
         func2_var2[4] = 0
         func2_var2[5] = 10
         func2_var2[6] = 10
         func2_var2[7] = 5
         func2_var2[8] = 5
         func2_var2[9] = 5
         func2_var2[10] = 10
         func2_var2[11] = 5
         func2_var2[13] = 5
         func2_var2[20] = 10
      end
   elseif func2_var7 >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func2_var2[2] = 10
         func2_var2[3] = 10
         func2_var2[8] = 5
         func2_var2[9] = 0
         func2_var2[10] = 5
         func2_var2[11] = 15
         func2_var2[13] = 15
         func2_var2[14] = 15
         func2_var2[15] = 5
         func2_var2[16] = 5
         func2_var2[17] = 10
         func2_var2[20] = 0
      else
         func2_var2[1] = 5
         func2_var2[2] = 15
         func2_var2[3] = 10
         func2_var2[4] = 10
         func2_var2[5] = 10
         func2_var2[6] = 10
         func2_var2[7] = 10
         func2_var2[8] = 10
         func2_var2[9] = 0
         func2_var2[10] = 10
         func2_var2[20] = 0
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func2_var2[2] = 10
      func2_var2[3] = 10
      func2_var2[8] = 5
      func2_var2[9] = 0
      func2_var2[10] = 10
      func2_var2[11] = 10
      func2_var2[13] = 15
      func2_var2[14] = 15
      func2_var2[15] = 20
      func2_var2[16] = 0
      func2_var2[17] = 5
      func2_var2[20] = 0
   else
      func2_var2[1] = 10
      func2_var2[2] = 15
      func2_var2[3] = 15
      func2_var2[4] = 15
      func2_var2[5] = 10
      func2_var2[6] = 5
      func2_var2[7] = 10
      func2_var2[8] = 10
      func2_var2[9] = 0
      func2_var2[10] = 10
      func2_var2[20] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, Kiaran6740_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, Kiaran6740_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, Kiaran6740_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, Kiaran6740_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, Kiaran6740_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, Kiaran6740_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, Kiaran6740_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, Kiaran6740_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, Kiaran6740_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, Kiaran6740_Act10)
   func2_var3[11] = REGIST_FUNC(ai, goal, Kiaran6740_Act11)
   func2_var3[13] = REGIST_FUNC(ai, goal, Kiaran6740_Act13)
   func2_var3[14] = REGIST_FUNC(ai, goal, Kiaran6740_Act14)
   func2_var3[15] = REGIST_FUNC(ai, goal, Kiaran6740_Act15)
   func2_var3[16] = REGIST_FUNC(ai, goal, Kiaran6740_Act16)
   func2_var3[17] = REGIST_FUNC(ai, goal, Kiaran6740_Act17)
   func2_var3[20] = REGIST_FUNC(ai, goal, Kiaran6740_Act20)
   local func2_var8 = REGIST_FUNC(ai, goal, Kiaran6740_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var8, func2_var4)
end

Kiaran6740_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetRandam_Int(1, 100)
   if func3_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func3_var6 = localScriptConfigVar1
   local func3_var7 = localScriptConfigVar1 + 2
   local func3_var8 = localScriptConfigVar1 + 0.5
   local func3_var9 = 0
   NPC_Approach_Act(ai, goal, func3_var6, func3_var7, func3_var9)
   if func3_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.4, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if func3_var4 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func3_var8, 1.5, 90)
   elseif func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func3_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func3_var8, 90, 90)
   elseif func3_var4 <= 55 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func3_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func3_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func3_var8, 90, 90)
   elseif func3_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func3_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NomalL, TARGET_ENE_0, func3_var8, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func3_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalL, TARGET_ENE_0, func3_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func3_var8, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   if func4_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func4_var6 = localScriptConfigVar5
   local func4_var7 = localScriptConfigVar5 + 2
   local func4_var8 = localScriptConfigVar5 + 0.5
   local func4_var9 = 0
   NPC_Approach_Act(ai, goal, func4_var6, func4_var7, func4_var9)
   if func4_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if func4_var4 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, func4_var8, 1.5, 90)
   elseif func4_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, func4_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func4_var8, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, func4_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_Parry, TARGET_ENE_0, func4_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func4_var8, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   if func5_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func5_var6 = localScriptConfigVar7
   local func5_var7 = localScriptConfigVar7 + 2
   local func5_var8 = localScriptConfigVar7 + 0.5
   local func5_var9 = 0
   NPC_Approach_Act(ai, goal, func5_var6, func5_var7, func5_var9)
   if func5_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if func5_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Parry, TARGET_ENE_0, func5_var8, 1.5, 90)
   elseif func5_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Parry, TARGET_ENE_0, func5_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func5_var8, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Parry, TARGET_ENE_0, func5_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, func5_var8, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   if func6_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func6_var5 = localScriptConfigVar9
   local func6_var6 = localScriptConfigVar9 + 2
   local func6_var7 = localScriptConfigVar9 + 0.5
   local func6_var8 = 0
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var8)
   if func6_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, func6_var7, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, func6_var7, 90, 90)
   elseif func6_var4 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, func6_var7, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func6_var7, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, func6_var7, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, func6_var7, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   if func7_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func7_var5 = localScriptConfigVar1
   local func7_var6 = localScriptConfigVar1 + 2
   local func7_var7 = localScriptConfigVar1 + 0.5
   local func7_var8 = 0
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var8)
   if func7_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, func7_var7, 90, 90)
   elseif func7_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func7_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, func7_var7, 90, 90)
   elseif func7_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func7_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, func7_var7, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      if localScriptConfigVar14 <= func7_var3 then
         if not ai:HasSpecialEffectId(TARGET_ENE_0, 3151) and ai:GetNumber(1) <= 99 then
            ai:ChangeEquipItem(1)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
            ai:SetNumber(0, ai:GetNumber(1) + 1)
         else
            if ai:GetNumber(0) <= 99 then
               ai:ChangeEquipItem(0)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
               ai:SetNumber(0, ai:GetNumber(0) + 1)
            else
            end
         else
         end
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   if func8_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func8_var5 = localScriptConfigVar13
   local func8_var6 = localScriptConfigVar13 + 2
   local func8_var7 = localScriptConfigVar13 + 0.5
   local func8_var8 = 0
   NPC_Approach_Act(ai, goal, func8_var5, func8_var6, func8_var8)
   if func8_var4 <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func8_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func8_var7, 90, 90)
   elseif func8_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, func8_var7, 90, 90)
   elseif func8_var4 <= 65 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, func8_var7, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func8_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func8_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func8_var7, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetRandam_Int(1, 100)
   if func9_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func9_var6 = localScriptConfigVar1
   local func9_var7 = localScriptConfigVar1 + 2
   local func9_var8 = localScriptConfigVar1 + 0.5
   local func9_var9 = 0
   NPC_Approach_Act(ai, goal, func9_var6, func9_var7, func9_var9)
   if func9_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if func9_var4 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func9_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func9_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func9_var8, 90, 90)
   elseif func9_var4 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func9_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func9_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, func9_var8, 90, 90)
   elseif func9_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func9_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func9_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_Parry, TARGET_ENE_0, func9_var8, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func9_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      if ai:GetNumber(0) <= 99 and localScriptConfigVar14 <= func9_var3 then
         ai:ChangeEquipItem(0)
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 90, 90)
         ai:SetNumber(0, ai:GetNumber(0) + 1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kiaran6740_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   if func11_var3 >= 6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(5, 6), TARGET_SELF, false, -1)
   elseif func11_var3 <= 4 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(5, 6), TARGET_ENE_0, true, -1)
   else
   end
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2.5, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
      GetWellSpace_Odds = 0
      return GetWellSpace_Odds
end

Kiaran6740_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = ai:GetRandam_Int(1, 100)
   if func12_var3 <= 2 and ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchOneHandMode(ai, goal)
   local func12_var6 = localScriptConfigVar3
   local func12_var7 = localScriptConfigVar3 + 2
   local func12_var8 = localScriptConfigVar3 + 0.5
   local func12_var9 = 0
   NPC_Approach_Act(ai, goal, func12_var6, func12_var7, func12_var9)
   if func12_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, func12_var8, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Kiaran6740_Act11 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = ai:GetRandam_Int(1, 100)
   if func13_var3 <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local func13_var6 = localScriptConfigVar1
   local func13_var7 = localScriptConfigVar1 + 2
   local func13_var8 = localScriptConfigVar1 + 0.5
   local func13_var9 = 0
   NPC_Approach_Act(ai, goal, func13_var6, func13_var7, func13_var9)
   if func13_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if func13_var4 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func13_var8, 1.5, 90)
   elseif func13_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func13_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func13_var8, 90, 90)
   elseif func13_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func13_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, func13_var8, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func13_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func13_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func13_var8, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act13 = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = ai:GetRandam_Int(1, 100)
   if func14_var3 <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local func14_var6 = localScriptConfigVar7
   local func14_var7 = localScriptConfigVar7 + 2
   local func14_var8 = localScriptConfigVar7 + 0.5
   local func14_var9 = 0
   NPC_Approach_Act(ai, goal, func14_var6, func14_var7, func14_var9)
   if func14_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, func14_var8, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act14 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   if func15_var3 <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local func15_var5 = localScriptConfigVar9
   local func15_var6 = localScriptConfigVar9 + 2
   local func15_var7 = localScriptConfigVar9 + 0.5
   local func15_var8 = 0
   NPC_Approach_Act(ai, goal, func15_var5, func15_var6, func15_var8)
   if func15_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, func15_var7, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, func15_var7, 90, 90)
   elseif func15_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, func15_var7, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func15_var7, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, func15_var7, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func15_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func15_var7, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act15 = function(ai, goal, func16_param2)
   local func16_var3 = ai:GetDist(TARGET_ENE_0)
   local func16_var4 = ai:GetRandam_Int(1, 100)
   if func16_var3 <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local func16_var5 = localScriptConfigVar1
   local func16_var6 = localScriptConfigVar1 + 2
   local func16_var7 = localScriptConfigVar1 + 0.5
   local func16_var8 = 0
   NPC_Approach_Act(ai, goal, func16_var5, func16_var6, func16_var8)
   if func16_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, func16_var7, 90, 90)
   elseif func16_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func16_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, func16_var7, 90, 90)
   elseif func16_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func16_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func16_var7, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      if localScriptConfigVar14 <= func16_var3 then
         if not ai:HasSpecialEffectId(TARGET_ENE_0, 3151) and ai:GetNumber(1) <= 99 then
            ai:ChangeEquipItem(1)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
            ai:SetNumber(0, ai:GetNumber(1) + 1)
         else
            if ai:GetNumber(0) <= 99 then
               ai:ChangeEquipItem(0)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
               ai:SetNumber(0, ai:GetNumber(0) + 1)
            else
            end
         else
         end
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act16 = function(ai, goal, func17_param2)
   local func17_var3 = ai:GetDist(TARGET_ENE_0)
   local func17_var4 = ai:GetRandam_Int(1, 100)
   if func17_var3 <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local func17_var5 = localScriptConfigVar13
   local func17_var6 = localScriptConfigVar13 + 2
   local func17_var7 = localScriptConfigVar13 + 0.5
   local func17_var8 = 0
   NPC_Approach_Act(ai, goal, func17_var5, func17_var6, func17_var8)
   if func17_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func17_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func17_var7, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func17_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func17_var7, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func17_var7, 90, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act17 = function(ai, goal, func18_param2)
   local func18_var3 = ai:GetDist(TARGET_ENE_0)
   local func18_var4 = ai:GetRandam_Int(1, 100)
   local func18_var5 = ai:GetRandam_Int(1, 100)
   if func18_var3 <= 2 and not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   end
   CommonNPC_SwitchBothHandMode(ai, goal)
   local func18_var6 = localScriptConfigVar1
   local func18_var7 = localScriptConfigVar1 + 2
   local func18_var8 = localScriptConfigVar1 + 0.5
   local func18_var9 = 0
   NPC_Approach_Act(ai, goal, func18_var6, func18_var7, func18_var9)
   if func18_var5 <= 50 then
   else
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(60, 60), true, true, -1)
   end
   if func18_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func18_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func18_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func18_var8, 90, 90)
   elseif func18_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func18_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func18_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, func18_var8, 90, 90)
   elseif func18_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, func18_var8, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, func18_var8, 90, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, func18_var8, 90, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
      if localScriptConfigVar14 <= func18_var3 then
         if not ai:HasSpecialEffectId(TARGET_ENE_0, 3151) and ai:GetNumber(1) <= 99 then
            ai:ChangeEquipItem(1)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
            ai:SetNumber(0, ai:GetNumber(1) + 1)
         else
            if ai:GetNumber(0) <= 99 then
               ai:ChangeEquipItem(0)
               goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_Item, TARGET_ENE_0, DIST_None, 1.5, 90)
               ai:SetNumber(0, ai:GetNumber(0) + 1)
            else
            end
         else
         end
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kiaran6740_Act20 = function(ai, goal, func19_param2)
   local func19_var3 = ai:GetDist(TARGET_ENE_0)
   local func19_var4 = ai:GetRandam_Int(1, 100)
   local func19_var5 = ai:GetRandam_Int(1, 100)
   local func19_var6 = localScriptConfigVar15
   local func19_var7 = localScriptConfigVar15 + 2
   local func19_var8 = localScriptConfigVar15 + 0.5
   local func19_var9 = 0
   NPC_Approach_Act(ai, goal, func19_var6, func19_var7, func19_var9)
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

Kiaran6740_ActAfter = function(ai, goal)
   local func20_var2 = ai:GetDist(TARGET_ENE_0)
   local func20_var3 = ai:GetRandam_Int(1, 100)
   local func20_var4 = ai:GetRandam_Int(1, 100)
   local func20_var5 = ai:GetRandam_Int(1, 100)
   if func20_var2 <= 1.5 then
      if func20_var3 <= 65 then
         if func20_var4 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
         elseif func20_var4 <= 85 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
            if func20_var5 <= 30 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
               if func20_var5 <= 30 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
               elseif func20_var3 <= 100 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                  do break end
               elseif func20_var2 <= 2.5 then
                  if func20_var3 <= 70 then
                     if func20_var4 <= 20 then
                        goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                     elseif func20_var4 <= 60 then
                        goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
                        if func20_var5 <= 30 then
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                        else
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
                           if func20_var5 <= 30 then
                              goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                           elseif func20_var3 <= 100 then
                              goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                              do break end
                           elseif func20_var2 <= 4 then
                              if func20_var3 <= 40 then
                                 goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
                              elseif func20_var3 <= 70 then
                                 goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
                              elseif func20_var3 <= 90 then
                                 goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                                 do break end
                              elseif func20_var3 <= 40 then
                                 goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(1, 2), TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
                              elseif func20_var3 <= 80 then
                                 goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                              -- Tried to add an 'end' here but it's incorrect
                           end
                           -- Tried to add an 'end' here but it's incorrect
                        end
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
end

Kiaran6740_ActAfter_AdjustSpace = function(ai, goal, func21_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

Kiaran6740Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kiaran6740Battle_Terminate = function(ai, goal)
end

Kiaran6740Battle_Interupt = function(ai, goal)
   local func24_var2 = ai:GetDist(TARGET_ENE_0)
   local func24_var3 = ai:GetRandam_Int(1, 100)
   local func24_var4 = ai:GetRandam_Int(1, 100)
   local func24_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func24_var6 = 3
      local func24_var7 = 65
      if func24_var2 <= func24_var6 and func24_var3 <= func24_var7 then
         goal:ClearSubGoal()
         if func24_var4 <= 15 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   do
      if ai:IsInterupt(INTERUPT_Damaged) then
         local func24_var6 = 3
         local func24_var7 = 65
         if func24_var2 < func24_var6 then
            if func24_var3 <= func24_var7 then
               goal:ClearSubGoal()
               if func24_var4 <= 40 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
               end
               -- Tried to add an 'end' here but it's incorrect
               return true
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
            end
            local func24_var6 = 10
            local func24_var7 = 100
            if UseItem_Act(ai, goal, func24_var6, func24_var7) then
               local func24_var8 = localScriptConfigVar15
               local func24_var9 = localScriptConfigVar15 + 2
               local func24_var10 = localScriptConfigVar15 + 0.5
               local func24_var11 = 0
               goal:ClearSubGoal()
               if func24_var2 <= 4.5 then
                  CommonNPC_SwitchBothHandMode(ai, goal)
                  goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1.5, TARGET_SELF, false, -1)
                  goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, func24_var10, 1.5, 90)
               --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end


