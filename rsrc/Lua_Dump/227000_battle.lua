local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.2
Kinoko227000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   if func1_var3 >= 8 then
      func1_var8 = 70
      func1_var9 = 30
   else
      func1_var8 = 60
      func1_var9 = 40
   end
   local func1_var10 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var11 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var12 = 0
   if func1_var10 == 1 and func1_var11 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, Odds_Guard)
   elseif func1_var10 == 1 and func1_var11 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, Odds_Guard)
   else
      local func1_var13 = ai:GetRandam_Int(1, func1_var8 + func1_var9)
      if func1_var13 <= func1_var8 then
         local func1_var14 = localScriptConfigVar1
         local func1_var15 = localScriptConfigVar1 + 2
         local func1_var16 = 0
         Approach_Act(ai, goal, func1_var14, func1_var15, func1_var16)
         if func1_var4 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif func1_var4 <= 90 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         end
         func1_var7 = 100
      else
         local func1_var14 = localScriptConfigVar3
         local func1_var15 = localScriptConfigVar3 + 2
         local func1_var16 = 0
         local func1_var17 = 3002
         local func1_var18 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var14, func1_var15, func1_var16, func1_var17, func1_var18)
         func1_var7 = 100
      end
   end
   local func1_var13 = ai:GetRandam_Int(1, 100)
   if func1_var13 <= func1_var7 then
      local func1_var14 = 0
      local func1_var15 = 70
      local func1_var16 = 0
      local func1_var17 = 10
      local func1_var18 = 20
      local func1_var19 = 0
      GetWellSpace_Act(ai, goal, func1_var14, func1_var15, func1_var16, func1_var17, func1_var18, func1_var19)
   end
end

Kinoko227000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kinoko227000Battle_Terminate = function(ai, goal)
end

Kinoko227000Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 2.9
   local func4_var7 = 50
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


