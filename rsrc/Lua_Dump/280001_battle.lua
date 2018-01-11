HusiCrystal_Bow280001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   if func1_var3 >= 20 then
      func1_var8 = 100
      func1_var9 = 0
      func1_var10 = 0
   elseif func1_var3 >= 10 then
      func1_var8 = 70
      func1_var9 = 30
      func1_var10 = 0
   elseif func1_var3 >= 5 then
      func1_var8 = 0
      func1_var9 = 60
      func1_var10 = 40
   elseif func1_var3 >= 1 then
      func1_var8 = 0
      func1_var9 = 20
      func1_var10 = 80
   else
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 100
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
         local func1_var15 = 3000
         local func1_var16 = 3001
         local func1_var17 = ai:GetRandam_Int(2, 5)
         Shoot_Act(ai, goal, func1_var15, func1_var16, func1_var17)
      elseif func1_var14 <= func1_var8 + func1_var9 then
         local func1_var15 = 3000
         local func1_var16 = 3001
         local func1_var17 = ai:GetRandam_Int(2, 4)
         Shoot_Act(ai, goal, func1_var15, func1_var16, func1_var17)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      else
         local func1_var15 = 3000
         local func1_var16 = 3001
         local func1_var17 = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, func1_var15, func1_var16, func1_var17)
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      end
   end
end

HusiCrystal_Bow280001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiCrystal_Bow280001Battle_Terminate = function(ai, goal)
end

HusiCrystal_Bow280001Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 3
   local func4_var7 = 15
   local func4_var8 = 20
   local func4_var9 = 40
   local func4_var10 = 40
   local func4_var11 = 3.5
   if Damaged_Step(ai, goal, func4_var6, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11) then
      return true
   end
   local func4_var12 = 15
   local func4_var13 = 10
   if UseItem_Act(ai, goal, func4_var12, func4_var13) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func4_var14 = 8.5
   local func4_var15 = 18
   local func4_var16 = 0
   local func4_var17 = 15
   local func4_var18 = ai:GetRandam_Int(1, 100)
   local func4_var19 = ai:GetRandam_Int(1, 100)
   local func4_var20 = ai:GetDist(TARGET_ENE_0)
   local func4_var21 = Shoot_2dist(ai, goal, func4_var14, func4_var15, func4_var16, func4_var17)
   if func4_var21 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Guard, 2, 9910, TARGET_ENE_0, false, 0)
      return true
   elseif func4_var21 == 2 then
      if func4_var18 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   return false
end


