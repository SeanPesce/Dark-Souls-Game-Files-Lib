local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.1
local localScriptConfigVar2 = 8
local localScriptConfigVar3 = 20
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 0.8
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 1.5
local localScriptConfigVar12 = 3.5
local localScriptConfigVar13 = 4.5
Licarl6600Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetDist(TARGET_ENE_0)
   local func1_var8 = ai:GetWepCateRight(TARGET_SELF)
   local func1_var9 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var10 = 1
   if func1_var9 <= -0.4 then
      func1_var10 = 0
   end
   if func1_var8 == WEP_CATE_Bow then
      if func1_var7 >= 10 then
         func1_var2[2] = 100
      elseif func1_var7 >= 2.8 then
         func1_var2[2] = 10
         func1_var2[9] = 90
      else
         func1_var2[1] = 20 * func1_var10
         func1_var2[3] = 35
         func1_var2[4] = 0
         func1_var2[5] = 20 * func1_var10
         func1_var2[6] = 15
         func1_var2[7] = 0
         func1_var2[8] = 0
         func1_var2[9] = 10
      end
   elseif func1_var7 >= 7.5 then
      func1_var2[2] = 100
   elseif func1_var7 >= 5.2 then
      func1_var2[1] = 15 * func1_var10
      func1_var2[3] = 25
      func1_var2[4] = 15
      func1_var2[5] = 0
      func1_var2[6] = 15
      func1_var2[7] = 0
      func1_var2[8] = 0
      func1_var2[9] = 20
   elseif func1_var7 >= 2.8 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 0 * func1_var10
         func1_var2[3] = 0
         func1_var2[4] = 10
         func1_var2[5] = 0
         func1_var2[7] = 10
         func1_var2[11] = 80
      else
         func1_var2[1] = 20 * func1_var10
         func1_var2[3] = 20
         func1_var2[4] = 20
         func1_var2[5] = 20 * func1_var10
         func1_var2[7] = 20
         func1_var2[9] = 0
         func1_var2[11] = 0
      end
   elseif func1_var7 >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 0 * func1_var10
         func1_var2[3] = 25
         func1_var2[4] = 25
         func1_var2[5] = 0
         func1_var2[7] = 10
         func1_var2[9] = 0
         func1_var2[11] = 40
      else
         func1_var2[1] = 30 * func1_var10
         func1_var2[3] = 30
         func1_var2[4] = 10
         func1_var2[5] = 20 * func1_var10
         func1_var2[7] = 10
         func1_var2[9] = 0
         func1_var2[11] = 0
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var2[1] = 0 * func1_var10
      func1_var2[3] = 25
      func1_var2[4] = 25
      func1_var2[5] = 0
      func1_var2[7] = 10
      func1_var2[8] = 10
      func1_var2[9] = 0
      func1_var2[11] = 30
   else
      func1_var2[1] = 30 * func1_var10
      func1_var2[3] = 30
      func1_var2[4] = 10
      func1_var2[5] = 10 * func1_var10
      func1_var2[7] = 20
      func1_var2[8] = 10
      func1_var2[9] = 0
      func1_var2[11] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, Licarl6600_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Licarl6600_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, Licarl6600_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, Licarl6600_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, Licarl6600_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, Licarl6600_Act06)
   func1_var3[7] = REGIST_FUNC(ai, goal, Licarl6600_Act07)
   func1_var3[8] = REGIST_FUNC(ai, goal, Licarl6600_Act08)
   func1_var3[9] = REGIST_FUNC(ai, goal, Licarl6600_Act09)
   func1_var3[11] = REGIST_FUNC(ai, goal, Licarl6600_Act11)
   local func1_var11 = REGIST_FUNC(ai, goal, Licarl6600_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var11, func1_var4)
end

Licarl6600_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   local func2_var6 = localScriptConfigVar1
   local func2_var7 = localScriptConfigVar1 + 5
   local func2_var8 = 100
   NPC_Approach_Act(ai, goal, func2_var6, func2_var7, func2_var8)
   if func2_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Licarl6600_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR2(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Far, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Licarl6600_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   local func4_var6 = localScriptConfigVar5
   local func4_var7 = localScriptConfigVar5 + 5
   local func4_var8 = 100
   NPC_Approach_Act(ai, goal, func4_var6, func4_var7, func4_var8)
   if func4_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      GetWellSpace_Odds = 100
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
      GetWellSpace_Odds = 100
   end
   return GetWellSpace_Odds
end

Licarl6600_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func5_var6 = localScriptConfigVar7
   local func5_var7 = localScriptConfigVar7 + 5
   local func5_var8 = 0
   NPC_Approach_Act(ai, goal, func5_var6, func5_var7, func5_var8)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Licarl6600_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   local func6_var6 = localScriptConfigVar1
   local func6_var7 = localScriptConfigVar1 + 5
   local func6_var8 = 100
   NPC_Approach_Act(ai, goal, func6_var6, func6_var7, func6_var8)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Licarl6600_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   local func7_var6 = localScriptConfigVar13
   local func7_var7 = localScriptConfigVar13 + 5
   local func7_var8 = 100
   NPC_Approach_Act(ai, goal, func7_var6, func7_var7, func7_var8)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Licarl6600_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetWepCateRight(TARGET_SELF)
   CommonNPC_ChangeWepR1(ai, goal)
   if func8_var3 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, 4)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Licarl6600_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Licarl6600_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func10_var6 = NPC_ATK_NormalR
   local func10_var7 = NPC_ATK_NormalR
   local func10_var8 = ai:GetRandam_Int(1, 3)
   CommonNPC_ChangeWepR2(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 10, TARGET_ENE_0, false, 4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Far, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Licarl6600_Act11 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, 4)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 3, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Licarl6600_ActAfter_AdjustSpace = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = 3
   if func12_var3 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
   elseif func12_var3 <= 55 then
      if func12_var4 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Licarl6600Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Licarl6600Battle_Terminate = function(ai, goal)
end

Licarl6600Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetDist(TARGET_ENE_0)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetRandam_Int(1, 100)
   local func15_var6 = ai:GetWepCateRight(TARGET_SELF)
   local func15_var7 = 2
   local func15_var8 = 60
   local func15_var9 = 4
   local func15_var10 = 60
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func15_var11 = 3
      local func15_var12 = 40
      if func15_var2 <= func15_var11 and func15_var3 <= func15_var12 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   do
      if ai:IsInterupt(INTERUPT_Damaged) then
         local func15_var11 = 3
         local func15_var12 = 40
         if func15_var2 < func15_var11 then
            if func15_var3 <= func15_var12 then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
               -- Tried to add an 'end' here but it's incorrect
               return true
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
            end
            if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
               local func15_var11 = 3
               local func15_var12 = 30
               if func15_var2 < func15_var11 then
                  if func15_var3 <= func15_var12 then
                     goal:ClearSubGoal()
                     if func15_var4 <= func15_var12 then
                        if func15_var5 <= 50 then
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
                        else
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
                        end
                     else
                        ai:Replaning()
                        goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
                        return true
                     end
                  else
                     goal:ClearSubGoal()
                     goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
                     ai:Replaning()
                     return true
                  end
               else
                  goal:ClearSubGoal()
                  goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
                  ai:Replaning()
                  return true
               end
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
               -- Tried to add an 'end' here but it's incorrect
            end
            if ai:IsInterupt(INTERUPT_Shoot) then
               local func15_var11 = 50
               if func15_var3 <= func15_var11 then
                  goal:ClearSubGoal()
                  if func15_var3 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
                  end
                  return true
               end
            end
            if ai:IsInterupt(INTERUPT_Shoot) then
               local func15_var11 = 50
               if func15_var3 <= func15_var11 then
                  goal:ClearSubGoal()
                  if func15_var3 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
                  end
                  return true
               end
            end
            --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end


