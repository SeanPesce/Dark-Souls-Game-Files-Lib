local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 8
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 7.5
local localScriptConfigVar8 = -1.3
local localScriptConfigVar9 = 0
local localScriptConfigVar10 = 6.5
local localScriptConfigVar11 = 8.7
local localScriptConfigVar12 = 11.8
local localScriptConfigVar13 = 13.5
local localScriptConfigVar14 = 5.5
local localScriptConfigVar15 = 25
HaikaiDemon230000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetHpRate(TARGET_SELF)
   local func1_var5 = ai:GetNpcThinkParamID()
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetRandam_Int(1, 100)
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
   local func1_var23 = 0
   local func1_var24 = 1
   local func1_var25 = 1
   if func1_var5 == 230000 then
      func1_var17 = 1302750
      func1_var18 = 1302750
      func1_var19 = 1302750
      func1_var20 = 1302750
      func1_var21 = 1302751
      func1_var22 = 1302752
      func1_var23 = 1302752
   elseif func1_var5 == 230001 then
      func1_var17 = 1502734
      func1_var18 = 1502734
      func1_var19 = 1502734
      func1_var20 = 1502734
      func1_var21 = 1502735
      func1_var22 = 1502731
      func1_var23 = 1502732
   elseif func1_var5 == 230002 then
      func1_var17 = 1502733
      func1_var18 = 1502733
      func1_var19 = 1502733
      func1_var20 = 1502733
      func1_var21 = 1502733
      func1_var22 = 1502731
      func1_var23 = 1502731
   elseif func1_var5 == 230003 then
      func1_var17 = 1012795
      func1_var18 = 1012795
      func1_var19 = 1012795
      func1_var20 = 1012795
      func1_var21 = 1012795
      func1_var22 = 1012796
      func1_var23 = 1012797
      func1_var25 = 0
      if not ai:IsInsideTargetRegion(TARGET_SELF, func1_var17) then
         func1_var24 = 0
      elseif func1_var5 == 230004 then
         func1_var17 = 1512760
         func1_var18 = 1512760
         func1_var19 = 1512760
         func1_var20 = 1512760
         func1_var21 = 1512760
         func1_var22 = 1512761
         func1_var23 = 1512762
         if not ai:IsInsideTargetRegion(TARGET_SELF, func1_var17) then
            func1_var24 = 0
            func1_var25 = 0
         elseif func1_var5 == 230005 then
            func1_var17 = 1412740
            func1_var18 = 1412740
            func1_var19 = 1412740
            func1_var20 = 1412740
            func1_var21 = 1412740
            func1_var22 = 1412741
            func1_var23 = 1412742
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      if ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var17) or ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var18) or ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var19) or ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var20) or ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var21) then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) and func1_var3 <= 0.8 then
            func1_var13 = 85
            func1_var14 = 15
         elseif func1_var3 >= 12.3 then
            func1_var10 = 5
            func1_var11 = 10
            func1_var13 = 75
            func1_var15 = 10
         elseif func1_var3 >= 7 then
            func1_var11 = 40
            func1_var12 = 5
            func1_var13 = 40
            func1_var15 = 15
         elseif func1_var3 >= 4 then
            func1_var10 = 55
            func1_var11 = 25
            func1_var12 = 20
         elseif func1_var3 >= 2.2 then
            func1_var10 = 70
            func1_var12 = 20
            func1_var14 = 10
         else
            func1_var10 = 55
            func1_var12 = 15
            func1_var14 = 30
         end
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var22) or ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var23) then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) and func1_var3 <= 0.8 then
            func1_var13 = 85
            func1_var14 = 15
         elseif func1_var3 >= 8 then
            func1_var15 = 75
            func1_var16 = 25
         elseif func1_var3 >= 5.5 then
            func1_var11 = 40
            func1_var15 = 45
            func1_var16 = 15
         elseif func1_var3 >= 3.8 then
            func1_var11 = 85
            func1_var16 = 15
         else
            func1_var10 = 50
            func1_var11 = 45
            func1_var16 = 5
         end
      else
         func1_var16 = 100
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local func1_var26 = ai:GetRandam_Int(1, func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16)
      if func1_var26 <= func1_var10 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         if func1_var6 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 70)
         elseif func1_var6 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         func1_var9 = 100
      elseif func1_var26 <= func1_var10 + func1_var11 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         if func1_var6 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 70)
         elseif func1_var6 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 70)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         end
         func1_var9 = 100
      elseif func1_var26 <= func1_var10 + func1_var11 + func1_var12 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         func1_var9 = 100
      elseif func1_var26 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 then
         if localScriptConfigVar12 <= func1_var3 and func1_var6 <= 40 and func1_var25 == 1 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
            func1_var9 = 100
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
            func1_var9 = 100
         end
      elseif func1_var26 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0)
         func1_var9 = 0
      elseif func1_var26 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
         if func1_var5 == 230003 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
         end
         func1_var9 = 0
      elseif func1_var5 == 230003 then
         ai:SetEventMoveTarget(1012798)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_ENE_0, True, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 1, TARGET_ENE_0, True, -1)
      end
      -- Tried to add an 'end' here but it's incorrect
      local func1_var27 = ai:GetRandam_Int(1, 100)
      if func1_var27 <= func1_var9 and func1_var24 == 1 then
         local func1_var28 = 0
         local func1_var29 = 70
         local func1_var30 = 0
         local func1_var31 = 0
         local func1_var32 = 0
         local func1_var33 = 30
         GetWellSpace_Act(ai, goal, func1_var28, func1_var29, func1_var30, func1_var31, func1_var32, func1_var33)
      end
end

HaikaiDemon230000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HaikaiDemon230000Battle_Terminate = function(ai, goal)
end

HaikaiDemon230000Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 3
   local func4_var7 = 15
   local func4_var8 = 100
   local func4_var9 = 0
   local func4_var10 = 0
   local func4_var11 = 6
   if Damaged_Step(ai, goal, func4_var6, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11) then
      return true
   end
   local func4_var12 = 4.3
   local func4_var13 = 60
   local func4_var14 = 3000
   if GuardBreak_Attack(ai, goal, func4_var12, func4_var13, func4_var14) then
      return true
   end
   local func4_var15 = 9.5
   local func4_var16 = 15
   if UseItem_Act(ai, goal, func4_var15, func4_var16) then
      if func4_var5 >= 4.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func4_var17 = 20
   local func4_var18 = 100
   local func4_var19 = 0
   local func4_var20 = 0
   local func4_var21 = 6
   if RebByOpGuard_Step(ai, goal, func4_var17, func4_var18, func4_var19, func4_var20, func4_var21) then
      return true
   end
   return false
end


