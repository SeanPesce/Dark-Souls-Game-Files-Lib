local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.7
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.6
local localScriptConfigVar8 = 2
local localScriptConfigVar9 = 3.5
local localScriptConfigVar10 = 2
local localScriptConfigVar11 = 3.5
local localScriptConfigVar12 = 5
local localScriptConfigVar13 = 7.3
BigInunezumi120200Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   ai:AddObserveRegion(0, TARGET_ENE_0, 1002700)
   ai:AddObserveRegion(1, TARGET_ENE_0, 1002701)
   ai:AddObserveRegion(2, TARGET_ENE_0, 1002702)
   ai:AddObserveRegion(3, TARGET_ENE_0, 1002704)
   ai:SetEventMoveTarget(1002703)
   local func1_var15 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1002700) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1002701) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1002702) then
      func1_var11 = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1002704) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) and func1_var2 <= 3.5 then
         func1_var12 = 100
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) and func1_var2 <= 3.5 then
         func1_var13 = 100
      elseif func1_var2 >= 5.1 then
         func1_var7 = 10
         func1_var8 = 15
         func1_var9 = 10
         func1_var10 = 15
         func1_var14 = 50
      else
         func1_var7 = 25
         func1_var8 = 25
         func1_var9 = 25
         func1_var10 = 25
         func1_var14 = 0
      end
   else
      func1_var11 = 100
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local func1_var16 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
      local func1_var17 = ai:GetTeamOrder(ORDER_TYPE_Role)
      local func1_var18 = 0
      if func1_var16 == 1 and func1_var17 == ROLE_TYPE_Torimaki then
         Torimaki_Act(ai, goal, func1_var18)
      elseif func1_var16 == 1 and func1_var17 == ROLE_TYPE_Kankyaku then
         Kankyaku_Act(ai, goal, func1_var18)
      else
         local func1_var19 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14)
         if func1_var19 <= func1_var7 then
            local func1_var20 = localScriptConfigVar1
            local func1_var21 = localScriptConfigVar1 + 2
            local func1_var22 = 0
            Approach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_Middle, -1, 32)
            func1_var6 = 100
         elseif func1_var19 <= func1_var7 + func1_var8 then
            local func1_var20 = localScriptConfigVar3
            local func1_var21 = localScriptConfigVar3 + 2
            local func1_var22 = 0
            Approach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_Middle, -1, 32)
            func1_var6 = 100
         elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 then
            local func1_var20 = localScriptConfigVar5
            local func1_var21 = localScriptConfigVar5 + 2
            local func1_var22 = 0
            Approach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_Middle, -1, 32)
            func1_var6 = 100
         elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
            local func1_var20 = localScriptConfigVar7
            local func1_var21 = localScriptConfigVar7 + 2
            local func1_var22 = 0
            Approach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3003, TARGET_ENE_0, DIST_Middle, -1, 32)
            func1_var6 = 100
         elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
            if func1_var15 >= 2 then
               ai:SetEventMoveTarget(1002703)
               goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, POINT_EVENT, 0, TARGET_SELF, True, -1)
               goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
               goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
               func1_var6 = 0
            elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
               local func1_var20 = 0
               goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3004, TARGET_ENE_0, DIST_Middle, 0)
               func1_var6 = 100
            elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
               local func1_var20 = 0
               goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3005, TARGET_ENE_0, DIST_Middle, 0)
               func1_var6 = 100
            else
               local func1_var20 = localScriptConfigVar13
               local func1_var21 = localScriptConfigVar13 + 1.5
               local func1_var22 = 0
               Approach_Act(ai, goal, func1_var20, func1_var21, func1_var22)
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_Middle, -1, 32)
               func1_var6 = 100
            end
         end
      end
      local func1_var19 = ai:GetRandam_Int(1, 100)
      if func1_var19 <= func1_var6 then
         if func1_var4 <= 70 then
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
      end
end

BigInunezumi120200Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BigInunezumi120200Battle_Terminate = function(ai, goal)
end

BigInunezumi120200Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 2)
      ai:Replaning()
      return true
   end
   return false
end


