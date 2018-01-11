local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 11
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.1
HusiPhalanx283001Battle_Activate = function(ai, goal)
   ai:AddObserveRegion(0, TARGET_SELF, 1102400)
   ai:AddObserveRegion(1, TARGET_SELF, 1102401)
   ai:AddObserveRegion(2, TARGET_SELF, 1102402)
   ai:AddObserveRegion(3, TARGET_SELF, 1102403)
   ai:AddObserveRegion(4, TARGET_SELF, 1102404)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetEventRequest()
   local func1_var4 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var5 = ai:GetRandam_Float(0.5, 2)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   if ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 9999)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0, 1), TARGET_ENE_0, 0, 0, 0)
   end
   if func1_var4 == ROLE_TYPE_Attack then
      if func1_var2 >= 6 then
         if func1_var6 <= 45 then
            local func1_var8 = localScriptConfigVar2
            local func1_var9 = localScriptConfigVar3
            local func1_var10 = -1
            local func1_var11 = 0
            Approach_or_Leave_Act(ai, goal, func1_var8, func1_var9, func1_var10, func1_var11)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_None, 0)
         elseif func1_var6 <= 55 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, -1)
            HusiPhalanx283001Battle_TukiCombo(ai, goal)
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
         elseif func1_var6 <= 65 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, true, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
         end
      elseif func1_var6 <= 35 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, -1)
         HusiPhalanx283001Battle_TukiCombo(ai, goal)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      elseif func1_var6 <= 65 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      end
   elseif func1_var4 == ROLE_TYPE_Torimaki then
      if func1_var6 <= 10 then
         local func1_var8 = 7
         local func1_var9 = 9
         local func1_var10 = -1
         local func1_var11 = 0
         Approach_or_Leave_Act(ai, goal, func1_var8, func1_var9, func1_var10, func1_var11)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
      end
   elseif func1_var6 <= 5 then
      local func1_var8 = 9
      local func1_var9 = 11
      local func1_var10 = -1
      local func1_var11 = 0
      Approach_or_Leave_Act(ai, goal, func1_var8, func1_var9, func1_var10, func1_var11)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_None, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 2), TARGET_NONE, 0, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

HusiPhalanx283001Battle_TukiCombo = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 3, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 3, 1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

HusiPhalanx283001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiPhalanx283001Battle_Terminate = function(ai, goal)
end

HusiPhalanx283001Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and (ai:IsInsideObserve(0) or ai:IsInsideObserve(1) or ai:IsInsideObserve(2) or ai:IsInsideObserve(3) or ai:IsInsideObserve(4)) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 1, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
      return true
   end
   return false
end


