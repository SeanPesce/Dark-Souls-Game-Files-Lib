local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 0.8
local localScriptConfigVar4 = 0.8
local localScriptConfigVar5 = 1.9
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1
SmallInunezumi120101Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   if func1_var2 >= 5 then
      func1_var7 = 15
      func1_var8 = 15
      func1_var9 = 55
      func1_var10 = 15
   elseif func1_var2 >= 0.8 then
      func1_var7 = 25
      func1_var8 = 25
      func1_var9 = 25
      func1_var10 = 25
   else
      func1_var7 = 35
      func1_var8 = 35
      func1_var9 = 0
      func1_var10 = 30
   end
   local func1_var11 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var12 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var13 = 0
   if func1_var11 == 1 and func1_var12 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func1_var13)
   elseif func1_var11 == 1 and func1_var12 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func1_var13)
   else
      local func1_var14 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10)
      if func1_var14 <= func1_var7 then
         local func1_var15 = localScriptConfigVar1
         local func1_var16 = localScriptConfigVar1 + 1.5
         local func1_var17 = 0
         Approach_Act(ai, goal, func1_var15, func1_var16, func1_var17)
         if func1_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         end
         func1_var6 = 100
      elseif func1_var14 <= func1_var7 + func1_var8 then
         local func1_var15 = localScriptConfigVar3
         local func1_var16 = localScriptConfigVar3 + 1.5
         local func1_var17 = 0
         Approach_Act(ai, goal, func1_var15, func1_var16, func1_var17)
         if func1_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         end
         func1_var6 = 100
      elseif func1_var14 <= func1_var7 + func1_var8 + func1_var9 then
         local func1_var15 = localScriptConfigVar5
         local func1_var16 = localScriptConfigVar5 + 1.5
         local func1_var17 = 0
         Approach_Act(ai, goal, func1_var15, func1_var16, func1_var17)
         if func1_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         end
         func1_var6 = 100
      else
         local func1_var15 = localScriptConfigVar7
         local func1_var16 = localScriptConfigVar7 + 1.5
         local func1_var17 = 0
         Approach_Act(ai, goal, func1_var15, func1_var16, func1_var17)
         if func1_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         end
         func1_var6 = 100
      end
   end
   local func1_var14 = ai:GetRandam_Int(1, 100)
   if func1_var14 <= func1_var6 then
      if func1_var4 <= 80 then
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
      end
   end
end

SmallInunezumi120101Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SmallInunezumi120101Battle_Terminate = function(ai, goal)
end

SmallInunezumi120101Battle_Interupt = function(ai, goal)
   local func4_var2 = 3
   local func4_var3 = 15
   local func4_var4 = 100
   local func4_var5 = 0
   local func4_var6 = 0
   local func4_var7 = 3.5
   if FindAttack_Step(ai, goal, func4_var2, func4_var3, func4_var4, func4_var5, func4_var6, func4_var7) then
      return true
   end
   local func4_var8 = 20
   local func4_var9 = 100
   local func4_var10 = 0
   local func4_var11 = 0
   local func4_var12 = 3.5
   if RebByOpGuard_Step(ai, goal, func4_var8, func4_var9, func4_var10, func4_var11, func4_var12) then
      return true
   end
   return false
end


