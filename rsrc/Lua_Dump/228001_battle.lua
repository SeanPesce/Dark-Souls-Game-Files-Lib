local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.6
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.4
KinokoChild_m12_228001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetHpRate(TARGET_SELF)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetEventRequest(0)
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   local func1_var16 = 0
   local func1_var17 = 0
   if ai:IsInsideTargetRegion(TARGET_SELF, 1202114) then
      func1_var9 = 1
   end
   if func1_var4 >= 0.8 and func1_var9 == 0 then
      func1_var15 = 100
   elseif func1_var4 <= 0.8 and func1_var9 == 0 then
      func1_var16 = 100
   elseif func1_var8 == 1 then
      if func1_var3 >= 8 then
         func1_var11 = 10
         func1_var12 = 10
         func1_var13 = 80
         func1_var14 = 0
      elseif func1_var3 >= 4 then
         func1_var11 = 60
         func1_var12 = 40
         func1_var13 = 0
         func1_var14 = 0
      else
         func1_var11 = 100
         func1_var12 = 0
         func1_var13 = 0
         func1_var14 = 0
      end
   elseif func1_var3 >= 4 then
      func1_var11 = 0
      func1_var12 = 0
      func1_var17 = 100
   else
      func1_var11 = 20
      func1_var12 = 10
      func1_var17 = 70
   end
   -- Tried to add an 'end' here but it's incorrect
   local func1_var18 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var19 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var20 = 0
   if func1_var18 == 1 and func1_var19 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif func1_var18 == 1 and func1_var19 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local func1_var21 = ai:GetRandam_Int(1, func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17)
      if func1_var21 <= func1_var11 then
         local func1_var22 = localScriptConfigVar1
         local func1_var23 = localScriptConfigVar1 + 2
         local func1_var24 = 0
         Approach_Act(ai, goal, func1_var22, func1_var23, func1_var24)
         if func1_var5 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif func1_var5 <= 60 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         elseif func1_var5 <= 85 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         end
         func1_var10 = 100
      elseif func1_var21 <= func1_var11 + func1_var12 then
         local func1_var22 = localScriptConfigVar3
         local func1_var23 = localScriptConfigVar3 + 2
         local func1_var24 = 0
         local func1_var25 = 3002
         local func1_var26 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var10 = 100
      elseif func1_var21 <= func1_var11 + func1_var12 + func1_var13 then
         local func1_var22 = 6
         local func1_var23 = 8
         local func1_var24 = 0
         local func1_var25 = 3002
         local func1_var26 = DIST_None
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var10 = 0
      elseif func1_var21 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         local func1_var22 = localScriptConfigVar1
         local func1_var23 = localScriptConfigVar1 + 2
         local func1_var24 = 0
         Approach_Act(ai, goal, func1_var22, func1_var23, func1_var24)
         if func1_var5 <= 60 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif func1_var5 <= 95 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         end
         if func1_var6 >= 60 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(5, 7), TARGET_SELF, false, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_SELF, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
         end
         func1_var10 = 0
      elseif func1_var21 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 2, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 1, TARGET_SELF, true)
         func1_var10 = 0
      elseif func1_var21 <= func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
         ai:SetEventMoveTarget(1202114)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 1, TARGET_SELF, false, -1)
         func1_var10 = 0
      elseif func1_var3 >= 15 then
         goal:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 15, TARGET_SELF, false, -1)
      end
      func1_var10 = 0
   end
   local func1_var21 = ai:GetRandam_Int(1, 100)
   if func1_var21 <= func1_var10 then
      local func1_var22 = 0
      local func1_var23 = 70
      local func1_var24 = 0
      local func1_var25 = 10
      local func1_var26 = 20
      local func1_var27 = 0
      GetWellSpace_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26, func1_var27)
   end
end

KinokoChild_m12_228001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

KinokoChild_m12_228001Battle_Terminate = function(ai, goal)
end

KinokoChild_m12_228001Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 2
   local func4_var7 = 10
   if FindGuardBreak_Act(ai, goal, func4_var6, func4_var7) then
      local func4_var8 = localScriptConfigVar3
      local func4_var9 = localScriptConfigVar3 + 2
      local func4_var10 = 0
      local func4_var11 = 3002
      local func4_var12 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func4_var8, func4_var9, func4_var10, func4_var11, func4_var12)
      return true
   end
   return false
end


