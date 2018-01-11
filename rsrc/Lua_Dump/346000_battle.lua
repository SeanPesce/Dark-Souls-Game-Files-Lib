local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 10
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.4
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.6
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.6
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.1
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 3.5
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 8
local localScriptConfigVar16 = 2.5
local localScriptConfigVar17 = 4
ArmoredTask346000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(120, 180)
   local func1_var4 = ai:GetEventRequest(0)
   local func1_var5 = 0
   local func1_var6 = ai:GetRandam_Int(1, 100)
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
   local func1_var19 = 0
   local func1_var20 = 0
   ai:SetEventMoveTarget(1012772)
   local func1_var21 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   ai:SetEventMoveTarget(1012773)
   local func1_var22 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if func1_var4 == 1 then
      if ai:IsInsideTargetRegion(TARGET_SELF, 1012770) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012770) then
         func1_var5 = 1
         func1_var19 = 100
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1012771) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012771) then
         func1_var5 = 1
         func1_var20 = 100
      elseif not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012770) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012771) then
         func1_var5 = 1
         func1_var19 = 100
      end
      -- Tried to add an 'end' here but it's incorrect
      if func1_var5 == 0 then
         if ai:IsFinishTimer(0) == true and func1_var2 >= 12 then
            ai:SetTimer(0, func1_var3)
            func1_var14 = 100
         elseif func1_var2 <= 1.1 and func1_var6 <= 80 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 45) then
            func1_var17 = 100
         elseif func1_var2 <= 2 and func1_var6 <= 80 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            func1_var15 = 100
         elseif func1_var2 <= 2 and func1_var6 <= 80 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            func1_var16 = 100
         elseif func1_var2 >= 12 then
            func1_var11 = 25
            func1_var12 = 55
            func1_var13 = 20
            func1_var18 = 0
         elseif func1_var2 >= 4 then
            func1_var11 = 40
            func1_var12 = 35
            func1_var13 = 20
            func1_var18 = 5
         else
            func1_var11 = 35
            func1_var12 = 10
            func1_var13 = 35
            func1_var18 = 20
         end
      end
      local func1_var23 = ai:GetRandam_Int(1, func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20)
      if func1_var23 <= func1_var11 then
         if func1_var2 >= 6 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar17, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 1.5, 30)
         elseif func1_var2 >= 4.5 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar16, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 1.5, 30)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, -1)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, -1)
         end
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
         func1_var10 = 100
      elseif func1_var23 <= func1_var11 + func1_var12 then
         if func1_var2 >= 10 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 1.5, 30)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, true, -1)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 1.5, 30)
         end
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
         func1_var10 = 0
      elseif func1_var23 <= func1_var11 + func1_var12 + func1_var13 then
         local func1_var24 = localScriptConfigVar5
         local func1_var25 = localScriptConfigVar5 + 2
         local func1_var26 = 0
         BusyApproach_Act(ai, goal, func1_var24, func1_var25, func1_var26)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1, 20)
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
         func1_var10 = 100
      elseif func1_var23 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar15, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 1.5, 30)
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
         func1_var10 = 0
      elseif func1_var23 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         func1_var10 = 100
      elseif func1_var23 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         func1_var10 = 100
      elseif func1_var23 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         func1_var10 = 0
      elseif func1_var23 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
         local func1_var24 = localScriptConfigVar13
         local func1_var25 = localScriptConfigVar13 + 2
         local func1_var26 = 0
         BusyApproach_Act(ai, goal, func1_var24, func1_var25, func1_var26)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 1.5, 10)
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE, 0, 0, 0)
         func1_var10 = 100
      elseif func1_var23 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
         if func1_var21 >= 2 then
            ai:SetEventMoveTarget(1012772)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, TARGET_SELF, true, -1)
            goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
            goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
         elseif func1_var22 >= 2 then
            ai:SetEventMoveTarget(1012773)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 1, TARGET_SELF, true, -1)
         end
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
         goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
      end
      local func1_var24 = ai:GetRandam_Int(1, 100)
      if func1_var24 <= func1_var10 then
         ArmoredTask346000_ActAfter_AdjustSpace(ai, goal)
      end
end

ArmoredTask346000_ActAfter_AdjustSpace = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 80 then
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
   end
end

ArmoredTask346000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ArmoredTask346000Battle_Terminate = function(ai, goal)
end

ArmoredTask346000Battle_Interupt = function(ai, goal)
   return false
end


