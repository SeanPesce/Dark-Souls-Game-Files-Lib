local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.8
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.8
Kisei322000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   if func1_var3 >= 5 then
      func1_var8 = 10
      func1_var9 = 10
      func1_var10 = 80
   elseif func1_var3 >= 2 then
      func1_var8 = 40
      func1_var9 = 40
      func1_var10 = 20
   else
      func1_var8 = 50
      func1_var9 = 50
      func1_var10 = 0
   end
   local func1_var11 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var12 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var13 = 0
   if func1_var11 == 1 and func1_var12 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func1_var13)
   elseif func1_var11 == 1 and func1_var12 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func1_var13)
   else
      local func1_var14 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10)
      if func1_var14 <= func1_var8 then
         local func1_var15 = localScriptConfigVar1
         local func1_var16 = localScriptConfigVar1 + 1
         local func1_var17 = 0
         local func1_var18 = 3000
         local func1_var19 = DIST_Near
         Approach_and_Attack_Act(ai, goal, func1_var15, func1_var16, func1_var17, func1_var18, func1_var19)
         func1_var7 = 0
      elseif func1_var14 <= func1_var8 + func1_var9 then
         local func1_var15 = localScriptConfigVar3
         local func1_var16 = localScriptConfigVar3 + 1
         local func1_var17 = 0
         local func1_var18 = 3001
         local func1_var19 = DIST_Near
         Approach_and_Attack_Act(ai, goal, func1_var15, func1_var16, func1_var17, func1_var18, func1_var19)
         func1_var7 = 0
      else
         local func1_var15 = localScriptConfigVar5
         local func1_var16 = localScriptConfigVar5 + 1
         local func1_var17 = 0
         local func1_var18 = 3002
         local func1_var19 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var15, func1_var16, func1_var17, func1_var18, func1_var19)
         func1_var7 = 0
      end
   end
   local func1_var14 = ai:GetRandam_Int(1, 100)
   if func1_var14 <= func1_var7 then
      local func1_var15 = 0
      local func1_var16 = 30
      local func1_var17 = 0
      local func1_var18 = 5
      local func1_var19 = 30
      local func1_var20 = 35
      GetWellSpace_Act(ai, goal, func1_var15, func1_var16, func1_var17, func1_var18, func1_var19, func1_var20)
   end
end

Kisei322000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kisei322000Battle_Terminate = function(ai, goal)
end

Kisei322000Battle_Interupt = function(ai, goal)
   return false
end


