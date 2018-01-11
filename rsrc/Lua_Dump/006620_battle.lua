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
local localScriptConfigVar10 = 4
local localScriptConfigVar11 = 4
local localScriptConfigVar12 = 5
local localScriptConfigVar13 = 5
Sister_of_Kuragu6620Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   if func1_var8 >= 4 then
      func1_var2[18] = 30
      func1_var2[19] = 50
      func1_var2[20] = 20
   elseif func1_var8 >= 1 then
      func1_var2[18] = 35
      func1_var2[19] = 30
      func1_var2[20] = 35
   else
      func1_var2[18] = 30
      func1_var2[19] = 30
      func1_var2[20] = 40
   end
   func1_var3[18] = REGIST_FUNC(ai, goal, Sister_of_Kuragu6620_Act18)
   func1_var3[19] = REGIST_FUNC(ai, goal, Sister_of_Kuragu6620_Act19)
   func1_var3[20] = REGIST_FUNC(ai, goal, Sister_of_Kuragu6620_Act20)
   local func1_var9 = REGIST_FUNC(ai, goal, Sister_of_Kuragu6620_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var9, func1_var4)
end

Sister_of_Kuragu6620_Act18 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func2_var6 = ai:GetNumber(0)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(0)
   if localScriptConfigVar9 <= func2_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, -1)
   elseif func2_var3 <= localScriptConfigVar8 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar8, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(0, func2_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Sister_of_Kuragu6620_Act19 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetWepCateRight(TARGET_SELF)
   local func3_var6 = ai:GetNumber(1)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(1)
   if localScriptConfigVar11 <= func3_var3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
   elseif func3_var3 <= localScriptConfigVar10 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar10, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(1, func3_var6 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Sister_of_Kuragu6620_Act20 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = ai:GetRandam_Int(1, 100)
   local func4_var7 = ai:GetWepCateRight(TARGET_SELF)
   local func4_var8 = ai:GetNumber(2)
   CommonNPC_ChangeWepR1(ai, goal)
   ai:ChangeEquipMagic(2)
   if localScriptConfigVar13 <= func4_var5 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2.5, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, -1)
   elseif func4_var5 <= localScriptConfigVar12 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, localScriptConfigVar12, TARGET_ENE_0, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_MagicR, TARGET_ENE_0, DIST_None, 1.5, 90)
   ai:SetNumber(2, func4_var8 + 1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Sister_of_Kuragu6620_ActAfter_AdjustSpace = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = 3
   if func5_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   else
   end
end

Sister_of_Kuragu6620Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Sister_of_Kuragu6620Battle_Terminate = function(ai, goal)
end

Sister_of_Kuragu6620Battle_Interupt = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      local func8_var6 = 3
      local func8_var7 = 10
      local func8_var8 = 3
      if func8_var2 <= func8_var6 and func8_var3 <= func8_var7 then
         goal:ClearSubGoal()
         if func8_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func8_var6 = 3
      local func8_var7 = 10
      if func8_var2 < func8_var6 and func8_var3 <= func8_var7 then
         goal:ClearSubGoal()
         if func8_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func8_var6 = 3
      local func8_var7 = 10
      if func8_var2 < func8_var6 then
         if func8_var3 <= func8_var7 then
            goal:ClearSubGoal()
            if func8_var4 <= func8_var7 then
               if func8_var5 <= 50 then
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
      local func8_var6 = 50
      if func8_var3 <= func8_var6 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         return true
      end
   end
   return false
end


