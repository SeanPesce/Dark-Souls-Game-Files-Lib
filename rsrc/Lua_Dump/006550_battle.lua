local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1
local localScriptConfigVar14 = 8
local localScriptConfigVar15 = 8
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 2
TempleKnight6550Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetDist(TARGET_ENE_0)
   local func1_var5 = ai:GetDist(TARGET_LOCALPLAYER)
   local func1_var6 = ai:IsSearchTarget(TARGET_ENE_0)
   local func1_var7 = ai:GetEventRequest(0)
   local func1_var8 = ai:GetNpcThinkParamID()
   local func1_var9 = ai:GetMp(TARGET_SELF)
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   if func1_var8 == 6550 then
      PointFrontOfWall = 1302997
      func1_var11 = 1302995
      func1_var12 = 1302995
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
   elseif func1_var11 ~= 0 and not ai:IsInsideTargetRegion(TARGET_LOCALPLAYER, func1_var11) and not ai:IsInsideTargetRegion(TARGET_LOCALPLAYER, func1_var12) then
      if func1_var4 >= 10 or func1_var6 == false then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 1, TARGET_SELF, true, 4)
         goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
      else
         TempleKnight6550_Battle(ai, goal)
      end
   elseif func1_var5 >= 20 or func1_var4 >= 10 or func1_var6 == false then
      local func1_var13 = true
      if func1_var5 >= 2.2 then
         func1_var13 = false
      end
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_LOCALPLAYER, 1.2, TARGET_SELF, func1_var13, -1)
   else
      TempleKnight6550_Battle(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

TempleKnight6550_Battle = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetDist(TARGET_ENE_0)
   local func2_var9 = 1
   local func2_var10 = 1
   local func2_var11 = 1
   local func2_var12 = ai:GetNumber(0)
   if func2_var12 >= 5 then
      func2_var11 = 0
   end
   local func2_var13 = 1
   local func2_var14 = ai:GetNumber(1)
   if func2_var14 >= 5 then
      func2_var13 = 0
   end
   local func2_var15 = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      func2_var15 = 1
   end
   local func2_var16 = ai:GetHpRate(TARGET_SELF)
   local func2_var17 = 0
   if func2_var16 <= 0.5 then
      func2_var17 = 1
   end
   if func2_var8 >= 4 then
      func2_var2[1] = 0
      func2_var2[2] = 0
      func2_var2[9] = 60
      func2_var2[18] = 1000 * func2_var11 * func2_var17
      func2_var2[20] = 40
   elseif func2_var8 >= 1 then
      func2_var2[1] = 0
      func2_var2[2] = 0
      func2_var2[9] = 60
      func2_var2[17] = 20 * func2_var15
      func2_var2[18] = 1000 * func2_var11 * func2_var17
      func2_var2[19] = 25 * func2_var13
      func2_var2[20] = 20
   else
      func2_var2[1] = 20
      func2_var2[2] = 20
      func2_var2[5] = 20
      func2_var2[9] = 20
      func2_var2[13] = 10
      func2_var2[17] = 20 * func2_var15
      func2_var2[18] = 1000 * func2_var11 * func2_var17
      func2_var2[19] = 20 * func2_var13
      func2_var2[20] = 40
   end
   func2_var3[1] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act02)
   func2_var3[5] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act05)
   func2_var3[9] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act09)
   func2_var3[13] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act13)
   func2_var3[14] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act14)
   func2_var3[17] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act17)
   func2_var3[18] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act18)
   func2_var3[19] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act19)
   func2_var3[20] = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_Act20)
   local func2_var18 = REGIST_FUNC(ai, goal, TempleKnight_Enemy6551_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var18, func2_var4)
end

TempleKnight_Enemy6551_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 5
   local func3_var7 = 100
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 5
   local func4_var7 = 100
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 30 then
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

TempleKnight_Enemy6551_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   CommonNPC_ChangeWepR1(ai, goal)
   local func5_var5 = localScriptConfigVar9
   local func5_var6 = localScriptConfigVar9 + 5
   local func5_var7 = 100
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act09 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func6_var5 = localScriptConfigVar5
   local func6_var6 = localScriptConfigVar5 + 5
   local func6_var7 = 50
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   if func6_var4 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act13 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepR1(ai, goal)
   NPC_RYOUTE_Switch(ai, goal)
   local func7_var5 = localScriptConfigVar11
   local func7_var6 = localScriptConfigVar11 + 5
   local func7_var7 = 0
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act17 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
   local func8_var5 = localScriptConfigVar13
   local func8_var6 = localScriptConfigVar13 + 5
   local func8_var7 = 0
   NPC_Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act18 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func9_var6 = ai:GetNumber(0)
   CommonNPC_ChangeWepR2(ai, goal)
   ai:ChangeEquipMagic(0)
   if localScriptConfigVar15 <= func9_var3 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 7, TARGET_ENE_0, localScriptConfigVar14, TARGET_ENE_0, false, 4)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 0, -1)
   end
   ai:SetNumber(0, func9_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act19 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func10_var6 = ai:GetNumber(1)
   CommonNPC_ChangeWepR2(ai, goal)
   ai:ChangeEquipMagic(1)
   local func10_var7 = localScriptConfigVar17
   local func10_var8 = localScriptConfigVar17 + 5
   local func10_var9 = 0
   NPC_Approach_Act(ai, goal, func10_var7, func10_var8, func10_var9)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(1, func10_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

TempleKnight_Enemy6551_Act20 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   NPC_KATATE_Switch(ai, goal)
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

TempleKnight_Enemy6551_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = 3
   if func12_var3 <= 0 then
      if func12_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func12_var4 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepL, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepR, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      end
   elseif func12_var3 <= 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func12_var3 <= 80 then
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

TempleKnight_Enemy6551Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

TempleKnight_Enemy6551Battle_Terminate = function(ai, goal)
end

TempleKnight_Enemy6551Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func15_var6 = 3
      local func15_var7 = 40
      local func15_var8 = 3
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
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      goal:ClearSubGoal()
      ai:Replaning()
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
      return true
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      local func15_var6 = 75
      if func15_var3 <= func15_var6 then
         if func15_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
         else
            local func15_var7 = localScriptConfigVar3
            local func15_var8 = localScriptConfigVar3 + 5
            local func15_var9 = 100
            NPC_Approach_Act(ai, goal, func15_var7, func15_var8, func15_var9)
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
         end
         return true
      end
      return true
   end
   return false
end


