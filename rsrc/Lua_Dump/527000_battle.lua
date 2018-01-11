local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 4.5
local localScriptConfigVar2 = 5.3
local localScriptConfigVar3 = 6.2
local localScriptConfigVar4 = 9.1
local localScriptConfigVar5 = 10.8
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.4
local localScriptConfigVar8 = 10.4
local localScriptConfigVar9 = 12.3
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4.5
local localScriptConfigVar12 = 3
local localScriptConfigVar13 = 6
local localScriptConfigVar14 = 10.3
local localScriptConfigVar15 = 11.4
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 2.5
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 8
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 4.9
OnIf_527000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   if func1_param2 == 0 then
      if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_FRI_0, 0, AI_DIR_TYPE_L, 4)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_FRI_0, 0, AI_DIR_TYPE_R, 4)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_FRI_0, 0, AI_DIR_TYPE_B, 4)
      elseif func1_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_FRI_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_FRI_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Griffith527000Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 13)
   local func2_var5 = 0
   local func2_var6 = 0
   local func2_var7 = 0
   local func2_var8 = 0
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   local func2_var14 = 0
   local func2_var15 = 0
   local func2_var16 = 0
   if func2_var2 >= 12.3 then
      func2_var5 = 0
      func2_var6 = 0
      func2_var7 = 0
      func2_var8 = 10
      func2_var9 = 10
      func2_var10 = 10
      func2_var11 = 10
      func2_var12 = 60
      func2_var13 = 0
      func2_var14 = 0
      func2_var15 = 0
   elseif func2_var2 >= 10.8 then
      func2_var5 = 0
      func2_var6 = 0
      func2_var7 = 0
      func2_var8 = 20
      func2_var9 = 20
      func2_var10 = 20
      func2_var11 = 20
      func2_var12 = 20
      func2_var13 = 0
      func2_var14 = 0
      func2_var15 = 0
   elseif func2_var2 >= 6.2 then
      func2_var5 = 10
      func2_var6 = 10
      func2_var7 = 35
      func2_var8 = 0
      func2_var9 = 15
      func2_var10 = 0
      func2_var11 = 10
      func2_var12 = 0
      func2_var13 = 0
      func2_var14 = 10
      func2_var15 = 10
   elseif func2_var2 >= 2.5 then
      func2_var5 = 25
      func2_var6 = 25
      func2_var7 = 0
      func2_var8 = 0
      func2_var9 = 20
      func2_var10 = 0
      func2_var11 = 0
      func2_var12 = 0
      func2_var13 = 0
      func2_var14 = 10
      func2_var15 = 20
   else
      func2_var5 = 13
      func2_var6 = 12
      func2_var7 = 0
      func2_var8 = 0
      func2_var9 = 0
      func2_var10 = 0
      func2_var11 = 0
      func2_var12 = 0
      func2_var13 = 60
      func2_var14 = 5
      func2_var15 = 10
   end
   local func2_var17 = ai:GetRandam_Int(1, func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 + func2_var13 + func2_var14 + func2_var15)
   if func2_var17 <= func2_var5 then
      Griffith527000_Act01(ai, goal)
      func2_var16 = 100
   elseif func2_var17 <= func2_var5 + func2_var6 then
      Griffith527000_Act02(ai, goal)
      func2_var16 = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 then
      Griffith527000_Act03(ai, goal)
      func2_var16 = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 then
      Griffith527000_Act04(ai, goal)
      func2_var16 = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 then
      Griffith527000_Act05(ai, goal)
      func2_var16 = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 then
      Griffith527000_Act06(ai, goal)
      func2_var16 = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 then
      Griffith527000_Act07(ai, goal)
      func2_var16 = 0
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 then
      Griffith527000_Act08(ai, goal)
      func2_var16 = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 + func2_var13 then
      Griffith527000_Act09(ai, goal)
      func2_var16 = 0
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 + func2_var13 + func2_var14 then
      Griffith527000_Act10(ai, goal)
      func2_var16 = 0
   else
      Griffith527000_Act11(ai, goal)
      func2_var16 = 100
   end
   local func2_var18 = ai:GetRandam_Int(1, 100)
   if func2_var18 <= func2_var16 then
      Griffith527000_ActAfter_AdjustSpace(ai, goal, paramTbl)
   end
end

Griffith527000_Act01 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = localScriptConfigVar1
   local func3_var4 = localScriptConfigVar1 + 2
   local func3_var5 = 0
   local func3_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   if func3_var6 <= 5 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var6 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var6 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith527000_Act02 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = localScriptConfigVar11
   local func4_var4 = localScriptConfigVar11 + 2
   local func4_var5 = 0
   local func4_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   if func4_var6 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   elseif func4_var6 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith527000_Act03 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = localScriptConfigVar3
   local func5_var4 = localScriptConfigVar3 + 2
   local func5_var5 = 0
   local func5_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func5_var3, func5_var4, func5_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act04 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = localScriptConfigVar5
   local func6_var4 = localScriptConfigVar5 + 2
   local func6_var5 = 0
   local func6_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func6_var3, func6_var4, func6_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act05 = function(ai, goal)
   local func7_var2 = ai:GetDist(TARGET_ENE_0)
   local func7_var3 = localScriptConfigVar9
   local func7_var4 = localScriptConfigVar9 + 2
   local func7_var5 = 0
   local func7_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func7_var3, func7_var4, func7_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act06 = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   local func8_var3 = localScriptConfigVar15
   local func8_var4 = localScriptConfigVar15 + 2
   local func8_var5 = 0
   local func8_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func8_var3, func8_var4, func8_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_None, 0)
end

Griffith527000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 20, TARGET_ENE_0, 5.5, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, -1)
end

Griffith527000_Act09 = function(ai, goal)
   local func11_var2 = ai:GetDist(TARGET_ENE_0)
   local func11_var3 = localScriptConfigVar7
   local func11_var4 = localScriptConfigVar7 + 2
   local func11_var5 = 0
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
end

Griffith527000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3016, TARGET_ENE_0, DIST_None, 0)
end

Griffith527000_Act11 = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = localScriptConfigVar21
   local func13_var4 = localScriptConfigVar21 + 2
   local func13_var5 = 0
   local func13_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func13_var3, func13_var4, func13_var5)
   if func13_var6 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3017, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3017, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Griffith527000_ActAfter_AdjustSpace = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetRandam_Int(0, 100)
   local func14_var4 = ai:GetRandam_Int(0, 1)
   local func14_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func14_var4, TARGET_ENE_0, 2)
   if func14_var3 <= 30 and func14_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func14_var4, ai:GetRandam_Int(30, 45), true, true, -1)
   elseif func14_var3 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
   elseif func14_var3 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local func14_var6 = ai:GetRandam_Int(1, 100)
      if func14_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Griffith527000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Griffith527000Battle_Terminate = function(ai, goal)
end

Griffith527000Battle_Interupt = function(ai, goal)
   local func17_var2 = ai:GetRandam_Int(1, 100)
   local func17_var3 = ai:GetRandam_Int(1, 100)
   local func17_var4 = ai:GetRandam_Int(1, 100)
   local func17_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 5)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 0)
      return true
   end
   local func17_var6 = 3
   local func17_var7 = 25
   local func17_var8 = 40
   local func17_var9 = 30
   local func17_var10 = 30
   local func17_var11 = 4
   if Damaged_Step(ai, goal, func17_var6, func17_var7, func17_var8, func17_var9, func17_var10, func17_var11) then
      return true
   end
   local func17_var12 = 6.2
   local func17_var13 = 70
   local func17_var14 = ai:GetRandam_Int(1, 100)
   local func17_var15 = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, func17_var12, func17_var13) then
      if func17_var15 >= 4.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func17_var16 = 6.2
   local func17_var17 = 50
   local func17_var18 = ai:GetDist(TARGET_ENE_0)
   if MissSwing_Int(ai, goal, func17_var16, func17_var17) then
      if func17_var18 >= 4.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func17_var19 = 12.3
   local func17_var20 = 30
   local func17_var21 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func17_var19, func17_var20) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func17_var22 = 35
   local func17_var23 = 40
   local func17_var24 = 30
   local func17_var25 = 30
   local func17_var26 = 4
   if RebByOpGuard_Step(ai, goal, func17_var22, func17_var23, func17_var24, func17_var25, func17_var26) then
      return true
   end
   local func17_var27 = 3
   local func17_var28 = 18
   local func17_var29 = 0
   local func17_var30 = 60
   local func17_var31 = ai:GetRandam_Int(1, 100)
   local func17_var32 = ai:GetRandam_Int(1, 100)
   local func17_var33 = ai:GetDist(TARGET_ENE_0)
   local func17_var34 = Shoot_2dist(ai, goal, func17_var27, func17_var28, func17_var29, func17_var30)
   if func17_var34 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func17_var34 == 2 then
      if func17_var31 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


