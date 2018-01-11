local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.9
local localScriptConfigVar4 = 7
local localScriptConfigVar5 = 10.7
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 9.1
local localScriptConfigVar8 = 8
local localScriptConfigVar9 = 9.3
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 3.9
local localScriptConfigVar12 = 11.5
local localScriptConfigVar13 = 13.7
local localScriptConfigVar14 = 14
local localScriptConfigVar15 = 16
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 2.4
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 2.8
local localScriptConfigVar20 = 7
local localScriptConfigVar21 = 10.4
local localScriptConfigVar22 = 1.8
FirewoodKing537000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetHpRate(TARGET_SELF)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetRandam_Int(1, 100)
   local func1_var9 = ai:GetRandam_Int(1, 100)
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   local func1_var16 = 0
   local func1_var17 = 0
   local func1_var18 = 0
   local func1_var19 = 100
   local func1_var20 = 1
   if ai:IsFinishTimer(0) == false then
      func1_var20 = 0.25
   else
      func1_var20 = 1
   end
   if ai:IsTargetGuard(TARGET_ENE_0) == true and func1_var7 <= 70 and func1_var5 <= 5 then
      func1_var11 = 30
      func1_var18 = 70
   elseif func1_var5 >= 15 then
      func1_var15 = 30
      func1_var16 = 70
   elseif func1_var5 >= 12 then
      func1_var13 = 15
      func1_var15 = 70
      func1_var16 = 15
   elseif func1_var5 >= 10 then
      func1_var12 = 30
      func1_var13 = 40
      func1_var15 = 30
   elseif func1_var5 >= 7 then
      func1_var10 = 10
      func1_var11 = 0
      func1_var12 = 30
      func1_var13 = 15
      func1_var14 = 15
      func1_var15 = 30
   elseif func1_var5 >= 4 then
      func1_var10 = 28
      func1_var11 = 20 * func1_var20
      func1_var12 = 15
      func1_var13 = 0
      func1_var14 = 37
   else
      func1_var10 = 30
      func1_var11 = 40 * func1_var20
      func1_var12 = 0
      func1_var13 = 0
      func1_var14 = 30
   end
   local func1_var21 = ai:GetRandam_Int(1, func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18)
   if func1_var21 <= func1_var10 then
      FirewoodKing537000_Act01(ai, goal)
   elseif func1_var21 <= func1_var10 + func1_var11 then
      FirewoodKing537000_Act02(ai, goal)
   elseif func1_var21 <= func1_var10 + func1_var11 + func1_var12 then
      FirewoodKing537000_Act03(ai, goal)
   elseif func1_var21 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      FirewoodKing537000_Act04(ai, goal)
   elseif func1_var21 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      FirewoodKing537000_Act05(ai, goal)
   elseif func1_var21 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      FirewoodKing537000_Act06(ai, goal)
   elseif func1_var21 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      FirewoodKing537000_Act07(ai, goal)
   elseif func1_var21 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      FirewoodKing537000_Act08(ai, goal)
   else
      FirewoodKing537000_Act09(ai, goal)
   end
   local func1_var22 = ai:GetRandam_Int(1, 100)
   if func1_var22 <= func1_var19 then
      FirewoodKing537000_GetWellSpace_Act(ai, goal)
   end
end

FirewoodKing537000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(0, 1)
   local func2_var6 = localScriptConfigVar1
   local func2_var7 = localScriptConfigVar1 + 0.5
   local func2_var8 = 0
   if func2_var7 <= func2_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func2_var6, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func2_var6, TARGET_SELF, true, -1)
   end
   if func2_var4 <= 5 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 20)
   elseif func2_var4 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 45 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func2_var5, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar3
   local func3_var6 = localScriptConfigVar3 + 0.5
   local func3_var7 = 0
   if func3_var6 <= func3_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func3_var5, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func3_var5, TARGET_SELF, true, -1)
   end
   if func3_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_Middle, -1, 20)
   end
   if ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 30)
   else
   end
      GetWellSpace_Odds = 0
end

FirewoodKing537000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(0, 1)
   local func4_var6 = localScriptConfigVar7
   local func4_var7 = localScriptConfigVar7 + 0.5
   local func4_var8 = 0
   if func4_var7 <= func4_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func4_var6, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func4_var6, TARGET_SELF, true, -1)
   end
   if func4_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, -1, 20)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Near, -1, 20)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func4_var5, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(0, 1)
   local func5_var6 = localScriptConfigVar9
   local func5_var7 = localScriptConfigVar9 + 0.5
   local func5_var8 = 0
   if func5_var7 <= func5_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func5_var6, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func5_var6, TARGET_SELF, true, -1)
   end
   if func5_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, -1, 25)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Near, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func5_var5, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   end
end

FirewoodKing537000_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(0, 1)
   local func6_var6 = localScriptConfigVar11
   local func6_var7 = localScriptConfigVar11 + 0.5
   local func6_var8 = 0
   if func6_var7 <= func6_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func6_var6, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func6_var6, TARGET_SELF, true, -1)
   end
   if func6_var4 <= 5 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Middle, -1, 40)
      GetWellSpace_Odds = 100
   elseif func6_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func6_var5, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   elseif func6_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func6_var5, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   elseif func6_var4 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func6_var5, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func6_var5, ai:GetRandam_Int(20, 30), true, true, -1)
      GetWellSpace_Odds = 0
   end
end

FirewoodKing537000_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetRandam_Int(0, 1)
   local func7_var6 = localScriptConfigVar13
   local func7_var7 = localScriptConfigVar13 + 0.5
   local func7_var8 = 0
   if func7_var7 <= func7_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func7_var6, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func7_var6, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func7_var5, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetRandam_Int(0, 1)
   local func8_var6 = localScriptConfigVar15
   local func8_var7 = localScriptConfigVar15 + 0.5
   local func8_var8 = 0
   if func8_var7 <= func8_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func8_var6, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func8_var6, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3019, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, localScriptConfigVar22, TARGET_ENE_0, func8_var5, ai:GetRandam_Int(20, 30), true, true, -1)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = localScriptConfigVar17
   local func9_var5 = localScriptConfigVar17 + 0.5
   local func9_var6 = 0
   if func9_var5 <= func9_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func9_var4, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func9_var4, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3020, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 0
end

FirewoodKing537000_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = localScriptConfigVar19
   local func10_var5 = localScriptConfigVar19 + 0.5
   local func10_var6 = 0
   if func10_var5 <= func10_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func10_var4, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func10_var4, TARGET_SELF, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_Middle, -1, 20)
   GetWellSpace_Odds = 100
end

FirewoodKing537000_GetWellSpace_Act = function(ai, goal)
   local func11_var2 = ai:GetDist(TARGET_ENE_0)
   local func11_var3 = ai:GetRandam_Int(1, 100)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   local func11_var5 = ai:GetRandam_Int(1, 100)
   if func11_var3 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
   elseif func11_var3 <= 22 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
   elseif func11_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
   else
   end
end

FirewoodKing537000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FirewoodKing537000Battle_Terminate = function(ai, goal)
end

FirewoodKing537000Battle_Interupt = function(ai, goal)
   local func14_var2 = ai:GetRandam_Int(1, 100)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = ai:GetDist(TARGET_ENE_0)
   local func14_var6 = 4
   local func14_var7 = 15
   local func14_var8 = 50
   local func14_var9 = 25
   local func14_var10 = 25
   local func14_var11 = 5
   if FindAttack_Step(ai, goal, func14_var6, func14_var7, func14_var8, func14_var9, func14_var10, func14_var11) then
      return true
   end
   local func14_var12 = 4
   local func14_var13 = 80
   if GuardBreak_Act(ai, goal, func14_var12, func14_var13) then
      if func14_var2 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      elseif func14_var2 <= 65 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 25)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      elseif func14_var2 <= 85 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 25)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, -1, 25)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func14_var14 = 9.3
   local func14_var15 = 80
   if MissSwing_Int(ai, goal, func14_var14, func14_var15) then
      if func14_var5 >= 8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      elseif func14_var5 >= 3.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func14_var16 = 9.3
   local func14_var17 = 40
   if UseItem_Act(ai, goal, func14_var16, func14_var17) then
      if func14_var5 >= 8 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      elseif func14_var5 >= 3.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Near, -1, 40)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func14_var18 = 0.5
   local func14_var19 = 25
   local func14_var20 = 0
   local func14_var21 = 100
   local func14_var22 = Shoot_2dist(ai, goal, func14_var18, func14_var19, func14_var20, func14_var21)
   if func14_var22 == 1 then
      if func14_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
      return true
   elseif func14_var22 == 2 then
      if func14_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      end
   end
   local func14_var23 = 35
   local func14_var24 = 50
   local func14_var25 = 25
   local func14_var26 = 25
   local func14_var27 = 3
   if RebByOpGuard_Step(ai, goal, func14_var23, func14_var24, func14_var25, func14_var26, func14_var27) then
      return true
   end
   return false
end


