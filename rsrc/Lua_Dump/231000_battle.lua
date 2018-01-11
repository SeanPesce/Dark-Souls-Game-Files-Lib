local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.3
local localScriptConfigVar2 = 5.4
local localScriptConfigVar3 = 8
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 5.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 23
OnIf_231000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetEventRequest(0)
   if func1_param2 == 1 then
      ai:SetEventMoveTarget(1102714)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3014, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 2 then
      ai:SetEventMoveTarget(1102715)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3015, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 3 then
      ai:SetEventMoveTarget(1102711)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3016, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 4 then
      ai:SetEventMoveTarget(1102710)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3017, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 5 then
      ai:SetEventMoveTarget(1102713)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3018, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 6 then
      ai:SetEventMoveTarget(1102712)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3019, POINT_EVENT, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Kyochojin231000Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetEventRequest(0)
   local func2_var8 = 0
   ai:AddObserveRegion(0, TARGET_SELF, 1102020)
   ai:AddObserveRegion(1, TARGET_SELF, 1102030)
   ai:AddObserveRegion(2, TARGET_SELF, 1102040)
   ai:AddObserveRegion(3, TARGET_SELF, 1102050)
   ai:AddObserveRegion(4, TARGET_ENE_0, 1102020)
   ai:AddObserveRegion(5, TARGET_ENE_0, 1102030)
   ai:AddObserveRegion(6, TARGET_ENE_0, 1102040)
   ai:AddObserveRegion(7, TARGET_ENE_0, 1102050)
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   if func2_var7 == 1 then
      ai:SetEventMoveTarget(1102710)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 1)
   elseif func2_var7 == 2 then
      ai:SetEventMoveTarget(1102712)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 2)
   elseif func2_var7 == 3 then
      ai:SetEventMoveTarget(1102710)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 3)
   elseif func2_var7 == 4 then
      ai:SetEventMoveTarget(1102711)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 4)
   elseif func2_var7 == 5 then
      ai:SetEventMoveTarget(1102712)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 5)
   elseif func2_var7 == 6 then
      ai:SetEventMoveTarget(1102713)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_If, 30, 6)
   elseif func2_var3 >= 10 then
      func2_var9 = 50
      func2_var10 = 50
      func2_var11 = 0
      func2_var12 = 0
   elseif func2_var3 >= 5.4 then
      func2_var9 = 20
      func2_var10 = 40
      func2_var11 = 40
      func2_var12 = 0
   else
      func2_var9 = 50
      func2_var10 = 0
      func2_var11 = 50
      func2_var12 = 0
   end
   local func2_var14 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func2_var15 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func2_var16 = 0
   if func2_var14 == 1 and func2_var15 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func2_var16)
   elseif func2_var14 == 1 and func2_var15 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func2_var16)
   else
      local func2_var17 = ai:GetRandam_Int(1, func2_var9 + func2_var10 + func2_var11 + func2_var12)
      if func2_var17 <= func2_var9 then
         local func2_var18 = localScriptConfigVar1
         local func2_var19 = localScriptConfigVar1 + 2
         local func2_var20 = 0
         Approach_Act(ai, goal, func2_var18, func2_var19, func2_var20)
         if func2_var4 <= 10 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif func2_var4 <= 40 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         func2_var8 = 100
      elseif func2_var17 <= func2_var9 + func2_var10 then
         local func2_var18 = localScriptConfigVar3
         local func2_var19 = localScriptConfigVar3 + 2
         local func2_var20 = 0
         Approach_Act(ai, goal, func2_var18, func2_var19, func2_var20)
         if func2_var4 <= 25 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         func2_var8 = 100
      elseif func2_var17 <= func2_var9 + func2_var10 + func2_var11 then
         local func2_var18 = localScriptConfigVar5
         local func2_var19 = localScriptConfigVar5 + 2
         local func2_var20 = 0
         local func2_var21 = 3005
         local func2_var22 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func2_var18, func2_var19, func2_var20, func2_var21, func2_var22)
         func2_var8 = 100
      elseif func2_var17 <= func2_var9 + func2_var10 + func2_var11 + func2_var12 then
         local func2_var18 = localScriptConfigVar7
         local func2_var19 = localScriptConfigVar7 + 2
         local func2_var20 = 0
         local func2_var21 = 3006
         local func2_var22 = DIST_None
         Approach_and_Attack_Act(ai, goal, func2_var18, func2_var19, func2_var20, func2_var21, func2_var22)
         func2_var8 = 0
      else
         ai:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
      end
   end
   local func2_var17 = ai:GetRandam_Int(1, 100)
   if func2_var17 <= func2_var8 then
      local func2_var18 = 0
      local func2_var19 = 40
      local func2_var20 = 10
      local func2_var21 = 10
      local func2_var22 = 0
      local func2_var23 = 40
      GetWellSpace_Act(ai, goal, func2_var18, func2_var19, func2_var20, func2_var21, func2_var22, func2_var23)
   end
end

Kyochojin231000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kyochojin231000Battle_Terminate = function(ai, goal)
end

Kyochojin231000Battle_Interupt = function(ai, goal)
   local func5_var2 = 4
   local func5_var3 = 15
   local func5_var4 = 30
   local func5_var5 = 35
   local func5_var6 = 35
   if FindAttack_Step(ai, goal, func5_var2, func5_var3, func5_var4, func5_var5, func5_var6) then
      return true
   end
   local func5_var7 = 4
   local func5_var8 = 25
   local func5_var9 = 30
   local func5_var10 = 35
   local func5_var11 = 35
   local func5_var12 = 4
   if Damaged_Step(ai, goal, func5_var7, func5_var8, func5_var9, func5_var10, func5_var11, func5_var12) then
      return true
   end
   local func5_var13 = 8
   local func5_var14 = 30
   local func5_var15 = ai:GetDist(TARGET_ENE_0)
   if GuardBreak_Act(ai, goal, func5_var13, func5_var14) then
      if func5_var15 >= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func5_var16 = 8
   local func5_var17 = 40
   if MissSwing_Int(ai, goal, func5_var16, func5_var17) then
      if func5_var15 <= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func5_var18 = 8
   local func5_var19 = 15
   local func5_var20 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func5_var18, func5_var19) then
      if func5_var20 >= 5.4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func5_var21 = 8
   local func5_var22 = 20
   local func5_var23 = 0
   local func5_var24 = 40
   local func5_var25 = ai:GetRandam_Int(1, 100)
   local func5_var26 = ai:GetRandam_Int(1, 100)
   local func5_var27 = ai:GetDist(TARGET_ENE_0)
   local func5_var28 = Shoot_2dist(ai, goal, func5_var21, func5_var22, func5_var23, func5_var24)
   if func5_var28 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   elseif func5_var28 == 2 then
      if func5_var25 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func5_var29 = 15
   local func5_var30 = 30
   local func5_var31 = 35
   local func5_var32 = 35
   local func5_var33 = 4
   if RebByOpGuard_Step(ai, goal, func5_var29, func5_var30, func5_var31, func5_var32, func5_var33) then
      return true
   end
   return false
end


