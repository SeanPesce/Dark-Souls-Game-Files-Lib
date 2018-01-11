local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.1
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.6
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.1
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2.1
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 2.6
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 1.7
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 0.6
local localScriptConfigVar18 = 5
local localScriptConfigVar19 = 10
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 2.2
local localScriptConfigVar22 = 0
local localScriptConfigVar23 = 1.3
local localScriptConfigVar24 = 4
local localScriptConfigVar25 = 5
local localScriptConfigVar26 = 5
local localScriptConfigVar27 = 6
local localScriptConfigVar28 = 0
local localScriptConfigVar29 = 2.2
local localScriptConfigVar30 = 0
local localScriptConfigVar31 = 1.3
local localScriptConfigVar32 = 4
local localScriptConfigVar33 = 5
local localScriptConfigVar34 = 5
local localScriptConfigVar35 = 6
TrickStar6260Battle_Activate = function(ai, goal)
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
   if ai:IsFinishTimer(0) == true then
      if not ai:IsBothHandMode(TARGET_SELF) then
         func1_var9 = 0
      else
         func1_var10 = 0
      end
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var9 = 10
   end
   if func1_var8 >= 8 then
      func1_var2[1] = 10 * func1_var10
      func1_var2[2] = 20 * func1_var10
      func1_var2[3] = 10 * func1_var10
      func1_var2[4] = 20 * func1_var10
      func1_var2[7] = 20 * func1_var10
      func1_var2[8] = 20 * func1_var10
      func1_var2[9] = 10 * func1_var9
      func1_var2[10] = 20 * func1_var9
      func1_var2[11] = 10 * func1_var9
      func1_var2[12] = 20 * func1_var9
      func1_var2[15] = 20 * func1_var9
      func1_var2[16] = 20 * func1_var9
   elseif func1_var8 >= 4 then
      func1_var2[1] = 15 * func1_var10
      func1_var2[2] = 15 * func1_var10
      func1_var2[3] = 15 * func1_var10
      func1_var2[4] = 15 * func1_var10
      func1_var2[7] = 20 * func1_var10
      func1_var2[8] = 20 * func1_var10
      func1_var2[9] = 10 * func1_var9
      func1_var2[10] = 20 * func1_var9
      func1_var2[11] = 10 * func1_var9
      func1_var2[12] = 20 * func1_var9
      func1_var2[15] = 20 * func1_var9
      func1_var2[16] = 20 * func1_var9
   elseif func1_var8 >= 2.1 then
      func1_var2[1] = 25 * func1_var10
      func1_var2[2] = 25 * func1_var10
      func1_var2[3] = 25 * func1_var10
      func1_var2[4] = 25 * func1_var10
      func1_var2[9] = 25 * func1_var9
      func1_var2[10] = 25 * func1_var9
      func1_var2[11] = 25 * func1_var9
      func1_var2[12] = 25 * func1_var9
   elseif func1_var8 >= 1 then
      func1_var2[1] = 18 * func1_var10
      func1_var2[2] = 17 * func1_var10
      func1_var2[3] = 18 * func1_var10
      func1_var2[4] = 17 * func1_var10
      func1_var2[5] = 15 * func1_var10
      func1_var2[6] = 15 * func1_var10
      func1_var2[9] = 10 * func1_var9
      func1_var2[10] = 10 * func1_var9
      func1_var2[11] = 13 * func1_var9
      func1_var2[12] = 12 * func1_var9
      func1_var2[13] = 13 * func1_var10
      func1_var2[14] = 12 * func1_var10
      func1_var2[17] = 30 * func1_var9
   else
      func1_var2[1] = 15 * func1_var10
      func1_var2[2] = 15 * func1_var10
      func1_var2[3] = 18 * func1_var10
      func1_var2[4] = 17 * func1_var10
      func1_var2[5] = 10 * func1_var10
      func1_var2[6] = 10 * func1_var10
      func1_var2[9] = 15 * func1_var9
      func1_var2[10] = 15 * func1_var9
      func1_var2[11] = 18 * func1_var9
      func1_var2[12] = 17 * func1_var9
      func1_var2[13] = 10 * func1_var10
      func1_var2[14] = 10 * func1_var10
      func1_var2[17] = 20 * func1_var9
      func1_var2[18] = 10 * func1_var10
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, TrickStar6260_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, TrickStar6260_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, TrickStar6260_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, TrickStar6260_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, TrickStar6260_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, TrickStar6260_Act06)
   func1_var3[9] = REGIST_FUNC(ai, goal, TrickStar6260_Act09)
   func1_var3[10] = REGIST_FUNC(ai, goal, TrickStar6260_Act10)
   func1_var3[11] = REGIST_FUNC(ai, goal, TrickStar6260_Act11)
   func1_var3[12] = REGIST_FUNC(ai, goal, TrickStar6260_Act12)
   func1_var3[13] = REGIST_FUNC(ai, goal, TrickStar6260_Act13)
   func1_var3[14] = REGIST_FUNC(ai, goal, TrickStar6260_Act14)
   func1_var3[17] = REGIST_FUNC(ai, goal, TrickStar6260_Act17)
   func1_var3[18] = REGIST_FUNC(ai, goal, TrickStar6260_Act18)
   local func1_var11 = REGIST_FUNC(ai, goal, TrickStar6260_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var11, func1_var4)
end

TrickStar6260_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 5
   local func2_var7 = 50
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

TrickStar6260_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func3_var5 = localScriptConfigVar5
   local func3_var6 = localScriptConfigVar5 + 5
   local func3_var7 = 50
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

TrickStar6260_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 5
   local func4_var7 = 50
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func4_var4 <= 60 then
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

TrickStar6260_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local func5_var5 = localScriptConfigVar7
   local func5_var6 = localScriptConfigVar7 + 5
   local func5_var7 = 50
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   if func5_var4 <= 30 then
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

TrickStar6260_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func6_var5 = localScriptConfigVar21
   local func6_var6 = localScriptConfigVar21 + 5
   local func6_var7 = 100
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR2(ai, goal)
   local func7_var5 = localScriptConfigVar23
   local func7_var6 = localScriptConfigVar23 + 5
   local func7_var7 = 100
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act09 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func8_var5 = localScriptConfigVar9
   local func8_var6 = localScriptConfigVar9 + 5
   local func8_var7 = 50
   NPC_Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   if func8_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func8_var4 <= 60 then
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

TrickStar6260_Act10 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func9_var5 = localScriptConfigVar13
   local func9_var6 = localScriptConfigVar13 + 5
   local func9_var7 = 50
   NPC_Approach_Act(ai, goal, func9_var5, func9_var6, func9_var7)
   if func9_var4 <= 30 then
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

TrickStar6260_Act11 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func10_var5 = localScriptConfigVar11
   local func10_var6 = localScriptConfigVar11 + 5
   local func10_var7 = 50
   NPC_Approach_Act(ai, goal, func10_var5, func10_var6, func10_var7)
   if func10_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func10_var4 <= 60 then
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

TrickStar6260_Act12 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func11_var5 = localScriptConfigVar15
   local func11_var6 = localScriptConfigVar15 + 5
   local func11_var7 = 50
   NPC_Approach_Act(ai, goal, func11_var5, func11_var6, func11_var7)
   if func11_var4 <= 30 then
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

TrickStar6260_Act13 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func12_var5 = localScriptConfigVar29
   local func12_var6 = localScriptConfigVar29 + 5
   local func12_var7 = 100
   NPC_Approach_Act(ai, goal, func12_var5, func12_var6, func12_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act14 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR2(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func13_var5 = localScriptConfigVar31
   local func13_var6 = localScriptConfigVar31 + 5
   local func13_var7 = 100
   NPC_Approach_Act(ai, goal, func13_var5, func13_var6, func13_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act17 = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = localScriptConfigVar17
   local func14_var6 = localScriptConfigVar17 + 5
   local func14_var7 = 100
   NPC_Approach_Act(ai, goal, func14_var5, func14_var6, func14_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TrickStar6260_Act18 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TrickStar6260_ActAfter_AdjustSpace = function(ai, goal, func16_param2)
   local func16_var3 = ai:GetRandam_Int(1, 100)
   local func16_var4 = ai:GetRandam_Int(1, 100)
   local func16_var5 = 3
   if func16_var3 <= 5 then
      if func16_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func16_var4 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif func16_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func16_var3 <= 15 then
      if func16_var4 <= 70 then
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

TrickStar6260Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TrickStar6260Battle_Terminate = function(ai, goal)
end

TrickStar6260Battle_Interupt = function(ai, goal)
   local func19_var2 = ai:GetDist(TARGET_ENE_0)
   local func19_var3 = ai:GetRandam_Int(1, 100)
   local func19_var4 = ai:GetRandam_Int(1, 100)
   local func19_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func19_var6 = 3
      local func19_var7 = 10
      local func19_var8 = 3
      if func19_var2 <= func19_var6 and func19_var3 <= func19_var7 then
         goal:ClearSubGoal()
         if func19_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func19_var6 = 3
      local func19_var7 = 80
      if func19_var2 <= func19_var6 and func19_var3 <= func19_var7 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func19_var6 = 3
      local func19_var7 = 10
      if func19_var2 < func19_var6 and func19_var3 <= func19_var7 then
         goal:ClearSubGoal()
         if func19_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_GuardBreak) then
      local func19_var6 = 2
      local func19_var7 = 100
      if func19_var2 <= func19_var6 and func19_var3 <= func19_var7 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func19_var6 = 3
      local func19_var7 = 10
      if func19_var2 < func19_var6 then
         if func19_var3 <= func19_var7 then
            goal:ClearSubGoal()
            if func19_var4 <= func19_var7 then
               if func19_var5 <= 50 then
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
      local func19_var6 = 50
      if func19_var3 <= func19_var6 then
         goal:ClearSubGoal()
         if func19_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         else
            local func19_var7 = localScriptConfigVar5
            local func19_var8 = localScriptConfigVar5 + 5
            local func19_var9 = 100
            NPC_Approach_Act(ai, goal, func19_var7, func19_var8, func19_var9)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         return true
      end
   end
   return false
end


