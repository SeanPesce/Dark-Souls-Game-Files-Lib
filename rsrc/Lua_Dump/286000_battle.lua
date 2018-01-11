local localScriptConfigVar0 = 0.2
local localScriptConfigVar1 = 2.7
local localScriptConfigVar2 = -1.3
local localScriptConfigVar3 = 1
local localScriptConfigVar4 = -1.3
local localScriptConfigVar5 = 0.9
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.1
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.7
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.5
local localScriptConfigVar12 = 4.5
local localScriptConfigVar13 = 6.7
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 100
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 100
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 100
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 100
Giant286000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetHpRate(TARGET_SELF)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetEventRequest(0)
   local func1_var9 = ai:GetEventRequest(1)
   local func1_var10 = ai:GetEventRequest(2)
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
   local func1_var25 = 0
   local func1_var26 = 0
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 2)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and func1_var10 == 6 and func1_var8 ~= 10 and func1_var9 ~= 20 then
      func1_var26 = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and func1_var10 == 5 and func1_var9 ~= 20 then
      func1_var25 = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and func1_var10 == 4 and func1_var9 ~= 20 then
      func1_var24 = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and func1_var10 == 3 and func1_var9 ~= 20 then
      func1_var21 = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and func1_var10 == 2 and func1_var9 ~= 20 then
      func1_var20 = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502710) and func1_var10 == 1 and func1_var9 ~= 20 then
      func1_var19 = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1502710) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         func1_var12 = 5
         func1_var13 = 15
         func1_var14 = 15
         func1_var15 = 0
         func1_var16 = 5
         func1_var17 = 50
         func1_var18 = 10
      elseif func1_var3 >= 25 then
         func1_var22 = 100
      elseif func1_var3 >= 18 then
         func1_var23 = 100
      elseif func1_var3 >= 4 then
         func1_var12 = 15
         func1_var13 = 10
         func1_var14 = 10
         func1_var15 = 20
         func1_var16 = 15
         func1_var17 = 0
         func1_var18 = 20
      else
         func1_var12 = 15
         func1_var13 = 15
         func1_var14 = 15
         func1_var15 = 10
         func1_var16 = 15
         func1_var17 = 0
         func1_var18 = 30
      end
   elseif func1_var3 >= 20 then
      func1_var22 = 100
   else
      func1_var23 = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   local func1_var27 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var28 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var29 = 0
   if func1_var27 == 1 and func1_var28 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func1_var29)
   elseif func1_var27 == 1 and func1_var28 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func1_var29)
   else
      local func1_var30 = ai:GetRandam_Int(1, func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26)
      if func1_var30 <= func1_var12 then
         local func1_var31 = localScriptConfigVar1
         local func1_var32 = localScriptConfigVar1 + 2
         local func1_var33 = 0
         local func1_var34 = 3000
         local func1_var35 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var31, func1_var32, func1_var33, func1_var34, func1_var35)
         func1_var11 = 100
      elseif func1_var30 <= func1_var12 + func1_var13 then
         local func1_var31 = localScriptConfigVar3
         local func1_var32 = localScriptConfigVar3 + 2
         local func1_var33 = 0
         local func1_var34 = 3001
         local func1_var35 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var31, func1_var32, func1_var33, func1_var34, func1_var35)
         func1_var11 = 100
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 then
         local func1_var31 = localScriptConfigVar5
         local func1_var32 = localScriptConfigVar5 + 2
         local func1_var33 = 0
         local func1_var34 = 3002
         local func1_var35 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var31, func1_var32, func1_var33, func1_var34, func1_var35)
         func1_var11 = 100
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         local func1_var31 = localScriptConfigVar7
         local func1_var32 = localScriptConfigVar7 + 2
         local func1_var33 = 0
         local func1_var34 = 3003
         local func1_var35 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var31, func1_var32, func1_var33, func1_var34, func1_var35)
         func1_var11 = 100
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
         local func1_var31 = localScriptConfigVar9
         local func1_var32 = localScriptConfigVar9 + 2
         local func1_var33 = 0
         local func1_var34 = 3004
         local func1_var35 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var31, func1_var32, func1_var33, func1_var34, func1_var35)
         func1_var11 = 100
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         func1_var11 = 100
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
         local func1_var31 = localScriptConfigVar13
         local func1_var32 = localScriptConfigVar13 + 2
         local func1_var33 = 0
         local func1_var34 = 3006
         local func1_var35 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var31, func1_var32, func1_var33, func1_var34, func1_var35)
         func1_var11 = 100
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502700)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         func1_var11 = 0
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502701)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         func1_var11 = 0
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502702)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3011, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         func1_var11 = 0
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
         func1_var11 = 0
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
         func1_var11 = 0
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502703)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3011, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         func1_var11 = 0
      elseif func1_var30 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502704)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3012, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         func1_var11 = 0
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, -1.8, TARGET_SELF, true, -1)
         ai:SetEventFlag(11505105, true)
         ai:SetEventMoveTarget(1502705)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
         func1_var11 = 0
      end
   end
   local func1_var30 = ai:GetRandam_Int(1, 100)
   if func1_var30 <= func1_var11 then
      local func1_var31 = 0
      local func1_var32 = 50
      local func1_var33 = 0
      local func1_var34 = 20
      local func1_var35 = 30
      local func1_var36 = 0
      GetWellSpace_Act(ai, goal, func1_var31, func1_var32, func1_var33, func1_var34, func1_var35, func1_var36)
   end
end

OnIf_286000 = function(ai, goal, func2_param2)
   ai:SetEventFlag(11505105, false)
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
end

Giant286000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Giant286000Battle_Terminate = function(ai, goal)
end

Giant286000Battle_Interupt = function(ai, goal)
   return false
end


