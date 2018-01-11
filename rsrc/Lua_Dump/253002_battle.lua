local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1
local localScriptConfigVar2 = 4
local localScriptConfigVar3 = 6
HusiMino_Gun253002Battle_Activate = function(ai, goal)
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
   if func1_var3 >= 20 then
      func1_var8 = 100
      func1_var9 = 0
      func1_var10 = 0
      func1_var11 = 0
   elseif func1_var3 >= 10 then
      func1_var8 = 70
      func1_var9 = 30
      func1_var10 = 0
      func1_var11 = 0
   elseif func1_var3 >= 5 then
      func1_var8 = 0
      func1_var9 = 60
      func1_var10 = 40
      func1_var11 = 0
   elseif func1_var3 >= 1 then
      func1_var8 = 0
      func1_var9 = 20
      func1_var10 = 80
      func1_var11 = 0
   else
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 20
      func1_var11 = 80
   end
   local func1_var12 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func1_var13 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var14 = 0
   if func1_var12 == 1 and func1_var13 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func1_var14)
   elseif func1_var12 == 1 and func1_var13 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func1_var14)
   else
      local func1_var15 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10 + func1_var11)
      if func1_var15 <= func1_var8 then
         if func1_var4 <= 50 then
            local func1_var16 = 3000
            local func1_var17 = 3001
            local func1_var18 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func1_var16, func1_var17, func1_var18)
         else
            local func1_var16 = 3002
            local func1_var17 = 3003
            local func1_var18 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func1_var16, func1_var17, func1_var18)
         end
      elseif func1_var15 <= func1_var8 + func1_var9 then
         if func1_var4 <= 50 then
            local func1_var16 = 3000
            local func1_var17 = 3001
            local func1_var18 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func1_var16, func1_var17, func1_var18)
         else
            local func1_var16 = 3002
            local func1_var17 = 3003
            local func1_var18 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func1_var16, func1_var17, func1_var18)
         end
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      elseif func1_var15 <= func1_var8 + func1_var9 + func1_var10 then
         if func1_var4 <= 50 then
            local func1_var16 = 3000
            local func1_var17 = 3001
            local func1_var18 = ai:GetRandam_Int(1, 3)
            Shoot_Act(ai, goal, func1_var16, func1_var17, func1_var18)
         else
            local func1_var16 = 3002
            local func1_var17 = 3003
            local func1_var18 = ai:GetRandam_Int(1, 3)
            Shoot_Act(ai, goal, func1_var16, func1_var17, func1_var18)
         end
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      else
         local func1_var16 = localScriptConfigVar1
         local func1_var17 = localScriptConfigVar1 + 2
         local func1_var18 = 0
         local func1_var19 = 3006
         local func1_var20 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var16, func1_var17, func1_var18, func1_var19, func1_var20)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      end
      -- Tried to add an 'end' here but it's incorrect
   end
end

HusiMino_Gun253002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiMino_Gun253002Battle_Terminate = function(ai, goal)
end

HusiMino_Gun253002Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 3
   local func4_var7 = 15
   local func4_var8 = 30
   local func4_var9 = 35
   local func4_var10 = 35
   local func4_var11 = 4
   if Damaged_Step(ai, goal, func4_var6, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11) then
      return true
   end
   return false
end


