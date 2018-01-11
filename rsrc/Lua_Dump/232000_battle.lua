local localScriptConfigVar0 = 1.4
local localScriptConfigVar1 = 3.8
local localScriptConfigVar2 = 1.1
local localScriptConfigVar3 = 4.2
local localScriptConfigVar4 = 1
local localScriptConfigVar5 = 3.1
local localScriptConfigVar6 = -1.5
local localScriptConfigVar7 = 3.8
local localScriptConfigVar8 = -1.5
local localScriptConfigVar9 = 0.4
local localScriptConfigVar10 = -1.5
local localScriptConfigVar11 = -0.5
local localScriptConfigVar12 = -1.5
local localScriptConfigVar13 = 0
local localScriptConfigVar14 = 12
local localScriptConfigVar15 = 30
IronGolem232000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   local func1_var9 = ai:GetEventRequest()
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
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 1.4)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 30, 1.4)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 4, 1.4)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 40, 1.4)
   local func1_var25 = ai:GetNumber(0)
   local func1_var26 = 1
   if ai:IsFinishTimer(0) == false then
      func1_var26 = 0.1
   end
   local func1_var27 = 1
   if ai:IsFinishTimer(1) == false then
      func1_var27 = 0.2
   end
   local func1_var28 = 1
   if ai:IsFinishTimer(2) == false then
      func1_var28 = 0.2
   end
   local func1_var29 = 1
   if ai:IsFinishTimer(3) == false then
      func1_var29 = 0
   end
   local func1_var30 = 1
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1502730) then
      func1_var30 = 0
   end
   if func1_var25 == 0 then
      func1_var22 = 100
   elseif ai:IsInsideObserve(0) or ai:IsInsideObserve(1) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and func1_var2 <= 75 * func1_var27 then
      func1_var14 = 100
   elseif ai:IsInsideObserve(2) or ai:IsInsideObserve(3) and func1_var3 <= 75 * func1_var28 then
      func1_var15 = 50
      func1_var20 = 50
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and func1_var8 >= 0 and func1_var8 <= 4 and func1_var4 <= 75 * func1_var26 then
      func1_var16 = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and func1_var8 >= -1.5 and func1_var8 <= 1.5 and func1_var5 <= 60 then
      func1_var17 = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 50) and func1_var8 >= -1.5 and func1_var8 <= 1.5 and func1_var6 <= 75 * func1_var26 then
      func1_var18 = 100
   elseif func1_var8 >= 12 then
      func1_var11 = 5
      func1_var12 = 10 * func1_var30
      func1_var13 = 5
      func1_var21 = 50
      func1_var23 = 30
   elseif func1_var8 >= 6 then
      func1_var11 = 30
      func1_var12 = 45 * func1_var30
      func1_var13 = 15
      func1_var16 = 10 * func1_var26
   elseif func1_var8 >= 3 then
      func1_var11 = 20
      func1_var12 = 35 * func1_var30
      func1_var13 = 10
      func1_var16 = 15 * func1_var26
      func1_var24 = 20 * func1_var29
   elseif func1_var8 >= 1.4 then
      func1_var11 = 5
      func1_var12 = 10 * func1_var30
      func1_var13 = 10
      func1_var16 = 25 * func1_var26
      func1_var24 = 50 * func1_var29
   elseif func1_var8 >= -0.5 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
         func1_var16 = 20 * func1_var26
         func1_var17 = 15
         func1_var18 = 5 * func1_var26
         func1_var19 = 10
         func1_var24 = 300 * func1_var29
      else
         func1_var16 = 20 * func1_var26
         func1_var17 = 15
         func1_var18 = 5 * func1_var26
         func1_var19 = 10
         func1_var24 = 50 * func1_var29
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
      func1_var17 = 10
      func1_var18 = 10 * func1_var26
      func1_var19 = 10
      func1_var24 = 300 * func1_var29
      func1_var14 = 5 * func1_var27
      func1_var15 = 5 * func1_var28
   else
      func1_var17 = 10
      func1_var18 = 10 * func1_var26
      func1_var19 = 10
      func1_var24 = 70 * func1_var29
      func1_var14 = 5 * func1_var27
      func1_var15 = 5 * func1_var28
   end
   -- Tried to add an 'end' here but it's incorrect
   if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
      func1_var18 = 200
   end
   local func1_var31 = ai:GetRandam_Int(1, func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24)
   if func1_var31 <= func1_var11 then
      IronGolem232000_Act00(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 then
      IronGolem232000_Act01(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 then
      IronGolem232000_Act02(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      IronGolem232000_Act03(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      IronGolem232000_Act04(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      IronGolem232000_Act05(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      IronGolem232000_Act06(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
      IronGolem232000_Act07(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
      IronGolem232000_Act08(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
      IronGolem232000_Act09(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 then
      IronGolem232000_Act10(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 then
      IronGolem232000_Act11(ai, goal)
   elseif func1_var31 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 then
      IronGolem232000_Act12(ai, goal)
   else
      IronGolem232000_Act13(ai, goal)
   end
end

IronGolem232000_Act00 = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = localScriptConfigVar1
   local func2_var4 = localScriptConfigVar1 + 0
   local func2_var5 = 0
   Approach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   if func2_var2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 45)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 45)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

IronGolem232000_Act01 = function(ai, goal)
   local func3_var2 = ai:GetRandam_Int(1, 100)
   local func3_var3 = localScriptConfigVar3
   local func3_var4 = localScriptConfigVar3 + 0
   local func3_var5 = 0
   Approach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   if func3_var2 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Far, 2, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Far, 2, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   end
end

IronGolem232000_Act02 = function(ai, goal)
   local func4_var2 = localScriptConfigVar5
   local func4_var3 = localScriptConfigVar5 + 0
   local func4_var4 = 0
   Approach_Act(ai, goal, func4_var2, func4_var3, func4_var4)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 30)
end

IronGolem232000_Act03 = function(ai, goal)
   ai:SetTimer(1, 15)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Near, 0, 180)
end

IronGolem232000_Act04 = function(ai, goal)
   ai:SetTimer(2, 15)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Near, 0, 180)
end

IronGolem232000_Act05 = function(ai, goal)
   local func7_var2 = localScriptConfigVar7
   local func7_var3 = localScriptConfigVar7 + 0
   local func7_var4 = 0
   Approach_Act(ai, goal, func7_var2, func7_var3, func7_var4)
   ai:SetTimer(0, 25)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 2, 30)
end

IronGolem232000_Act06 = function(ai, goal)
   local func8_var2 = localScriptConfigVar9
   local func8_var3 = localScriptConfigVar9 + 0
   local func8_var4 = 0
   Approach_Act(ai, goal, func8_var2, func8_var3, func8_var4)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 2, 30)
end

IronGolem232000_Act07 = function(ai, goal)
   ai:SetTimer(0, 25)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 0, 180)
end

IronGolem232000_Act08 = function(ai, goal)
   local func10_var2 = localScriptConfigVar13
   local func10_var3 = localScriptConfigVar13 + 0
   local func10_var4 = 0
   Approach_Act(ai, goal, func10_var2, func10_var3, func10_var4)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Near, 2, 90)
end

IronGolem232000_Act09 = function(ai, goal)
   ai:SetTimer(2, 15)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, DIST_Near, 0, 180)
end

IronGolem232000_Act10 = function(ai, goal)
   local func12_var2 = localScriptConfigVar15
   local func12_var3 = localScriptConfigVar15 + 0
   local func12_var4 = 0
   Approach_Act(ai, goal, func12_var2, func12_var3, func12_var4)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, -1, 20)
end

IronGolem232000_Act11 = function(ai, goal)
   ai:SetNumber(0, 1)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, -1, 20)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Far, 2, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
end

IronGolem232000_Act12 = function(ai, goal)
   local func14_var2 = 8.5
   local func14_var3 = 8.5
   local func14_var4 = 0
   Approach_Act(ai, goal, func14_var2, func14_var3, func14_var4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Far, 2, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
end

IronGolem232000_Act13 = function(ai, goal)
   ai:SetTimer(3, 10)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
end

IronGolem232000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

IronGolem232000Battle_Terminate = function(ai, goal)
end

IronGolem232000Battle_Interupt = function(ai, goal)
   local func18_var2 = ai:GetRandam_Int(1, 100)
   local func18_var3 = ai:GetRandam_Int(1, 100)
   local func18_var4 = ai:GetRandam_Int(1, 100)
   local func18_var5 = ai:GetDist(TARGET_ENE_0)
   local func18_var6 = 20
   local func18_var7 = 50
   local func18_var8 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func18_var6, func18_var7) then
      if func18_var8 >= 12 then
         IronGolem232000_Act10(ai, goal)
      elseif func18_var8 >= 8.5 then
         IronGolem232000_Act12(ai, goal)
      elseif func18_var8 >= 4.1 then
         IronGolem232000_Act01(ai, goal)
      elseif func18_var8 >= 0 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            IronGolem232000_Act13(ai, goal)
         else
            IronGolem232000_Act05(ai, goal)
         end
      else
         IronGolem232000_Act13(ai, goal)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


