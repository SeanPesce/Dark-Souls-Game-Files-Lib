local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.5
local localScriptConfigVar4 = 3
local localScriptConfigVar5 = 5
local localScriptConfigVar6 = 3
local localScriptConfigVar7 = 5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1
OnIf_415000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      ShinenBito415000_ActAfter_RealTime(ai, goal)
   end
end

ShinenBito415000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = 0
   local func2_var6 = 0
   local func2_var7 = 0
   local func2_var8 = 0
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   local func2_var14 = ai:GetDist(TARGET_ENE_0)
   local func2_var15 = ai:GetRandam_Int(1, 100)
   local func2_var16 = 1
   if ai:GetNpcThinkParamID() <= 415019 then
      func2_var16 = 0.5
   end
   if ai:GetNumber(2) == 0 then
      ai:SetTimer(2, ai:GetRandam_Int(10, 20))
      ai:SetNumber(2, 1)
   end
   if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
      if func2_var15 <= 50 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
         func2_var12 = 100
      elseif func2_var14 >= 6 then
         func2_var5 = 10
         func2_var6 = 10
         func2_var7 = 50
         func2_var8 = 30
         func2_var9 = 0
         if ai:GetNumber(3) == 1 then
            func2_var7 = 80 * func2_var16
            func2_var8 = 0
         else
            func2_var7 = 0
            func2_var8 = 80 * func2_var16
         end
      elseif func2_var14 >= 4 then
         func2_var5 = 25
         func2_var6 = 25
         func2_var7 = 30
         func2_var8 = 20
         func2_var9 = 0
         if ai:GetNumber(3) == 1 then
            func2_var7 = 50 * func2_var16
            func2_var8 = 0
         else
            func2_var7 = 0
            func2_var8 = 50 * func2_var16
         end
      elseif func2_var14 >= 3 then
         func2_var5 = 25
         func2_var6 = 25
         func2_var7 = 20
         func2_var8 = 20
         func2_var9 = 10 * func2_var16
         if ai:GetNumber(3) == 1 then
            func2_var7 = 40 * func2_var16
            func2_var8 = 0
         else
            func2_var7 = 0
            func2_var8 = 40 * func2_var16
         end
      elseif func2_var14 >= 2 then
         func2_var5 = 30
         func2_var6 = 30
         func2_var7 = 10
         func2_var8 = 10
         func2_var9 = 20 * func2_var16
         if ai:GetNumber(3) == 1 then
            func2_var7 = 20 * func2_var16
            func2_var8 = 0
         else
            func2_var7 = 0
            func2_var8 = 20 * func2_var16
         end
      else
         func2_var5 = 40
         func2_var6 = 40
         func2_var7 = 0
         func2_var8 = 0
         func2_var9 = 20 * func2_var16
      end
   elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
      func2_var5 = 5
      func2_var6 = 5
      func2_var7 = 5
      func2_var8 = 7
      func2_var9 = 8
      func2_var10 = 35
      func2_var11 = 35
   elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
      func2_var10 = 50
      func2_var11 = 50
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func2_var17 = ai:GetRandam_Int(1, func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 + func2_var13)
   if func2_var17 <= func2_var5 then
      ShinenBito415000_Act01(ai, goal)
      GetWellSpace_Odds = 100
   elseif func2_var17 <= func2_var5 + func2_var6 then
      ShinenBito415000_Act02(ai, goal)
      GetWellSpace_Odds = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 then
      ShinenBito415000_Act03(ai, goal)
      GetWellSpace_Odds = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 then
      ShinenBito415000_Act04(ai, goal)
      GetWellSpace_Odds = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 then
      ShinenBito415000_Act05(ai, goal)
      GetWellSpace_Odds = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 then
      ShinenBito415000_Act06(ai, goal)
      GetWellSpace_Odds = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 then
      ShinenBito415000_Act07(ai, goal)
      GetWellSpace_Odds = 100
   elseif func2_var17 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 then
      ShinenBito415000_Act08(ai, goal)
      GetWellSpace_Odds = 0
   else
      ShinenBito415000_Act10(ai, goal)
      GetWellSpace_Odds = 0
   end
   local func2_var18 = ai:GetRandam_Int(1, 100)
   if func2_var18 <= GetWellSpace_Odds then
      ShinenBito415000_ActAfter_AdjustSpace(ai, goal)
   end
end

ShinenBito415000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = 0
   local func3_var7 = 0
   local func3_var8 = localScriptConfigVar1
   local func3_var9 = ai:GetDist(TARGET_ENE_0)
   if ai:GetNpcThinkParamID() <= 415019 and func3_var3 <= 60 then
      func3_var6 = localScriptConfigVar1 + 2.5
   end
   if func3_var5 <= func3_var9 then
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7, 3)
   end
   if func3_var4 <= 33 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, func3_var8, 0)
   elseif func3_var4 <= 66 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var8, 1, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, func3_var8, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, func3_var8, 1, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, func3_var8, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, func3_var8, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ShinenBito415000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = 0
   local func4_var7 = 0
   local func4_var8 = localScriptConfigVar3
   local func4_var9 = ai:GetDist(TARGET_ENE_0)
   if ai:GetNpcThinkParamID() <= 415019 and func4_var3 <= 60 then
      func4_var6 = localScriptConfigVar3 + 2.5
   end
   if func4_var5 <= func4_var9 then
      Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7, 3)
   end
   if func4_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, func4_var8, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, func4_var8, 1, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, func4_var8, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ShinenBito415000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = localScriptConfigVar5
   local func5_var4 = 0
   local func5_var5 = 0
   local func5_var6 = localScriptConfigVar5
   local func5_var7 = ai:GetDist(TARGET_ENE_0)
   if func5_var3 <= func5_var7 then
      Approach_Act(ai, goal, func5_var3, func5_var4, func5_var5, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, func5_var6, 1, 90)
   ai:SetNumber(3, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ShinenBito415000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = localScriptConfigVar7
   local func6_var4 = 0
   local func6_var5 = 0
   local func6_var6 = localScriptConfigVar7
   local func6_var7 = ai:GetDist(TARGET_ENE_0)
   if func6_var3 <= func6_var7 then
      Approach_Act(ai, goal, func6_var3, func6_var4, func6_var5, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, func6_var6, 1, 90)
   ai:SetNumber(3, 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ShinenBito415000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = localScriptConfigVar9
   local func7_var5 = 0
   local func7_var6 = 0
   local func7_var7 = localScriptConfigVar9
   local func7_var8 = ai:GetDist(TARGET_ENE_0)
   if ai:GetNpcThinkParamID() <= 415019 and func7_var3 <= 60 then
      func7_var5 = localScriptConfigVar9 + 2
   end
   if func7_var4 <= func7_var8 then
      Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, func7_var7, 1, 30)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

ShinenBito415000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = 10
   local func8_var5 = 12
   local func8_var6 = 0
   local func8_var7 = ai:GetDist(TARGET_ENE_0)
   if func8_var4 <= func8_var7 then
      Approach_Act(ai, goal, func8_var4, func8_var5, func8_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 8, 12, TARGET_ENE_0, true, -1)
end

ShinenBito415000_Act07 = function(ai, goal, func9_param2)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
end

ShinenBito415000_Act08 = function(ai, goal, func10_param2)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, DIST_None, 0, 90)
   end
end

ShinenBito415000_Act10 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
end

ShinenBito415000_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

ShinenBito415000_ActAfter_RealTime = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
      if ai:IsFinishTimer(2) == true then
         if func13_var2 <= 4 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            -- Tried to add an 'end' here but it's incorrect
            if func13_var3 <= 33 then
            elseif func13_var3 <= 66 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            end
            if func13_var4 <= 33 then
               goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_None)
            end
            ai:SetNumber(2, 0)
         else
            if ai:GetNpcThinkParamID() <= 415019 then
               if func13_var3 <= 25 then
               elseif func13_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
               elseif func13_var3 <= 75 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
               end
               goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
            elseif func13_var3 <= 33 then
            elseif func13_var3 <= 58 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
            elseif func13_var3 <= 66 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            elseif func13_var3 <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            elseif func13_var3 <= 87 then
               goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
            elseif func13_var2 >= 4 then
               goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
            else
               --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

ShinenBito415000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ShinenBito415000Battle_Terminate = function(ai, goal)
end

ShinenBito415000Battle_Interupt = function(ai, goal)
   local func16_var2 = ai:GetRandam_Int(1, 100)
   local func16_var3 = ai:GetRandam_Int(1, 100)
   local func16_var4 = ai:GetRandam_Int(1, 100)
   local func16_var5 = ai:GetDist(TARGET_ENE_0)
   local func16_var6 = 3
   local func16_var7 = 15
   local func16_var8 = 100
   local func16_var9 = 50
   local func16_var10 = 25
   local func16_var11 = 25
   local func16_var12 = 4
   local func16_var13 = 0
   local func16_var14 = 0
   local func16_var15 = 0
   if FindAttack_Step_or_Guard(ai, goal, func16_var6, func16_var7, func16_var8, func16_var9, func16_var10, func16_var11, func16_var12, func16_var13, func16_var14, func16_var15) then
      return true
   end
   local func16_var16 = 3
   local func16_var17 = 25
   local func16_var18 = 100
   local func16_var19 = 50
   local func16_var20 = 25
   local func16_var21 = 25
   local func16_var22 = 4
   local func16_var23 = 0
   local func16_var24 = 0
   local func16_var25 = 0
   if Damaged_Step_or_Guard(ai, goal, func16_var16, func16_var17, func16_var18, func16_var19, func16_var20, func16_var21, func16_var22, func16_var23, func16_var24, func16_var25) then
      return true
   end
   local func16_var26 = 4
   local func16_var27 = 33
   if GuardBreak_Act(ai, goal, func16_var26, func16_var27) then
      local func16_var28 = localScriptConfigVar5
      local func16_var29 = localScriptConfigVar5 + 2
      local func16_var30 = 0
      Approach_Act(ai, goal, func16_var28, func16_var29, func16_var30, 3)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func16_var28 = 2
   local func16_var29 = 50
   if MissSwing_Int(ai, goal, func16_var28, func16_var29) then
      if func16_var5 >= 4 then
         local func16_var30 = localScriptConfigVar5
         local func16_var31 = localScriptConfigVar5 + 2
         local func16_var32 = 0
         Approach_Act(ai, goal, func16_var30, func16_var31, func16_var32, 3)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         local func16_var30 = localScriptConfigVar3
         local func16_var31 = localScriptConfigVar3 + 2
         local func16_var32 = 0
         Approach_Act(ai, goal, func16_var30, func16_var31, func16_var32, 3)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func16_var30 = 4
   local func16_var31 = 30
   if UseItem_Act(ai, goal, func16_var30, func16_var31) then
      if func16_var5 >= 4 then
         local func16_var32 = localScriptConfigVar5
         local func16_var33 = localScriptConfigVar5 + 2
         local func16_var34 = 0
         Approach_Act(ai, goal, func16_var32, func16_var33, func16_var34, 3)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      else
         local func16_var32 = localScriptConfigVar3
         local func16_var33 = localScriptConfigVar3 + 2
         local func16_var34 = 0
         Approach_Act(ai, goal, func16_var32, func16_var33, func16_var34, 3)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func16_var32 = 5
   local func16_var33 = 10
   local func16_var34 = 0
   local func16_var35 = 50
   local func16_var36 = ai:GetRandam_Int(1, 100)
   local func16_var37 = ai:GetRandam_Int(1, 100)
   local func16_var38 = ai:GetDist(TARGET_ENE_0)
   local func16_var39 = Shoot_2dist(ai, goal, func16_var32, func16_var33, func16_var34, func16_var35)
   if func16_var39 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
   elseif func16_var39 == 2 then
      if func16_var36 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
   local func16_var40 = 10
   local func16_var41 = 50
   local func16_var42 = 25
   local func16_var43 = 25
   local func16_var44 = 3
   if RebByOpGuard_Step(ai, goal, func16_var40, func16_var41, func16_var42, func16_var43, func16_var44) then
      return true
   end
   return false
end


