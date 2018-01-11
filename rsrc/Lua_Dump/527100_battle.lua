local localScriptConfigVar0 = 2.8
local localScriptConfigVar1 = 3.5
local localScriptConfigVar2 = 7
local localScriptConfigVar3 = 9.8
local localScriptConfigVar4 = 14.1
local localScriptConfigVar5 = 16.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.5
local localScriptConfigVar8 = 12.6
local localScriptConfigVar9 = 17
local localScriptConfigVar10 = 5.2
local localScriptConfigVar11 = 6.5
local localScriptConfigVar12 = 9.9
local localScriptConfigVar13 = 30
local localScriptConfigVar14 = -0.6
local localScriptConfigVar15 = 1.2
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 15
local localScriptConfigVar18 = -6
local localScriptConfigVar19 = 1.2
local localScriptConfigVar20 = 14.1
local localScriptConfigVar21 = 30
local localScriptConfigVar22 = 4.3
local localScriptConfigVar23 = 7.8
Griffith_large527100Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 10)
   local func1_var5 = 0
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 8) then
      func1_var5 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 6) then
      func1_var6 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 6) then
      func1_var7 = 1
   end
   if func1_var7 == 1 or func1_var6 == 1 or func1_var5 == 1 then
      func1_var8 = 1
   end
   local func1_var9 = 0
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
   if func1_var2 >= 30 then
      func1_var12 = 10
      func1_var13 = 10
      func1_var15 = 10
      func1_var16 = 60
      func1_var19 = 10
   elseif func1_var2 >= 20 then
      func1_var12 = 20
      func1_var13 = 20
      func1_var15 = 15
      func1_var16 = 35
      func1_var19 = 10
   elseif func1_var2 >= 14.1 then
      func1_var12 = 25
      func1_var13 = 25
      func1_var15 = 25
      func1_var19 = 25
   elseif func1_var2 >= 7 then
      func1_var9 = 10
      func1_var10 = 10
      func1_var11 = 40
      func1_var19 = 20
      func1_var20 = 20
   elseif func1_var2 >= 5 then
      func1_var9 = 25
      func1_var10 = 25
      func1_var19 = 30
      func1_var20 = 20
   elseif func1_var2 >= 4.3 then
      func1_var9 = 35
      func1_var20 = 35
      func1_var21 = 30 * func1_var8
   elseif func1_var2 >= 3 then
      func1_var9 = 25
      func1_var10 = 25
      func1_var18 = 20
      func1_var21 = 30 * func1_var8
   elseif func1_var2 >= 1.5 then
      func1_var18 = 50
      func1_var21 = 50 * func1_var8
   else
      func1_var14 = 40
      func1_var17 = 20
      func1_var18 = 20
      func1_var21 = 20 * func1_var8
   end
   local func1_var23 = ai:GetRandam_Int(1, func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21)
   if func1_var23 <= func1_var9 then
      Griffith_large527100_Act01(ai, goal)
      func1_var22 = 100
   elseif func1_var23 <= func1_var9 + func1_var10 then
      Griffith_large527100_Act02(ai, goal)
      func1_var22 = 100
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 then
      Griffith_large527100_Act03(ai, goal)
      func1_var22 = 100
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      Griffith_large527100_Act04(ai, goal)
      func1_var22 = 100
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      Griffith_large527100_Act05(ai, goal)
      func1_var22 = 100
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      Griffith_large527100_Act06(ai, goal)
      func1_var22 = 100
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      Griffith_large527100_Act07(ai, goal)
      func1_var22 = 0
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      Griffith_large527100_Act08(ai, goal)
      func1_var22 = 100
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      Griffith_large527100_Act09(ai, goal)
      func1_var22 = 0
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
      Griffith_large527100_Act10(ai, goal)
      func1_var22 = 0
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
      Griffith_large527100_Act11(ai, goal)
      func1_var22 = 0
   elseif func1_var23 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
      Griffith_large527100_Act12(ai, goal)
      func1_var22 = 0
   else
      Griffith_large527100_Act13(ai, goal)
      func1_var22 = 0
   end
   local func1_var24 = ai:GetRandam_Int(1, 100)
   if func1_var24 <= func1_var22 then
      Griffith_large527100_ActAfter_AdjustSpace(ai, goal, paramTbl)
   end
end

Griffith_large527100_Act01 = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = localScriptConfigVar1
   local func2_var4 = localScriptConfigVar1 + 4.5
   local func2_var5 = 0
   local func2_var6 = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   if func2_var6 <= 5 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
   elseif func2_var6 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
   elseif func2_var6 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Near, 2, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
   end
end

Griffith_large527100_Act02 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = localScriptConfigVar11
   local func3_var4 = localScriptConfigVar11 + 4.5
   local func3_var5 = 0
   local func3_var6 = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   if func3_var6 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 2, 42)
   elseif func3_var6 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 2, 42)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 2, 42)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith_large527100_Act03 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = localScriptConfigVar3
   local func4_var4 = localScriptConfigVar3 + 4.5
   local func4_var5 = 0
   local func4_var6 = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_None, 2, 35)
end

Griffith_large527100_Act04 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = localScriptConfigVar5
   local func5_var4 = localScriptConfigVar5 + 4.5
   local func5_var5 = 0
   local func5_var6 = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 2, 45)
end

Griffith_large527100_Act05 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = localScriptConfigVar9
   local func6_var4 = localScriptConfigVar9 + 4.5
   local func6_var5 = 0
   local func6_var6 = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, func6_var3, func6_var4, func6_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith_large527100_Act06 = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = localScriptConfigVar15
   local func7_var4 = localScriptConfigVar15 + 4.5
   local func7_var5 = 0
   local func7_var6 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 2, 35)
end

Griffith_large527100_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_None, 0)
end

Griffith_large527100_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 11.3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
end

Griffith_large527100_Act09 = function(ai, goal)
   local func10_var2 = ai:GetDist(TARGET_ENE_0)
   local func10_var3 = localScriptConfigVar7
   local func10_var4 = localScriptConfigVar7 + 4.5
   local func10_var5 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 2, 37)
end

Griffith_large527100_Act10 = function(ai, goal)
   local func11_var2 = ai:GetDist(TARGET_ENE_0)
   local func11_var3 = localScriptConfigVar19
   local func11_var4 = localScriptConfigVar19 + 4.5
   local func11_var5 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_Middle, 0, -1)
end

Griffith_large527100_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3016, TARGET_ENE_0, DIST_None, 0)
end

Griffith_large527100_Act12 = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = localScriptConfigVar23
   local func13_var4 = localScriptConfigVar23 + 4.5
   local func13_var5 = 0
   local func13_var6 = ai:GetRandam_Int(1, 100)
   BusyApproach_Act(ai, goal, func13_var3, func13_var4, func13_var5)
   if func13_var6 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_None, 2, 45)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, DIST_Middle, 2, 45)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith_large527100_Act13 = function(ai, goal)
   local func14_var2 = ai:GetRandam_Int(1, 100)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = ai:GetDist(TARGET_ENE_0)
   local func14_var6 = 0
   local func14_var7 = 0
   local func14_var8 = 0
   local func14_var9 = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 8) then
      func14_var6 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 6) then
      func14_var7 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 6) then
      func14_var8 = 1
   end
   if func14_var8 == 1 or func14_var7 == 1 or func14_var6 == 1 then
      func14_var9 = 1
   end
   if func14_var6 == 1 or func14_var8 == 0 and func14_var7 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 8)
   elseif func14_var4 <= 50 or func14_var7 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 6)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 6)
   end
   return true
end

Griffith_large527100_ActAfter_AdjustSpace = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetRandam_Int(0, 100)
   local func15_var4 = ai:GetRandam_Int(0, 1)
   local func15_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func15_var4, TARGET_ENE_0, 2)
   if func15_var3 <= 30 and func15_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func15_var4, ai:GetRandam_Int(30, 45), true, true, -1)
   elseif func15_var3 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
   elseif func15_var3 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local func15_var6 = ai:GetRandam_Int(1, 100)
      if func15_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Griffith_large527100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Griffith_large527100Battle_Terminate = function(ai, goal)
end

Griffith_large527100Battle_Interupt = function(ai, goal)
   local func18_var2 = ai:GetRandam_Int(1, 100)
   local func18_var3 = ai:GetRandam_Int(1, 100)
   local func18_var4 = ai:GetRandam_Int(1, 100)
   local func18_var5 = ai:GetDist(TARGET_ENE_0)
   local func18_var6 = 7.8
   local func18_var7 = 50
   local func18_var8 = ai:GetRandam_Int(1, 100)
   local func18_var9 = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, func18_var6, func18_var7) then
      if func18_var9 >= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3017, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func18_var10 = 30
   local func18_var11 = 50
   local func18_var12 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func18_var10, func18_var11) then
      if func18_var12 >= 9.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 11.3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
      end
      return true
   end
   local func18_var13 = 5
   local func18_var14 = 30
   local func18_var15 = 0
   local func18_var16 = 60
   local func18_var17 = ai:GetRandam_Int(1, 100)
   local func18_var18 = ai:GetRandam_Int(1, 100)
   local func18_var19 = ai:GetDist(TARGET_ENE_0)
   local func18_var20 = Shoot_2dist(ai, goal, func18_var13, func18_var14, func18_var15, func18_var16)
   if func18_var20 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func18_var20 == 2 then
      if func18_var19 >= 9.9 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 11.3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
      end
      return true
   end
   return false
end


