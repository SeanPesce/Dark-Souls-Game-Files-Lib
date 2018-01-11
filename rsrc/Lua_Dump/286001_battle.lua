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
Giant_nt286001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetHpRate(TARGET_SELF)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
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
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 2)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1502720) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1502720) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         func1_var9 = 5
         func1_var10 = 15
         func1_var11 = 15
         func1_var12 = 0
         func1_var13 = 5
         func1_var14 = 50
         func1_var15 = 10
      elseif func1_var3 >= 25 then
         func1_var16 = 100
      elseif func1_var3 >= 18 then
         func1_var17 = 100
      elseif func1_var3 >= 4 then
         func1_var9 = 15
         func1_var10 = 10
         func1_var11 = 10
         func1_var12 = 20
         func1_var13 = 15
         func1_var14 = 0
         func1_var15 = 20
      else
         func1_var9 = 15
         func1_var10 = 15
         func1_var11 = 15
         func1_var12 = 10
         func1_var13 = 15
         func1_var14 = 0
         func1_var15 = 30
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1502750) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1502750) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         func1_var9 = 5
         func1_var10 = 15
         func1_var11 = 15
         func1_var12 = 0
         func1_var13 = 5
         func1_var14 = 50
         func1_var15 = 10
      elseif func1_var3 >= 25 then
         func1_var16 = 100
      elseif func1_var3 >= 18 then
         func1_var17 = 100
      elseif func1_var3 >= 4 then
         func1_var9 = 15
         func1_var10 = 10
         func1_var11 = 10
         func1_var12 = 20
         func1_var13 = 15
         func1_var14 = 0
         func1_var15 = 20
      else
         func1_var9 = 15
         func1_var10 = 15
         func1_var11 = 15
         func1_var12 = 10
         func1_var13 = 15
         func1_var14 = 0
         func1_var15 = 30
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1512750) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1512750) then
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(1) then
         func1_var9 = 5
         func1_var10 = 15
         func1_var11 = 15
         func1_var12 = 0
         func1_var13 = 5
         func1_var14 = 50
         func1_var15 = 10
      elseif func1_var3 >= 25 then
         func1_var16 = 100
      elseif func1_var3 >= 18 then
         func1_var17 = 100
      elseif func1_var3 >= 4 then
         func1_var9 = 15
         func1_var10 = 10
         func1_var11 = 10
         func1_var12 = 20
         func1_var13 = 15
         func1_var14 = 0
         func1_var15 = 20
      else
         func1_var9 = 15
         func1_var10 = 15
         func1_var11 = 15
         func1_var12 = 10
         func1_var13 = 15
         func1_var14 = 0
         func1_var15 = 30
      end
   elseif func1_var3 >= 20 then
      func1_var16 = 100
   else
      func1_var17 = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func1_var18 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var19 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var20 = 0
   if func1_var18 == 1 and func1_var19 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func1_var20)
   elseif func1_var18 == 1 and func1_var19 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func1_var20)
   else
      local func1_var21 = ai:GetRandam_Int(1, func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17)
      if func1_var21 <= func1_var9 then
         local func1_var22 = localScriptConfigVar1
         local func1_var23 = localScriptConfigVar1 + 2
         local func1_var24 = 0
         local func1_var25 = 3000
         local func1_var26 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var8 = 100
      elseif func1_var21 <= func1_var9 + func1_var10 then
         local func1_var22 = localScriptConfigVar3
         local func1_var23 = localScriptConfigVar3 + 2
         local func1_var24 = 0
         local func1_var25 = 3001
         local func1_var26 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var8 = 100
      elseif func1_var21 <= func1_var9 + func1_var10 + func1_var11 then
         local func1_var22 = localScriptConfigVar5
         local func1_var23 = localScriptConfigVar5 + 2
         local func1_var24 = 0
         local func1_var25 = 3002
         local func1_var26 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var8 = 100
      elseif func1_var21 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 then
         local func1_var22 = localScriptConfigVar7
         local func1_var23 = localScriptConfigVar7 + 2
         local func1_var24 = 0
         local func1_var25 = 3003
         local func1_var26 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var8 = 100
      elseif func1_var21 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
         local func1_var22 = localScriptConfigVar9
         local func1_var23 = localScriptConfigVar9 + 2
         local func1_var24 = 0
         local func1_var25 = 3004
         local func1_var26 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var8 = 100
      elseif func1_var21 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         func1_var8 = 100
      elseif func1_var21 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         local func1_var22 = localScriptConfigVar13
         local func1_var23 = localScriptConfigVar13 + 2
         local func1_var24 = 0
         local func1_var25 = 3006
         local func1_var26 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
         func1_var8 = 100
      elseif func1_var21 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
         func1_var8 = 0
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
         func1_var8 = 0
      end
   end
   local func1_var21 = ai:GetRandam_Int(1, 100)
   if func1_var21 <= func1_var8 then
      local func1_var22 = 0
      local func1_var23 = 50
      local func1_var24 = 0
      local func1_var25 = 20
      local func1_var26 = 30
      local func1_var27 = 0
      GetWellSpace_Act(ai, goal, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26, func1_var27)
   end
end

Giant_nt286001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Giant_nt286001Battle_Terminate = function(ai, goal)
end

Giant_nt286001Battle_Interupt = function(ai, goal)
   return false
end


