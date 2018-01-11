local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1
local localScriptConfigVar8 = 7
local localScriptConfigVar9 = 7
local localScriptConfigVar10 = 7
local localScriptConfigVar11 = 7
local localScriptConfigVar12 = 8
local localScriptConfigVar13 = 8
Healer6180Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetDist(TARGET_ENE_0)
   local func1_var8 = 1
   local func1_var9 = 1
   local func1_var10 = 1
   local func1_var11 = ai:GetNumber(0)
   if func1_var11 >= 20 then
      func1_var10 = 0
   end
   local func1_var12 = 1
   local func1_var13 = ai:GetNumber(1)
   if func1_var13 >= 20 then
      func1_var12 = 0
   end
   local func1_var14 = 1
   local func1_var15 = ai:GetNumber(2)
   if func1_var15 >= 5 then
      func1_var14 = 0
   end
   local func1_var16 = 0
   if ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var16 = 1
   end
   local func1_var17 = ai:GetHpRate(TARGET_SELF)
   local func1_var18 = 0
   if (ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_POIZON) or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_ILLNESS) or ai:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_BLOOD)) and ai:IsFinishTimer(3) == true then
      func1_var18 = 1
   end
   if func1_var7 >= 7 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[18] = 45 * func1_var10
      func1_var2[19] = 45 * func1_var12
      func1_var2[20] = 10000 * func1_var14 * func1_var18
   elseif func1_var7 >= 1.1 then
      func1_var2[1] = 7
      func1_var2[2] = 8
      func1_var2[17] = 15
      func1_var2[18] = 35 * func1_var10
      func1_var2[19] = 35 * func1_var12
      func1_var2[20] = 10000 * func1_var14 * func1_var18
   else
      func1_var2[1] = 35
      func1_var2[2] = 35
      func1_var2[17] = 20
      func1_var2[18] = 5 * func1_var10
      func1_var2[19] = 5 * func1_var12
      func1_var2[20] = 10000 * func1_var14 * func1_var18
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Healer6180_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Healer6180_Act02)
   func1_var3[17] = REGIST_FUNC(ai, goal, Healer6180_Act17)
   func1_var3[18] = REGIST_FUNC(ai, goal, Healer6180_Act18)
   func1_var3[19] = REGIST_FUNC(ai, goal, Healer6180_Act19)
   func1_var3[20] = REGIST_FUNC(ai, goal, Healer6180_Act20)
   local func1_var19 = REGIST_FUNC(ai, goal, Healer6180_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var19, func1_var4)
end

Healer6180_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar3
   local func2_var6 = localScriptConfigVar3 + 5
   local func2_var7 = 0
   NPC_Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalL, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Healer6180_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar5
   local func3_var6 = localScriptConfigVar5 + 5
   local func3_var7 = 0
   NPC_Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 0, -1)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Healer6180_Act17 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   if func4_var3 >= 7 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(2, 2.5), TARGET_SELF, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, ai:GetRandam_Float(1.5, 2), TARGET_ENE_0, true, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Healer6180_Act18 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func5_var6 = ai:GetNumber(0)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if localScriptConfigVar9 <= func5_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, -1)
   elseif func5_var3 <= localScriptConfigVar8 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar8, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(0, func5_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Healer6180_Act19 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func6_var6 = ai:GetNumber(1)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if localScriptConfigVar11 <= func6_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
   elseif func6_var3 <= localScriptConfigVar10 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar10, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, 4)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(1, func6_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Healer6180_Act20 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func7_var6 = ai:GetNumber(2)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   if localScriptConfigVar13 <= func7_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, -1)
   elseif func7_var3 <= localScriptConfigVar12 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar12, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(2, func7_var6 + 1)
   ai:SetTimer(3, 5)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Healer6180_ActAfter_AdjustSpace = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   if func8_var3 <= 80 then
      if func8_var4 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

Healer6180Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Healer6180Battle_Terminate = function(ai, goal)
end

Healer6180Battle_Interupt = function(ai, goal)
   local func11_var2 = ai:GetDist(TARGET_ENE_0)
   local func11_var3 = ai:GetRandam_Int(1, 100)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   local func11_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func11_var6 = 3
      local func11_var7 = 10
      local func11_var8 = 3
      if func11_var2 <= func11_var6 and func11_var3 <= func11_var7 then
         goal:ClearSubGoal()
         if func11_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func11_var6 = 3
      local func11_var7 = 10
      if func11_var2 < func11_var6 and func11_var3 <= func11_var7 then
         goal:ClearSubGoal()
         if func11_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func11_var6 = 3
      local func11_var7 = 10
      if func11_var2 < func11_var6 then
         if func11_var3 <= func11_var7 then
            goal:ClearSubGoal()
            if func11_var4 <= func11_var7 then
               if func11_var5 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
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
      local func11_var6 = 50
      if func11_var3 <= func11_var6 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         return true
      end
   end
   return false
end


