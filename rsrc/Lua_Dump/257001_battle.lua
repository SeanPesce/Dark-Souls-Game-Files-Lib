local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.4
local localScriptConfigVar6 = 6
local localScriptConfigVar7 = 7.8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.2
OnIf_257001 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

HeavyKnight_Mace257001Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = ai:GetHpRate(TARGET_SELF)
   local func2_var7 = 0
   local func2_var8 = ai:GetNpcThinkParamID()
   if func2_var8 == 257012 then
      ai:AddObserveRegion(0, TARGET_ENE_0, 1502723)
      if ai:IsInsideTargetRegion(TARGET_ENE_0, 1502721) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1502722) then
         func2_var7 = 0
      else
         func2_var2[1] = 100
         func2_var7 = 1
      end
   end
   if func2_var7 == 0 then
      if func2_var6 <= 0.4 and ai:IsFinishTimer(0) == true then
         if func2_var5 >= 6.5 then
            func2_var2[5] = 200
         elseif func2_var5 >= 3 then
            func2_var2[5] = 100
         else
            func2_var2[5] = 50
         end
         -- Tried to add an 'end' here but it's incorrect
         if func2_var5 >= 12 then
            if ai:IsTargetGuard(TARGET_ENE_0) == true then
               func2_var2[2] = 0
               func2_var2[3] = 5
               func2_var2[4] = 20
               func2_var2[6] = 0
               func2_var2[7] = 75
               func2_var2[9] = 0
            else
               func2_var2[2] = 10
               func2_var2[3] = 10
               func2_var2[4] = 0
               func2_var2[6] = 0
               func2_var2[7] = 70
               func2_var2[9] = 10
            end
         elseif func2_var5 >= 6.5 then
            if ai:IsTargetGuard(TARGET_ENE_0) == true then
               func2_var2[2] = 5
               func2_var2[3] = 10
               func2_var2[4] = 50
               func2_var2[6] = 0
               func2_var2[7] = 30
               func2_var2[9] = 5
            else
               func2_var2[2] = 20
               func2_var2[3] = 20
               func2_var2[4] = 0
               func2_var2[6] = 0
               func2_var2[7] = 40
               func2_var2[9] = 20
            end
         elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
            func2_var2[2] = 10
            func2_var2[3] = 20
            func2_var2[4] = 50
            func2_var2[6] = 0
            func2_var2[7] = 0
            func2_var2[9] = 10
         else
            func2_var2[2] = 40
            func2_var2[3] = 20
            func2_var2[4] = 0
            func2_var2[6] = 0
            func2_var2[7] = 0
            func2_var2[9] = 40
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         func2_var3[1] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act01)
         func2_var3[2] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act02)
         func2_var3[3] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act03)
         func2_var3[4] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act04)
         func2_var3[5] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act05)
         func2_var3[6] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act06)
         func2_var3[7] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act07)
         func2_var3[9] = REGIST_FUNC(ai, goal, HeavyKnight_Mace257001_Act09)
         local func2_var9 = {100, 80, 10, 10, 0, 0}
         local func2_var10 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func2_var9)
         Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var10, func2_var4)
end

HeavyKnight_Mace257001_Act01 = function(ai, goal, func3_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, 9910)
   goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar1
   local func4_var6 = localScriptConfigVar1 + 2
   local func4_var7 = 100
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar3
   local func5_var6 = localScriptConfigVar3 + 2
   local func5_var7 = 100
   Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar9
   local func6_var6 = localScriptConfigVar9 + 2
   local func6_var7 = 100
   Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 40)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = localScriptConfigVar9
   local func8_var6 = localScriptConfigVar9 + 2
   local func8_var7 = 0
   Approach_Act(ai, goal, func8_var5, func8_var6, func8_var7)
   if func8_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = localScriptConfigVar7
   local func9_var6 = localScriptConfigVar7 + 2
   local func9_var7 = 0
   Approach_Act(ai, goal, func9_var5, func9_var6, func9_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 60)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = localScriptConfigVar1
   local func10_var6 = localScriptConfigVar1 + 2
   local func10_var7 = 100
   Approach_Act(ai, goal, func10_var5, func10_var6, func10_var7)
   if func10_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HeavyKnight_Mace257001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HeavyKnight_Mace257001Battle_Terminate = function(ai, goal)
end

HeavyKnight_Mace257001Battle_Interupt = function(ai, goal)
   local func13_var2 = ai:GetRandam_Int(1, 100)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = ai:GetDist(TARGET_ENE_0)
   local func13_var6 = 3
   local func13_var7 = 10
   local func13_var8 = 50
   local func13_var9 = 4.5
   local func13_var10 = 2.5
   if Damaged_Guard(ai, goal, func13_var6, func13_var7, func13_var8, func13_var9, func13_var10) then
      local func13_var11 = 3
   end
   local func13_var12 = 65
   if GuardBreak_Act(ai, goal, func13_var11, func13_var12) then
      if func13_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func13_var13 = 7.8
   local func13_var14 = 14
   local func13_var15 = 0
   local func13_var16 = 60
   local func13_var17 = ai:GetRandam_Int(1, 100)
   local func13_var18 = ai:GetRandam_Int(1, 100)
   local func13_var19 = ai:GetDist(TARGET_ENE_0)
   local func13_var20 = Shoot_2dist(ai, goal, func13_var13, func13_var14, func13_var15, func13_var16)
   if func13_var20 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func13_var20 == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   end
   local func13_var21 = 10
   local func13_var22 = 50
   if UseItem_Act(ai, goal, func13_var21, func13_var22) then
      if func13_var19 <= 5.9 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
      return true
   end
   return false
end


