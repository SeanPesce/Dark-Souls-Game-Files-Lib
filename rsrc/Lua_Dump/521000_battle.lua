local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 5.2
local localScriptConfigVar2 = 8
local localScriptConfigVar3 = 13.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.5
local localScriptConfigVar8 = 3.1
local localScriptConfigVar9 = 4.6
local localScriptConfigVar10 = 3.2
local localScriptConfigVar11 = 6.2
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 2
local localScriptConfigVar14 = 8
local localScriptConfigVar15 = 12
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 4.2
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 3.5
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 2.6
local localScriptConfigVar22 = 0
local localScriptConfigVar23 = 3.8
HolySwordWolf521000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
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
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      if func1_var2 >= 2.6 then
         func1_var14 = 65
         func1_var15 = 35
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
         func1_var16 = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
         func1_var17 = 100
      else
         func1_var14 = 35
         func1_var15 = 65
      end
   elseif func1_var2 >= 13.5 then
      func1_var7 = 10
      func1_var8 = 60
      func1_var9 = 10
      func1_var10 = 0
      func1_var13 = 0
      func1_var18 = 0
      func1_var19 = 20
   elseif func1_var2 >= 10 then
      func1_var7 = 20
      func1_var8 = 0
      func1_var9 = 25
      func1_var10 = 5
      func1_var13 = 0
      func1_var18 = 0
      func1_var19 = 50
   elseif func1_var2 >= 5.2 then
      func1_var7 = 40
      func1_var8 = 0
      func1_var9 = 35
      func1_var10 = 20
      func1_var13 = 5
      func1_var18 = 0
      func1_var19 = 0
   elseif func1_var2 >= 1.5 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) and func1_var3 <= 80 then
         func1_var11 = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 176) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) and func1_var3 <= 80 then
         func1_var12 = 100
      else
         func1_var7 = 35
         func1_var8 = 0
         func1_var9 = 35
         func1_var10 = 5
         func1_var13 = 25
         func1_var18 = 0
      end
   else
      func1_var7 = 15
      func1_var8 = 0
      func1_var9 = 15
      func1_var10 = 30
      func1_var13 = 10
      func1_var18 = 30
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      if func1_var4 <= func1_var7 then
         local func1_var20 = localScriptConfigVar1
         local func1_var21 = localScriptConfigVar1 + 4
         local func1_var22 = 0
         BusyApproach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         if func1_var5 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
         elseif func1_var5 <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func1_var4 <= func1_var7 + func1_var8 then
         local func1_var20 = localScriptConfigVar3
         local func1_var21 = localScriptConfigVar3 + 4
         local func1_var22 = 0
         BusyApproach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         if func1_var5 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 then
         local func1_var20 = localScriptConfigVar5
         local func1_var21 = localScriptConfigVar5 + 4
         local func1_var22 = 0
         BusyApproach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, -1, 50)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
         local func1_var20 = localScriptConfigVar7
         local func1_var21 = localScriptConfigVar7 + 4
         local func1_var22 = 0
         BusyApproach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, -1, 49)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         local func1_var20 = localScriptConfigVar17
         local func1_var21 = localScriptConfigVar17 + 200
         local func1_var22 = 0
         Approach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         if func1_var5 <= 45 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 39)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         local func1_var20 = localScriptConfigVar19
         local func1_var21 = localScriptConfigVar19 + 200
         local func1_var22 = 0
         Approach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, -1, 45)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
         local func1_var20 = localScriptConfigVar13
         local func1_var21 = localScriptConfigVar13 + 4
         local func1_var22 = 0
         BusyApproach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         if func1_var5 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 35)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 35)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         local func1_var20 = localScriptConfigVar15
         local func1_var21 = localScriptConfigVar15 + 4
         local func1_var22 = 0
         BusyApproach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, -1, 45)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      HolySwordWolf521000_ActAfter_AdjustSpace(ai, goal)
end

HolySwordWolf521000_ActAfter_AdjustSpace = function(ai, goal)
   local func2_var2 = ai:GetHpRate(TARGET_SELF)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 0.1 then
      if func2_var3 <= 60 then
      elseif func2_var3 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 3.6, TARGET_ENE_0, true, -1)
         return true
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
         return true
      end
      return true
   elseif func2_var3 <= 30 then
   elseif func2_var3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      return true
   elseif func2_var3 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
      return true
   elseif func2_var3 <= 100 then
      if func2_var4 <= 60 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   else
   end
end

HolySwordWolf521000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HolySwordWolf521000Battle_Terminate = function(ai, goal)
end

HolySwordWolf521000Battle_Interupt = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetDist(TARGET_ENE_0)
   if not ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      local func5_var6 = 5.8
      local func5_var7 = 80
      if GuardBreak_Act(ai, goal, func5_var6, func5_var7) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         return true
      end
      local func5_var8 = 5.8
      local func5_var9 = 15
      if UseItem_Act(ai, goal, func5_var8, func5_var9) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         return true
      end
      local func5_var10 = 8
      local func5_var11 = 25
      local func5_var12 = 0
      local func5_var13 = 30
      local func5_var14 = Shoot_2dist(ai, goal, func5_var10, func5_var11, func5_var12, func5_var13)
      if func5_var14 == 1 then
         if func5_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         end
         return true
      elseif func5_var14 == 2 then
         if func5_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         end
         return true
      end
   end
   return false
end


