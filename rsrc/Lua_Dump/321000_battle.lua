local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1
Tamago321000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   if func1_var3 >= 1.5 then
      func1_var7 = 40
      func1_var8 = 60
   else
      func1_var7 = 20
      func1_var8 = 80
   end
   local func1_var9 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var10 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var11 = 0
   if func1_var9 == 1 and func1_var10 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func1_var11)
   elseif func1_var9 == 1 and func1_var10 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func1_var11)
   else
      local func1_var12 = ai:GetRandam_Int(1, func1_var7 + func1_var8)
      if func1_var12 <= func1_var7 then
         local func1_var13 = localScriptConfigVar1
         local func1_var14 = localScriptConfigVar1 + 1
         local func1_var15 = 0
         local func1_var16 = 3000
         local func1_var17 = DIST_Near
         Approach_and_Attack_Act(ai, goal, func1_var13, func1_var14, func1_var15, func1_var16, func1_var17)
         GetWellSpace_Odds = 100
      elseif func1_var12 <= func1_var7 + func1_var8 then
         local func1_var13 = localScriptConfigVar3
         local func1_var14 = localScriptConfigVar3 + 1
         local func1_var15 = 0
         local func1_var16 = 3001
         local func1_var17 = DIST_Near
         Approach_and_Attack_Act(ai, goal, func1_var13, func1_var14, func1_var15, func1_var16, func1_var17)
         GetWellSpace_Odds = 100
      end
   end
   local func1_var12 = ai:GetRandam_Int(1, 100)
   if func1_var12 <= GetWellSpace_Odds then
      local func1_var13 = 0
      local func1_var14 = 80
      local func1_var15 = 0
      local func1_var16 = 5
      local func1_var17 = 15
      local func1_var18 = 0
      GetWellSpace_Act(ai, goal, func1_var13, func1_var14, func1_var15, func1_var16, func1_var17, func1_var18)
   end
end

Tamago321000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Tamago321000Battle_Terminate = function(ai, goal)
end

Tamago321000Battle_Interupt = function(ai, goal)
   return false
end


