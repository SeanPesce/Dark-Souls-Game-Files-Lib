local localScriptConfigVar0 = 1.8
local localScriptConfigVar1 = 4.8
local localScriptConfigVar2 = 0.5
local localScriptConfigVar3 = 1
local localScriptConfigVar4 = -1.1
local localScriptConfigVar5 = 1.3
local localScriptConfigVar6 = 2
local localScriptConfigVar7 = 4
local localScriptConfigVar8 = 5.3
local localScriptConfigVar9 = 6.7
local localScriptConfigVar10 = 12
local localScriptConfigVar11 = 18
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 0
local localScriptConfigVar14 = 3.2
local localScriptConfigVar15 = 10.2
OnIf_236001 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   if func1_param2 == 0 then
      if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_NONE, 0, AI_DIR_TYPE_L, 3.7)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_NONE, 0, AI_DIR_TYPE_R, 3.7)
      elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_F, 120) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_FRI_0, 0, AI_DIR_TYPE_B, 4)
      elseif func1_var4 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_NONE, 0, AI_DIR_TYPE_L, 3.7)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_NONE, 0, AI_DIR_TYPE_R, 3.7)
      end
   end
end

FourKnightC_Thunder236001Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_F, 360, 13)
   local func2_var4 = 0
   local func2_var5 = 0
   local func2_var6 = 0
   local func2_var7 = 0
   local func2_var8 = 0
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   if func2_var2 >= 12 then
      func2_var4 = 25
      func2_var5 = 15
      func2_var6 = 0
      func2_var7 = 50
      func2_var8 = 0
      func2_var9 = 0
      func2_var10 = 0
      func2_var11 = 10
   elseif func2_var2 >= 6.7 then
      func2_var4 = 60
      func2_var5 = 10
      func2_var6 = 0
      func2_var7 = 0
      func2_var8 = 20
      func2_var9 = 0
      func2_var10 = 0
      func2_var11 = 10
   elseif func2_var2 >= 3.3 then
      func2_var4 = 20
      func2_var5 = 20
      func2_var6 = 0
      func2_var7 = 0
      func2_var8 = 40
      func2_var9 = 0
      func2_var10 = 0
      func2_var11 = 20
   elseif func2_var2 >= 1 then
      func2_var4 = 0
      func2_var5 = 0
      func2_var6 = 25
      func2_var7 = 0
      func2_var8 = 0
      func2_var9 = 37
      func2_var10 = 38
      func2_var11 = 0
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
      func2_var4 = 0
      func2_var5 = 0
      func2_var6 = 60
      func2_var7 = 0
      func2_var8 = 0
      func2_var9 = 20
      func2_var10 = 20
      func2_var11 = 0
   else
      func2_var4 = 0
      func2_var5 = 0
      func2_var6 = 50
      func2_var7 = 0
      func2_var8 = 0
      func2_var9 = 25
      func2_var10 = 25
      func2_var11 = 0
   end
   local func2_var13 = ai:GetRandam_Int(1, func2_var4 + func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11)
   if func2_var13 <= func2_var4 then
      FourKnightC_Thunder236001_Act01(ai, goal)
      func2_var12 = 100
   elseif func2_var13 <= func2_var4 + func2_var5 then
      FourKnightC_Thunder236001_Act02(ai, goal)
      func2_var12 = 100
   elseif func2_var13 <= func2_var4 + func2_var5 + func2_var6 then
      FourKnightC_Thunder236001_Act03(ai, goal)
      func2_var12 = 0
   elseif func2_var13 <= func2_var4 + func2_var5 + func2_var6 + func2_var7 then
      FourKnightC_Thunder236001_Act04(ai, goal)
      func2_var12 = 100
   elseif func2_var13 <= func2_var4 + func2_var5 + func2_var6 + func2_var7 + func2_var8 then
      FourKnightC_Thunder236001_Act05(ai, goal)
      func2_var12 = 100
   elseif func2_var13 <= func2_var4 + func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 then
      FourKnightC_Thunder236001_Act06(ai, goal)
      func2_var12 = 100
   elseif func2_var13 <= func2_var4 + func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 then
      FourKnightC_Thunder236001_Act07(ai, goal)
      func2_var12 = 100
   else
      FourKnightC_Thunder236001_Act08(ai, goal)
      func2_var12 = 100
   end
   local func2_var14 = ai:GetRandam_Int(1, 100)
   if func2_var14 <= func2_var12 then
      FourKnightC_Thunder236001_GetWellSpace_Act(ai, goal)
   end
end

FourKnightC_Thunder236001_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar9
   local func3_var5 = localScriptConfigVar9 + 4
   local func3_var6 = 0
   Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar1
   local func4_var6 = localScriptConfigVar1 + 4
   local func4_var7 = 0
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

FourKnightC_Thunder236001_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, -1)
end

FourKnightC_Thunder236001_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar11
   local func6_var5 = localScriptConfigVar11 + 4
   local func6_var6 = 0
   Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar15
   local func7_var5 = localScriptConfigVar15 + 4
   local func7_var6 = 0
   Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = localScriptConfigVar3
   local func8_var5 = localScriptConfigVar3 + 4
   local func8_var6 = 0
   Approach_Act(ai, goal, func8_var4, func8_var5, func8_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = localScriptConfigVar5
   local func9_var5 = localScriptConfigVar5 + 4
   local func9_var6 = 0
   Approach_Act(ai, goal, func9_var4, func9_var5, func9_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
end

FourKnightC_Thunder236001_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = localScriptConfigVar7
   local func10_var6 = localScriptConfigVar7 + 4
   local func10_var7 = 0
   Approach_Act(ai, goal, func10_var5, func10_var6, func10_var7)
   if func10_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
end

FourKnightC_Thunder236001_GetWellSpace_Act = function(ai, goal)
   local func11_var2 = ai:GetDist(TARGET_ENE_0)
   local func11_var3 = ai:GetRandam_Int(1, 100)
   local func11_var4 = ai:GetRandam_Int(0, 1)
   local func11_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func11_var4, TARGET_ENE_0, 2)
   if func11_var3 <= 50 then
   elseif func11_var3 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   end
end

FourKnightC_Thunder236001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FourKnightC_Thunder236001Battle_Terminate = function(ai, goal)
end

FourKnightC_Thunder236001Battle_Interupt = function(ai, goal)
   local func14_var2 = ai:GetDist(TARGET_ENE_0)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = 3
   local func14_var6 = 15
   local func14_var7 = 60
   local func14_var8 = 20
   local func14_var9 = 20
   local func14_var10 = 4
   if Damaged_Step(ai, goal, func14_var5, func14_var6, func14_var7, func14_var8, func14_var9, func14_var10) then
      return true
   end
   local func14_var11 = 7
   local func14_var12 = 80
   if GuardBreak_Act(ai, goal, func14_var11, func14_var12) then
      if func14_var2 <= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func14_var13 = 7
   local func14_var14 = 70
   if MissSwing_Int(ai, goal, func14_var13, func14_var14) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func14_var15 = 8
   local func14_var16 = 30
   if UseItem_Act(ai, goal, func14_var15, func14_var16) then
      if func14_var2 <= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func14_var17 = 3.2
   local func14_var18 = 10.2
   local func14_var19 = 0
   local func14_var20 = 50
   local func14_var21 = Shoot_2dist(ai, goal, func14_var17, func14_var18, func14_var19, func14_var20)
   if func14_var21 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      return true
   elseif func14_var21 == 2 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end


