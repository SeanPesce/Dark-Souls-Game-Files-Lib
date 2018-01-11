OnIf_256001 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

LightKnight_Bow256001Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetHpRate(TARGET_SELF)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = 0
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   if func2_var4 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var3 >= 20 then
         func2_var9 = 25
         func2_var10 = 0
         func2_var11 = 0
         func2_var12 = 75
      elseif func2_var3 >= 10 then
         func2_var9 = 20
         func2_var10 = 5
         func2_var11 = 0
         func2_var12 = 75
      elseif func2_var3 >= 4.5 then
         func2_var9 = 0
         func2_var10 = 25
         func2_var11 = 0
         func2_var12 = 75
      elseif func2_var3 >= 3 then
         func2_var9 = 0
         func2_var10 = 40
         func2_var11 = 10
         func2_var12 = 50
      else
         func2_var9 = 0
         func2_var10 = 25
         func2_var11 = 40
         func2_var12 = 35
      end
   elseif func2_var3 >= 20 then
      func2_var9 = 100
      func2_var10 = 0
      func2_var11 = 0
   elseif func2_var3 >= 10 then
      func2_var9 = 70
      func2_var10 = 30
      func2_var11 = 0
   elseif func2_var3 >= 5 then
      func2_var9 = 0
      func2_var10 = 60
      func2_var11 = 40
   else
      func2_var9 = 0
      func2_var10 = 0
      func2_var11 = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   local func2_var13 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func2_var14 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func2_var15 = 0
   if func2_var13 == 1 and func2_var14 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func2_var15)
   elseif func2_var13 == 1 and func2_var14 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func2_var15)
   else
      local func2_var16 = ai:GetRandam_Int(1, func2_var9 + func2_var10 + func2_var11 + func2_var12)
      if func2_var16 <= func2_var9 then
         if func2_var5 <= 50 then
            local func2_var17 = 3000
            local func2_var18 = 3001
            local func2_var19 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func2_var17, func2_var18, func2_var19)
         else
            local func2_var17 = 3002
            local func2_var18 = 3003
            local func2_var19 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func2_var17, func2_var18, func2_var19)
         end
      elseif func2_var16 <= func2_var9 + func2_var10 then
         if func2_var5 <= 50 then
            local func2_var17 = 3000
            local func2_var18 = 3001
            local func2_var19 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func2_var17, func2_var18, func2_var19)
         else
            local func2_var17 = 3002
            local func2_var18 = 3003
            local func2_var19 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func2_var17, func2_var18, func2_var19)
         end
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
      elseif func2_var16 <= func2_var9 + func2_var10 + func2_var11 then
         if func2_var5 <= 50 then
            local func2_var17 = 3000
            local func2_var18 = 3001
            local func2_var19 = ai:GetRandam_Int(1, 3)
            Shoot_Act(ai, goal, func2_var17, func2_var18, func2_var19)
         else
            local func2_var17 = 3002
            local func2_var18 = 3003
            local func2_var19 = ai:GetRandam_Int(1, 3)
            Shoot_Act(ai, goal, func2_var17, func2_var18, func2_var19)
         end
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
         goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
   end
end

LightKnight_Bow256001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LightKnight_Bow256001Battle_Terminate = function(ai, goal)
end

LightKnight_Bow256001Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = 3
   local func5_var5 = 15
   local func5_var6 = 50
   local func5_var7 = 25
   local func5_var8 = 25
   if FindAttack_Step(ai, goal, func5_var4, func5_var5, func5_var6, func5_var7, func5_var8) then
      return true
   end
   local func5_var9 = 3
   local func5_var10 = 25
   local func5_var11 = 50
   local func5_var12 = 25
   local func5_var13 = 25
   local func5_var14 = 4
   if Damaged_Step(ai, goal, func5_var9, func5_var10, func5_var11, func5_var12, func5_var13, func5_var14) then
      return true
   end
   local func5_var15 = 20
   local func5_var16 = 15
   if UseItem_Act(ai, goal, func5_var15, func5_var16) then
      if func5_var3 >= 8 then
         if func5_var2 <= 50 then
            local func5_var17 = 3000
            local func5_var18 = 3001
            local func5_var19 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func5_var17, func5_var18, func5_var19)
         else
            local func5_var17 = 3002
            local func5_var18 = 3003
            local func5_var19 = ai:GetRandam_Int(2, 5)
            Shoot_Act(ai, goal, func5_var17, func5_var18, func5_var19)
         end
         return true
      elseif func5_var2 <= 50 then
         local func5_var17 = 3000
         local func5_var18 = 3001
         local func5_var19 = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, func5_var17, func5_var18, func5_var19)
      else
         local func5_var17 = 3002
         local func5_var18 = 3003
         local func5_var19 = ai:GetRandam_Int(1, 3)
         Shoot_Act(ai, goal, func5_var17, func5_var18, func5_var19)
      end
      return true
      return true
   end
   return false
end


