local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.9
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.4
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 4.6
IzalisQueen325000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   if func1_var3 >= 8 then
      func1_var8 = 10
      func1_var9 = 35
      func1_var10 = 10
      func1_var11 = 10
      func1_var12 = 35
   elseif func1_var3 >= 3.5 then
      func1_var8 = 20
      func1_var9 = 25
      func1_var10 = 10
      func1_var11 = 25
      func1_var12 = 20
   else
      func1_var8 = 35
      func1_var9 = 10
      func1_var10 = 10
      func1_var11 = 35
      func1_var12 = 10
   end
   local func1_var13 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var14 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var15 = 0
   if func1_var13 == 1 and func1_var14 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func1_var15)
   elseif func1_var13 == 1 and func1_var14 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func1_var15)
   else
      local func1_var16 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12)
      if func1_var16 <= func1_var8 then
         local func1_var17 = localScriptConfigVar1
         local func1_var18 = localScriptConfigVar1 + 2
         local func1_var19 = 0
         local func1_var20 = 3000
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         func1_var7 = 100
      elseif func1_var16 <= func1_var8 + func1_var9 then
         local func1_var17 = localScriptConfigVar3
         local func1_var18 = localScriptConfigVar3 + 2
         local func1_var19 = 0
         local func1_var20 = 3001
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         func1_var7 = 100
      elseif func1_var16 <= func1_var8 + func1_var9 + func1_var10 then
         local func1_var17 = localScriptConfigVar5
         local func1_var18 = localScriptConfigVar5 + 2
         local func1_var19 = 0
         local func1_var20 = 3002
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         func1_var7 = 100
      elseif func1_var16 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 then
         local func1_var17 = ai:GetRandam_Int(1, 100)
         local func1_var18 = localScriptConfigVar7
         local func1_var19 = localScriptConfigVar7 + 2
         local func1_var20 = 0
         Approach_Act(ai, goal, func1_var18, func1_var19, func1_var20)
         if func1_var17 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         func1_var7 = 100
      else
         local func1_var17 = localScriptConfigVar9
         local func1_var18 = localScriptConfigVar9 + 2
         local func1_var19 = 0
         local func1_var20 = 3005
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         func1_var7 = 100
      end
   end
   local func1_var16 = ai:GetRandam_Int(1, 100)
   if func1_var16 <= func1_var7 then
      local func1_var17 = 0
      local func1_var18 = 30
      local func1_var19 = 0
      local func1_var20 = 30
      local func1_var21 = 40
      local func1_var22 = 0
      GetWellSpace_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21, func1_var22)
   end
end

IzalisQueen325000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

IzalisQueen325000Battle_Terminate = function(ai, goal)
end

IzalisQueen325000Battle_Interupt = function(ai, goal)
   return false
end


