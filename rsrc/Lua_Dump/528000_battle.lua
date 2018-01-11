local localScriptConfigVar0 = 1.5
local localScriptConfigVar1 = 1.5
local localScriptConfigVar2 = 4
local localScriptConfigVar3 = 5
local localScriptConfigVar4 = 4
local localScriptConfigVar5 = 5
local localScriptConfigVar6 = 4
local localScriptConfigVar7 = 5
local localScriptConfigVar8 = 2
local localScriptConfigVar9 = 6.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 2
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 2
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 6
local localScriptConfigVar18 = 10
local localScriptConfigVar19 = 16
local localScriptConfigVar20 = 2.5
local localScriptConfigVar21 = 4.5
CragSpider528000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetDist(TARGET_ENE_0)
   local func1_var8 = ai:GetDistYSigned(TARGET_ENE_0)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 120, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 121, 2)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 122, 2)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 123, 2)
   ai:AddObserveChrDmySphere(4, TARGET_ENE_0, 130, 2)
   ai:AddObserveChrDmySphere(5, TARGET_ENE_0, 131, 2)
   ai:AddObserveChrDmySphere(6, TARGET_ENE_0, 132, 2)
   ai:AddObserveChrDmySphere(7, TARGET_ENE_0, 133, 2)
   ai:AddObserveChrDmySphere(8, TARGET_ENE_0, 140, 2)
   ai:AddObserveChrDmySphere(9, TARGET_ENE_0, 141, 2)
   ai:AddObserveChrDmySphere(10, TARGET_ENE_0, 142, 2)
   ai:AddObserveChrDmySphere(11, TARGET_ENE_0, 143, 2)
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) or ai:IsInsideObserve(2) or ai:IsInsideObserve(3) then
      func1_var9 = 1
   elseif ai:IsInsideObserve(4) or ai:IsInsideObserve(5) or ai:IsInsideObserve(6) or ai:IsInsideObserve(7) then
      func1_var10 = 1
   elseif ai:IsInsideObserve(8) or ai:IsInsideObserve(9) or ai:IsInsideObserve(10) or ai:IsInsideObserve(11) then
      func1_var11 = 1
   end
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
   local func1_var24 = 50
   local func1_var25 = 1
   if ai:IsFinishTimer(0) == false then
      func1_var25 = 0
   else
      func1_var25 = 1
   end
   if func1_var7 >= 1.5 and func1_var7 <= 3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and func1_var2 <= 65 then
      func1_var12 = 100
   elseif func1_var7 >= 4 and func1_var7 <= 5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and func1_var3 <= 75 then
      func1_var13 = 100
   elseif func1_var7 <= 5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 110) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and func1_var3 <= 75 then
      func1_var14 = 100
   elseif func1_var7 <= 5 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 190) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 30) and func1_var3 <= 75 then
      func1_var15 = 100
   elseif func1_var9 == 1 and func1_var4 <= 20 then
      func1_var17 = 100
   elseif func1_var10 == 1 and func1_var4 <= 20 then
      func1_var18 = 100
   elseif func1_var11 == 1 and func1_var4 <= 20 then
      func1_var19 = 100
   elseif func1_var7 >= 12.5 then
      func1_var12 = 5
      func1_var13 = 20
      func1_var16 = 30 * func1_var25
      func1_var17 = 0
      func1_var20 = 0
      func1_var22 = 5
      func1_var23 = 40
   elseif func1_var7 >= 5 then
      func1_var12 = 35
      func1_var13 = 20
      func1_var16 = 30 * func1_var25
      func1_var17 = 0
      func1_var20 = 0
      func1_var22 = 25
      func1_var23 = 0
   elseif func1_var7 >= 2 then
      func1_var12 = 35
      func1_var13 = 20
      func1_var16 = 30 * func1_var25
      func1_var17 = 0
      func1_var20 = 0
      func1_var22 = 10
      func1_var23 = 0
   elseif func1_var7 >= 1.5 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) then
         func1_var12 = 25
         func1_var13 = 5
         func1_var16 = 10 * func1_var25
         func1_var17 = 10
         func1_var20 = 35
         func1_var21 = 15
         func1_var22 = 0
         func1_var23 = 0
      else
         func1_var12 = 0
         func1_var13 = 10
         func1_var16 = 10 * func1_var25
         func1_var17 = 0
         func1_var20 = 60
         func1_var21 = 35
         func1_var22 = 0
         func1_var23 = 0
      end
   else
      func1_var12 = 0
      func1_var13 = 0
      func1_var16 = 0
      func1_var17 = 0
      func1_var20 = 60
      func1_var21 = 40
      func1_var22 = 0
      func1_var23 = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   local func1_var26 = ai:GetRandam_Int(1, func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23)
   if func1_var26 <= func1_var12 then
      CragSpider528000_Act00(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 then
      CragSpider528000_Act01(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 then
      CragSpider528000_Act02(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      CragSpider528000_Act03(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      CragSpider528000_Act04(ai, goal)
      ai:SetTimer(0, 30)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      CragSpider528000_Act05(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
      CragSpider528000_Act06(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
      CragSpider528000_Act07(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
      CragSpider528000_Act08(ai, goal)
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 then
      CragSpider528000_Act09(ai, goal)
      func1_var24 = 0
   elseif func1_var26 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 then
      CragSpider528000_Act10(ai, goal)
   else
      CragSpider528000_Act11(ai, goal)
   end
   local func1_var27 = ai:GetRandam_Int(1, 100)
   if func1_var27 <= func1_var24 then
      CragSpider528000_GetWellSpace_Act(ai, goal)
   end
end

CragSpider528000_Act00 = function(ai, goal)
   local func2_var2 = localScriptConfigVar1
   local func2_var3 = localScriptConfigVar1 + 2
   local func2_var4 = 0
   Approach_Act(ai, goal, func2_var2, func2_var3, func2_var4)
   local func2_var5 = 1.5
   local func2_var6 = 20
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, func2_var5, func2_var6)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

CragSpider528000_Act01 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetDistYSigned(TARGET_ENE_0)
   if func3_var3 >= 0.1 or func3_var3 <= -0.1 then
      local func3_var4 = 1
      local func3_var5 = 1 + 3
      local func3_var6 = 0
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 3, 5)
   else
      local func3_var4 = localScriptConfigVar3
      local func3_var5 = localScriptConfigVar3 + 3
      local func3_var6 = 0
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 3, 5)
   end
end

CragSpider528000_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act04 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetDistYSigned(TARGET_ENE_0)
   if func6_var3 >= 0.2 then
      local func6_var4 = localScriptConfigVar9
      local func6_var5 = localScriptConfigVar9 + 2
      local func6_var6 = 0
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, 3, 20)
   else
      local func6_var4 = localScriptConfigVar9 - 2
      local func6_var5 = localScriptConfigVar9
      local func6_var6 = 0
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, 3, 20)
   end
end

CragSpider528000_Act05 = function(ai, goal)
   local func7_var2 = localScriptConfigVar11
   local func7_var3 = localScriptConfigVar11 + 3
   local func7_var4 = 0
   Approach_Act(ai, goal, func7_var2, func7_var3, func7_var4)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 3, 20)
end

CragSpider528000_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle)
end

CragSpider528000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
end

CragSpider528000_Act10 = function(ai, goal)
   local func12_var2 = localScriptConfigVar21
   local func12_var3 = localScriptConfigVar21 + 2
   local func12_var4 = 0
   Approach_Act(ai, goal, func12_var2, func12_var3, func12_var4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3013, TARGET_ENE_0, DIST_Near, 0)
end

CragSpider528000_Act11 = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = ai:GetDistYSigned(TARGET_ENE_0)
   if func13_var3 >= 0.2 then
      local func13_var4 = localScriptConfigVar19 - 3
      local func13_var5 = localScriptConfigVar19 + 2
      local func13_var6 = 0
      Approach_Act(ai, goal, func13_var4, func13_var5, func13_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3012, TARGET_ENE_0, DIST_Middle, 3, 5)
   else
      local func13_var4 = localScriptConfigVar19 + 3
      local func13_var5 = localScriptConfigVar19 + 5
      local func13_var6 = 0
      Approach_Act(ai, goal, func13_var4, func13_var5, func13_var6)
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_Middle, 3, 5)
   end
end

CragSpider528000_GetWellSpace_Act = function(ai, goal)
   local func14_var2 = ai:GetRandam_Int(1, 100)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   if func14_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, -1, -1)
   elseif func14_var2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, -1, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, -1, -1)
   end
end

CragSpider528000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

CragSpider528000Battle_Terminate = function(ai, goal)
end

CragSpider528000Battle_Interupt = function(ai, goal)
   local func17_var2 = ai:GetRandam_Int(1, 100)
   local func17_var3 = ai:GetRandam_Int(1, 100)
   local func17_var4 = ai:GetRandam_Int(1, 100)
   local func17_var5 = ai:GetDist(TARGET_ENE_0)
   local func17_var6 = 12
   local func17_var7 = 10
   local func17_var8 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func17_var6, func17_var7) then
      if func17_var8 >= 2.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func17_var9 = 16
   local func17_var10 = 30
   local func17_var11 = 0
   local func17_var12 = 15
   local func17_var13 = Shoot_2dist(ai, goal, func17_var9, func17_var10, func17_var11, func17_var12)
   if func17_var13 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   elseif func17_var13 == 2 then
      if func17_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


