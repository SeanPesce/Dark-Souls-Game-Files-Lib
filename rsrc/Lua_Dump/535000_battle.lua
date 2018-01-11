local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 10.3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 8
local localScriptConfigVar8 = 6.5
local localScriptConfigVar9 = 11
local localScriptConfigVar10 = 3
local localScriptConfigVar11 = 6
local localScriptConfigVar12 = 2.5
local localScriptConfigVar13 = 9
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 6
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 1.6
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 3.5
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 2.5
local localScriptConfigVar22 = 12
local localScriptConfigVar23 = 15
local localScriptConfigVar24 = 17
local localScriptConfigVar25 = 20
local localScriptConfigVar26 = 0
local localScriptConfigVar27 = 4.5
local localScriptConfigVar28 = 2.5
local localScriptConfigVar29 = 9
local localScriptConfigVar30 = 0
local localScriptConfigVar31 = 4
Gargoyle535000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetHpRate(TARGET_SELF)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = ai:GetPartsDmg(func1_var7)
   local func1_var9 = ai:GetNpcThinkParamID()
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   local func1_var16 = 0
   local func1_var17 = 0
   local func1_var18 = 0
   local func1_var19 = 0
   local func1_var20 = 0
   local func1_var21 = 0
   local func1_var22 = 0
   local func1_var23 = 0
   local func1_var24 = 0
   local func1_var25 = 0
   local func1_var26 = 0
   local func1_var27 = 0
   local func1_var28 = 0
   local func1_var29 = 100
   if func1_var9 == 535000 then
      if func1_var8 == PARTS_DMG_FINAL then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1012793) then
            if func1_var2 >= 5 then
               func1_var22 = 100
            else
               func1_var11 = 30
               func1_var13 = 30
               func1_var15 = 30
               func1_var22 = 10
            end
         elseif func1_var2 <= 4.1 and func1_var4 <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            func1_var12 = 100
         elseif func1_var2 <= 1.5 and func1_var4 <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 170) then
            func1_var16 = 100
         else
            local func1_var30 = 0
            if func1_var3 <= 0.5 then
               func1_var30 = 1
            end
            if func1_var2 >= 18 then
               func1_var10 = 0
               func1_var11 = 0
               func1_var13 = 0
               func1_var15 = 0
               func1_var19 = 15
               func1_var20 = 45
               func1_var21 = 0
               func1_var22 = 0
               func1_var24 = 15
               func1_var25 = 25 * func1_var30
            elseif func1_var2 >= 13 then
               func1_var10 = 10
               func1_var11 = 10
               func1_var13 = 10
               func1_var15 = 10
               func1_var19 = 25
               func1_var20 = 0
               func1_var21 = 0
               func1_var22 = 10 * func1_var30
               func1_var24 = 15
               func1_var25 = 10 * func1_var30
            elseif func1_var2 >= 9 then
               func1_var10 = 10
               func1_var11 = 10
               func1_var13 = 10
               func1_var15 = 10
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 0
               func1_var22 = 25 * func1_var30
               func1_var24 = 15
               func1_var25 = 20 * func1_var30
            elseif func1_var2 >= 6.8 then
               func1_var10 = 15
               func1_var11 = 15
               func1_var13 = 10
               func1_var15 = 10
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 0
               func1_var22 = 35 * func1_var30
               func1_var24 = 5
               func1_var25 = 10 * func1_var30
            elseif func1_var2 >= 3 then
               func1_var10 = 20
               func1_var11 = 15
               func1_var13 = 20
               func1_var15 = 15
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 10
               func1_var22 = 15 * func1_var30
               func1_var24 = 0
               func1_var25 = 5 * func1_var30
            else
               func1_var10 = 15
               func1_var11 = 10
               func1_var13 = 10
               func1_var15 = 10
               func1_var18 = 0
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 5
               func1_var22 = 0
               func1_var24 = 0
               func1_var25 = 0
               func1_var28 = 50
            end
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012793) then
            if func1_var2 >= 5 then
               func1_var22 = 100
            else
               func1_var11 = 30
               func1_var13 = 30
               func1_var15 = 30
               func1_var22 = 10
            end
         elseif func1_var2 <= 4 and func1_var4 <= 95 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) then
            func1_var23 = 100
         elseif func1_var2 <= 3.5 and func1_var4 <= 60 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 130) then
            func1_var17 = 100
         elseif func1_var2 <= 4.1 and func1_var4 <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            func1_var12 = 100
         elseif func1_var2 <= 1.5 and func1_var4 <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 170) then
            func1_var16 = 100
         else
            local func1_var30 = 0
            if func1_var3 <= 0.5 then
               func1_var30 = 1
            end
            if func1_var2 >= 18 then
               func1_var10 = 0
               func1_var11 = 0
               func1_var13 = 0
               func1_var15 = 0
               func1_var19 = 15
               func1_var20 = 45
               func1_var21 = 0
               func1_var22 = 0
               func1_var24 = 15
               func1_var25 = 25 * func1_var30
               func1_var26 = 0
            elseif func1_var2 >= 13 then
               func1_var10 = 10
               func1_var11 = 10
               func1_var13 = 10
               func1_var15 = 10
               func1_var19 = 25
               func1_var20 = 0
               func1_var21 = 0
               func1_var22 = 10 * func1_var30
               func1_var24 = 15
               func1_var25 = 10 * func1_var30
               func1_var26 = 0
            elseif func1_var2 >= 9 then
               func1_var10 = 10
               func1_var11 = 10
               func1_var13 = 10
               func1_var15 = 10
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 0
               func1_var22 = 25 * func1_var30
               func1_var24 = 15
               func1_var25 = 20 * func1_var30
               func1_var26 = 0
            elseif func1_var2 >= 6.8 then
               func1_var10 = 10
               func1_var11 = 10
               func1_var13 = 10
               func1_var15 = 10
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 0
               func1_var22 = 35 * func1_var30
               func1_var24 = 5
               func1_var25 = 15 * func1_var30
               func1_var26 = 10
            elseif func1_var2 >= 3 then
               func1_var10 = 20
               func1_var11 = 15
               func1_var13 = 15
               func1_var15 = 20
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 10
               func1_var22 = 15 * func1_var30
               func1_var24 = 0
               func1_var25 = 5 * func1_var30
               func1_var26 = 5
            else
               func1_var10 = 15
               func1_var11 = 10
               func1_var13 = 10
               func1_var15 = 10
               func1_var18 = 0
               func1_var19 = 0
               func1_var20 = 0
               func1_var21 = 5
               func1_var22 = 0
               func1_var24 = 0
               func1_var25 = 0
               func1_var26 = 0
               func1_var28 = 50
            end
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1012793) then
            if func1_var2 >= 5 then
               func1_var22 = 100
            else
               func1_var11 = 30
               func1_var13 = 30
               func1_var15 = 30
               func1_var22 = 10
            end
         elseif func1_var2 <= 4.1 and func1_var4 <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            func1_var12 = 100
         elseif func1_var2 <= 1.5 and func1_var4 <= 75 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 170) then
            func1_var16 = 100
         elseif func1_var2 >= 18 then
            func1_var10 = 5
            func1_var11 = 5
            func1_var13 = 5
            func1_var15 = 5
            func1_var22 = 80
         elseif func1_var2 >= 13 then
            func1_var10 = 7
            func1_var11 = 8
            func1_var13 = 7
            func1_var15 = 8
            func1_var22 = 70
         elseif func1_var2 >= 9 then
            func1_var10 = 7
            func1_var11 = 8
            func1_var13 = 7
            func1_var15 = 8
            func1_var22 = 70
         elseif func1_var2 >= 6.8 then
            func1_var10 = 7
            func1_var11 = 8
            func1_var13 = 7
            func1_var15 = 8
            func1_var22 = 70
         elseif func1_var2 >= 3 then
            func1_var10 = 10
            func1_var11 = 10
            func1_var13 = 10
            func1_var15 = 10
            func1_var22 = 60
         else
            func1_var10 = 10
            func1_var11 = 10
            func1_var13 = 10
            func1_var15 = 10
            func1_var27 = 60
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         local func1_var30 = ai:GetRandam_Int(1, func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28)
         if func1_var30 <= func1_var10 then
            Gargoyle535000_Act01(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 then
            Gargoyle535000_Act02(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 then
            Gargoyle535000_Act03(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 then
            Gargoyle535000_Act04(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
            Gargoyle535000_Act05(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
            Gargoyle535000_Act06(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
            Gargoyle535000_Act07(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
            Gargoyle535000_Act08(ai, goal)
            func1_var29 = 0
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
            Gargoyle535000_Act09(ai, goal)
            func1_var29 = 0
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
            Gargoyle535000_Act10(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
            Gargoyle535000_Act11(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 then
            Gargoyle535000_Act12(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 then
            Gargoyle535000_Act13(ai, goal)
            func1_var29 = 100
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 then
            Gargoyle535000_Act14(ai, goal)
            func1_var29 = 0
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 then
            Gargoyle535000_Act15(ai, goal)
            func1_var29 = 0
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 then
            Gargoyle535000_Act16(ai, goal)
            func1_var29 = 0
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 then
            Gargoyle535000_Act17(ai, goal)
            func1_var29 = 0
         elseif func1_var30 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 then
            Gargoyle535000_Act18(ai, goal)
            func1_var29 = 100
         else
            Gargoyle535000_Act19(ai, goal)
            func1_var29 = 0
         end
         local func1_var31 = ai:GetRandam_Int(1, 100)
         if func1_var31 <= func1_var29 then
            Gargoyle535000_GetWellSpace_Act(ai, goal)
         end
end

Gargoyle535000_Act01 = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 0
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   if func2_var3 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 35, 9, 8)
   elseif func2_var3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 35, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 9, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 35, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_Middle, 9, 8)
   end
end

Gargoyle535000_Act02 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = localScriptConfigVar3
   local func3_var4 = localScriptConfigVar3 + 2
   local func3_var5 = 0
   Approach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 15, 8, 7)
end

Gargoyle535000_Act03 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   if func4_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 9, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 9, 8)
   end
end

Gargoyle535000_Act04 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = localScriptConfigVar7
   local func5_var4 = localScriptConfigVar7 + 2
   local func5_var5 = 0
   Approach_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 15, 8, 0)
end

Gargoyle535000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, 0)
end

Gargoyle535000_Act06 = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = localScriptConfigVar15
   local func7_var4 = localScriptConfigVar15 + 2
   local func7_var5 = 0
   Approach_Act(ai, goal, func7_var3, func7_var4, func7_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Middle, -1, 15, 8, 0)
end

Gargoyle535000_Act07 = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3014, TARGET_ENE_0, DIST_Middle, 9, 8)
end

Gargoyle535000_Act08 = function(ai, goal)
   local func9_var2 = ai:GetDist(TARGET_ENE_0)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   if func9_var2 <= 1.5 then
      goal:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, DIST_Middle, 0, -1, 9, 8)
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboFinal, 10, 3029, TARGET_ENE_0, DIST_Middle, 9, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_Middle, 0, -1, 9, 8)
   end
end

Gargoyle535000_Act09 = function(ai, goal)
   local func10_var2 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_Middle, -1, 60, 9, 8)
end

Gargoyle535000_Act10 = function(ai, goal)
   local func11_var2 = ai:GetDist(TARGET_ENE_0)
   local func11_var3 = localScriptConfigVar23
   local func11_var4 = localScriptConfigVar23 + 2
   local func11_var5 = 0
   Approach_Act(ai, goal, func11_var3, func11_var4, func11_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act11 = function(ai, goal)
   local func12_var2 = ai:GetDist(TARGET_ENE_0)
   local func12_var3 = localScriptConfigVar25
   local func12_var4 = localScriptConfigVar25 + 2
   local func12_var5 = 0
   Approach_Act(ai, goal, func12_var3, func12_var4, func12_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_Middle, -1, 45)
end

Gargoyle535000_Act12 = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = localScriptConfigVar27
   local func13_var4 = localScriptConfigVar27 + 2
   local func13_var5 = 0
   Approach_Act(ai, goal, func13_var3, func13_var4, func13_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act13 = function(ai, goal)
   local func14_var2 = ai:GetDist(TARGET_ENE_0)
   local func14_var3 = localScriptConfigVar29
   local func14_var4 = localScriptConfigVar29 + 2
   local func14_var5 = 0
   Approach_Act(ai, goal, func14_var3, func14_var4, func14_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_Middle, -1, 25, 0, 8)
end

Gargoyle535000_Act14 = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, DIST_Middle, 0, -1, 9, 0)
end

Gargoyle535000_Act15 = function(ai, goal)
   local func16_var2 = ai:GetDist(TARGET_ENE_0)
   local func16_var3 = localScriptConfigVar9
   local func16_var4 = localScriptConfigVar9 + 2
   local func16_var5 = 0
   Approach_Act(ai, goal, func16_var3, func16_var4, func16_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act16 = function(ai, goal)
   local func17_var2 = ai:GetDist(TARGET_ENE_0)
   local func17_var3 = localScriptConfigVar13
   local func17_var4 = localScriptConfigVar13 + 2
   local func17_var5 = 0
   Approach_Act(ai, goal, func17_var3, func17_var4, func17_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act17 = function(ai, goal)
   local func18_var2 = ai:GetDist(TARGET_ENE_0)
   local func18_var3 = localScriptConfigVar11
   local func18_var4 = localScriptConfigVar11 + 2
   local func18_var5 = 0
   Approach_Act(ai, goal, func18_var3, func18_var4, func18_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, -1, 30)
end

Gargoyle535000_Act18 = function(ai, goal)
   local func19_var2 = ai:GetDist(TARGET_ENE_0)
   local func19_var3 = localScriptConfigVar29
   local func19_var4 = localScriptConfigVar29 + 2
   local func19_var5 = 0
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3.5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_Middle, -1, 25, 0, 8)
end

Gargoyle535000_Act19 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3.5)
end

Gargoyle535000_GetWellSpace_Act = function(ai, goal)
   local func21_var2 = ai:GetDist(TARGET_ENE_0)
   local func21_var3 = ai:GetRandam_Int(1, 100)
   local func21_var4 = ai:GetRandam_Int(1, 3)
   if func21_var3 <= 45 then
   elseif func21_var3 <= 95 then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   elseif func21_var3 <= 95 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
   end
end

OnIf_535000 = function(ai, goal, func22_param2)
   local func22_var3 = 0
   local func22_var4 = 0
   local func22_var5 = 0
   local func22_var6 = 0
   local func22_var7 = 0
   local func22_var8 = 0
   local func22_var9 = ai:GetNpcThinkParamID()
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 7, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 7, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 7, 1012792) then
      func22_var5 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 7, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 7, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 7, 1012792) then
      func22_var3 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 7, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 7, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 7, 1012792) then
      func22_var4 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1012792) then
      func22_var6 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1012792) then
      func22_var8 = 1
   end
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1012790) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1012791) or ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1012792) then
      func22_var7 = 1
   end
   local func22_var10 = 40
   local func22_var11 = 60
   if func22_var9 == 535001 then
      func22_var10 = 0
      func22_var11 = 100
   end
   local func22_var12 = ai:GetRandam_Int(1, 100)
   local func22_var13 = ai:GetRandam_Int(1, 100)
   local func22_var14 = ai:GetRandam_Int(1, 100)
   if func22_var12 <= func22_var10 and (func22_var3 == 1 or func22_var4 == 1 or func22_var5 == 1) and func22_var9 == 535000 then
      if (func22_var13 <= func22_var11 and func22_var5 == 1) or func22_var3 == 0 and func22_var4 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
      elseif func22_var14 <= 50 or func22_var4 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 7)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 7)
      end
   elseif (func22_var13 <= func22_var11 and func22_var6 == 1) or func22_var7 == 0 and func22_var8 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
   elseif func22_var14 <= 50 or func22_var7 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
   end
   -- Tried to add an 'end' here but it's incorrect
end

Gargoyle535000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Gargoyle535000Battle_Terminate = function(ai, goal)
end

Gargoyle535000Battle_Interupt = function(ai, goal)
   local func25_var2 = ai:GetRandam_Int(1, 100)
   local func25_var3 = ai:GetRandam_Int(1, 100)
   local func25_var4 = ai:GetRandam_Int(1, 100)
   local func25_var5 = ai:GetDist(TARGET_ENE_0)
   local func25_var6 = 3
   local func25_var7 = 15
   local func25_var8 = 50
   local func25_var9 = 25
   local func25_var10 = 25
   local func25_var11 = 5
   if FindAttack_Step(ai, goal, func25_var6, func25_var7, func25_var8, func25_var9, func25_var10, func25_var11) then
      return true
   end
   local func25_var12 = 10.3
   local func25_var13 = 30
   if GuardBreak_Act(ai, goal, func25_var12, func25_var13) then
      if func25_var2 >= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func25_var14 = 10.3
   local func25_var15 = 30
   if MissSwing_Int(ai, goal, func25_var14, func25_var15) then
      if func25_var2 >= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func25_var16 = 10.3
   local func25_var17 = 5
   if UseItem_Act(ai, goal, func25_var16, func25_var17) then
      if func25_var5 >= 6 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      end
   end
   local func25_var18 = 13.5
   local func25_var19 = 25
   local func25_var20 = 0
   local func25_var21 = 20
   local func25_var22 = Shoot_2dist(ai, goal, func25_var18, func25_var19, func25_var20, func25_var21)
   if func25_var22 == 1 then
      if func25_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      return true
   elseif func25_var22 == 2 then
      if func25_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
   end
   local func25_var23 = 30
   local func25_var24 = 50
   local func25_var25 = 25
   local func25_var26 = 25
   local func25_var27 = 5
   if RebByOpGuard_Step(ai, goal, func25_var23, func25_var24, func25_var25, func25_var26, func25_var27) then
      return true
   end
   return false
end


