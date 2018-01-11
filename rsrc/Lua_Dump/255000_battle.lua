local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.8
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2
local localScriptConfigVar4 = 2.5
local localScriptConfigVar5 = 4.4
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.15
local localScriptConfigVar8 = 2.5
local localScriptConfigVar9 = 4.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.8
OnIf_255000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   if func1_param2 == 0 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         if func1_var4 <= 20 and func1_var3 <= 2.8 then
            local func1_var6 = localScriptConfigVar11
            local func1_var7 = localScriptConfigVar11 + 2
            local func1_var8 = 100
            Approach_Act(ai, goal, func1_var6, func1_var7, func1_var8)
            goal:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, true, -1)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         end
      elseif func1_var3 >= 4.4 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
      elseif func1_var3 >= 2.8 then
         if func1_var4 <= 30 then
            if func1_var5 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         end
      elseif func1_var3 >= 1.5 then
         if func1_var4 <= 60 then
            if func1_var5 <= 30 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            elseif func1_var5 <= 70 then
               goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         end
      elseif func1_var4 <= 95 then
         if func1_var5 <= 20 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif func1_var5 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
      end
   elseif func1_param2 == 1 then
      if func1_var3 >= 2.5 then
         if func1_var4 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func1_var4 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      elseif func1_var4 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func1_param2 == 2 then
      if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
         ai:SetTimer(1, 120)
      else
         ai:SetTimer(1, 30)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

HusiHeavy_Spear255000Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetHpRate(TARGET_SELF)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetTimer(0)
   local func2_var9 = ai:GetTimer(1)
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   local func2_var14 = 0
   local func2_var15 = 0
   if func2_var2 <= 0.4 and ai:IsFinishTimer(1) == true then
      if func2_var3 >= 8 then
         func2_var15 = 200
      elseif func2_var3 >= 2.5 then
         func2_var15 = 100
      else
         func2_var15 = 50
      end
   end
   if func2_var8 <= 0 then
      func2_var10 = 100
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      if func2_var3 >= 8 then
         func2_var11 = 30
         func2_var12 = 30
         func2_var13 = 40
         func2_var14 = 0
      elseif func2_var3 >= 2.5 then
         func2_var11 = 35
         func2_var12 = 35
         func2_var13 = 20
         func2_var14 = 10
      else
         func2_var11 = 40
         func2_var12 = 40
         func2_var13 = 0
         func2_var14 = 20
      end
   elseif func2_var3 >= 8 then
      func2_var11 = 25
      func2_var12 = 15
      func2_var13 = 60
      func2_var14 = 0
   elseif func2_var3 >= 2.5 then
      func2_var11 = 30
      func2_var12 = 50
      func2_var13 = 20
      func2_var14 = 0
   else
      func2_var11 = 40
      func2_var12 = 60
      func2_var13 = 0
      func2_var14 = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   local func2_var16 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func2_var17 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func2_var18 = 100
   if func2_var16 == 1 and func2_var17 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func2_var18)
   elseif func2_var16 == 1 and func2_var17 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func2_var18)
   else
      local func2_var19 = ai:GetRandam_Int(1, func2_var10 + func2_var11 + func2_var12 + func2_var13 + func2_var14 + func2_var15)
      if func2_var19 <= func2_var10 then
         local func2_var20 = ai:GetRandam_Int(1, 100)
         if func2_var3 >= 4.5 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(3, 4), TARGET_SELF, true, 9910)
         elseif func2_var3 <= 1.5 and func2_var20 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
         elseif func2_var3 <= 0.5 and func2_var20 <= 90 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 9910)
         end
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 3.5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      elseif func2_var19 <= func2_var10 + func2_var11 then
         local func2_var20 = localScriptConfigVar3
         local func2_var21 = localScriptConfigVar3 + 0
         local func2_var22 = 0
         Approach_Act(ai, goal, func2_var20, func2_var21, func2_var22)
         if func2_var4 <= 25 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 60)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif func2_var19 <= func2_var10 + func2_var11 + func2_var12 then
         local func2_var20 = localScriptConfigVar7
         local func2_var21 = localScriptConfigVar7 + 0
         local func2_var22 = 0
         Approach_Act(ai, goal, func2_var20, func2_var21, func2_var22)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 15)
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif func2_var19 <= func2_var10 + func2_var11 + func2_var12 + func2_var13 then
         local func2_var20 = localScriptConfigVar7
         local func2_var21 = localScriptConfigVar7 + 0
         local func2_var22 = 0
         Approach_Act(ai, goal, func2_var20, func2_var21, func2_var22)
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, -1, 30)
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif func2_var19 <= func2_var10 + func2_var11 + func2_var12 + func2_var13 + func2_var14 then
         local func2_var20 = localScriptConfigVar11
         local func2_var21 = localScriptConfigVar11 + 0
         local func2_var22 = 0
         Approach_Act(ai, goal, func2_var20, func2_var21, func2_var22)
         goal:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, true, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         HusiHeavy_Spear255000_AfterAttackAct01(ai, goal)
      elseif func2_var4 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      end
      goal:AddSubGoal(GOAL_COMMON_If, 15, 2)
   end
end

HusiHeavy_Spear255000_AfterAttackAct01 = function(ai, goal)
   local func3_var2 = 0
   local func3_var3 = 85
   local func3_var4 = 0
   local func3_var5 = 0
   local func3_var6 = 0
   local func3_var7 = 5
   local func3_var8 = 10
   GetWellSpace_Act_IncludeSidestep(ai, goal, func3_var2, func3_var3, func3_var4, func3_var5, func3_var6, func3_var7, func3_var8)
end

HusiHeavy_Spear255000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Spear255000Battle_Terminate = function(ai, goal)
end

HusiHeavy_Spear255000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = ai:GetHpRate(TARGET_SELF)
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func6_var7 = ai:GetTimer(0)
      if func6_var6 >= 0.15 and func6_var6 <= 0.9 then
         goal:ClearSubGoal()
         ai:SetTimer(0, 11)
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF)
         return true
      elseif func6_var5 <= 3 and func6_var2 <= 40 then
         goal:ClearSubGoal()
         local func6_var8 = 100
         local func6_var9 = 0
         local func6_var10 = 30
         local func6_var11 = 40
         local func6_var12 = 0
         local func6_var13 = 15
         local func6_var14 = 15
         GetWellSpace_Act_IncludeSidestep(ai, goal, func6_var8, func6_var9, func6_var10, func6_var11, func6_var12, func6_var13, func6_var14)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func6_var7 = ai:GetTimer(0)
      if func6_var7 <= 0 and func6_var5 <= 4.4 and func6_var2 <= 50 then
         goal:ClearSubGoal()
         if func6_var5 >= 2.5 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
         elseif func6_var2 <= 30 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         elseif func6_var2 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
   end
   local func6_var7 = 3
   local func6_var8 = 15
   local func6_var9 = 30
   local func6_var10 = 40
   local func6_var11 = 30
   local func6_var12 = 30
   local func6_var13 = 3.5
   local func6_var14 = 50
   local func6_var15 = 3.5
   local func6_var16 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func6_var7, func6_var8, func6_var9, func6_var10, func6_var11, func6_var12, func6_var13, func6_var14, func6_var15, func6_var16) then
      return true
   end
   local func6_var17 = 4.4
   local func6_var18 = 30
   if MissSwing_Int(ai, goal, func6_var17, func6_var18) then
      if func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var19 = 12
   local func6_var20 = 20
   local func6_var21 = 0
   local func6_var22 = 30
   local func6_var23 = Shoot_2dist(ai, goal, func6_var19, func6_var20, func6_var21, func6_var22)
   if func6_var23 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func6_var23 == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   end
   local func6_var24 = 20
   local func6_var25 = 40
   local func6_var26 = 30
   local func6_var27 = 30
   local func6_var28 = 3.5
   if RebByOpGuard_Step(ai, goal, func6_var24, func6_var25, func6_var26, func6_var27, func6_var28) then
      return true
   end
   return false
end


