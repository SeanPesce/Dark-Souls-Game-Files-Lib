CommonNPC_ChangeWepL1 = function(ai, goal)
   local func1_var2 = ai:GetEquipWeaponIndex(ARM_L)
   if WEP_Primary ~= func1_var2 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L1, TARGET_NONE, DIST_None)
   end
end

CommonNPC_ChangeWepR1 = function(ai, goal)
   local func2_var2 = ai:GetEquipWeaponIndex(ARM_R)
   if WEP_Primary ~= func2_var2 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R1, TARGET_NONE, DIST_None)
   end
end

CommonNPC_ChangeWepL2 = function(ai, goal)
   local func3_var2 = ai:GetEquipWeaponIndex(ARM_L)
   if WEP_Secondary ~= func3_var2 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_L2, TARGET_NONE, DIST_None)
   end
end

CommonNPC_ChangeWepR2 = function(ai, goal)
   local func4_var2 = ai:GetEquipWeaponIndex(ARM_R)
   if WEP_Secondary ~= func4_var2 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_ChangeWep_R2, TARGET_NONE, DIST_None)
   end
end

CommonNPC_SwitchBothHandMode = function(ai, goal)
   if not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_SwitchWep, TARGET_NONE, DIST_None)
   end
end

CommonNPC_SwitchOneHandMode = function(ai, goal)
   if ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_SwitchWep, TARGET_NONE, DIST_None)
   end
end

NPC_Approach_Act = function(ai, goal, func7_param2, func7_param3, func7_param4)
   ai:EndDash()
   local func7_var5 = -1
   local func7_var6 = ai:GetRandam_Int(1, 100)
   if func7_var6 <= func7_param4 then
      func7_var5 = 4
   end
   local func7_var7 = ai:GetDist(TARGET_ENE_0)
   if func7_param3 <= func7_var7 then
      ai:StartDash()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func7_param2, TARGET_SELF, false, func7_var5)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func7_param2, TARGET_SELF, false, func7_var5)
   end
end

NPC_KATATE_Switch = function(ai, goal)
   if ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_None, 0)
   end
end

NPC_RYOUTE_Switch = function(ai, goal)
   if not ai:IsBothHandMode(TARGET_SELF) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, NPC_ATK_SwitchWep, TARGET_ENE_0, DIST_None, 0)
   end
end

Damaged_StepCount_NPCPlayer = function(ai, goal, func10_param2, func10_param3, func10_param4, func10_param5, func10_param6, func10_param7, func10_param8)
   local func10_var9 = ai:GetDist(TARGET_ENE_0)
   local func10_var10 = ai:GetRandam_Int(1, 100)
   local func10_var11 = ai:GetRandam_Int(1, 100)
   local func10_var12 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and func10_var9 < func10_param2 and func10_var10 <= func10_param3 then
      goal:ClearSubGoal()
      if func10_var11 <= func10_param6 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
      elseif func10_var11 <= func10_param6 + func10_param7 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
      end
      if func10_var12 <= func10_param4 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, func10_param5, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
end

FindAttack_Step_NPCPlayer = function(ai, goal, func11_param2, func11_param3, func11_param4, func11_param5, func11_param6)
   local func11_var7 = ai:GetDist(TARGET_ENE_0)
   local func11_var8 = ai:GetRandam_Int(1, 100)
   local func11_var9 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) and func11_var7 <= func11_param2 and func11_var8 <= func11_param3 then
      goal:ClearSubGoal()
      if func11_var9 <= func11_param4 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepB, TARGET_ENE_0, DIST_None, 0)
      elseif func11_var9 <= func11_param4 + func11_param5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepL, TARGET_ENE_0, DIST_None, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, NPC_ATK_StepR, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
end

FindAttack_Act = function(ai, goal, func12_param2, func12_param3)
   local func12_var4 = ai:GetDist(TARGET_ENE_0)
   local func12_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_FindAttack) and func12_var4 <= func12_param2 and func12_var5 <= func12_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindAttack_Step = function(ai, goal, func13_param2, func13_param3, func13_param4, func13_param5, func13_param6, func13_param7)
   local func13_var8 = ai:GetDist(TARGET_ENE_0)
   local func13_var9 = ai:GetRandam_Int(1, 100)
   local func13_var10 = ai:GetRandam_Int(1, 100)
   local func13_var11 = GET_PARAM_IF_NIL_DEF(func13_param4, 50)
   local func13_var12 = GET_PARAM_IF_NIL_DEF(func13_param5, 25)
   local func13_var13 = GET_PARAM_IF_NIL_DEF(func13_param6, 25)
   local func13_var14 = GET_PARAM_IF_NIL_DEF(func13_param7, 3)
   if ai:IsInterupt(INTERUPT_FindAttack) and func13_var8 <= func13_param2 and func13_var9 <= func13_param3 then
      goal:ClearSubGoal()
      if func13_var10 <= func13_var11 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, func13_var14)
      elseif func13_var10 <= func13_var11 + func13_var12 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, func13_var14)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, func13_var14)
      end
      return true
   end
end

FindAttack_Guard = function(ai, goal, func14_param2, func14_param3, func14_param4, func14_param5, func14_param6)
   local func14_var7 = ai:GetDist(TARGET_ENE_0)
   local func14_var8 = ai:GetRandam_Int(1, 100)
   local func14_var9 = ai:GetRandam_Int(1, 100)
   local func14_var10 = GET_PARAM_IF_NIL_DEF(func14_param4, 40)
   local func14_var11 = GET_PARAM_IF_NIL_DEF(func14_param5, 4)
   local func14_var12 = GET_PARAM_IF_NIL_DEF(func14_param6, 3)
   if ai:IsInterupt(INTERUPT_FindAttack) and func14_var7 <= func14_param2 and func14_var8 <= func14_param3 then
      goal:ClearSubGoal()
      if func14_var9 <= func14_var10 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func14_var12, TARGET_ENE_0, true, 9910)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func14_var12, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, func14_var11, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      end
      return true
   end
end

FindAttack_Step_or_Guard = function(ai, goal, func15_param2, func15_param3, func15_param4, func15_param5, func15_param6, func15_param7, func15_param8, func15_param9, goal0, goal1)
   local func15_var12 = ai:GetDist(TARGET_ENE_0)
   local func15_var13 = ai:GetRandam_Int(1, 100)
   local func15_var14 = ai:GetRandam_Int(1, 100)
   local func15_var15 = ai:GetRandam_Int(1, 100)
   local func15_var16 = GET_PARAM_IF_NIL_DEF(func15_param5, 50)
   local func15_var17 = GET_PARAM_IF_NIL_DEF(func15_param6, 25)
   local func15_var18 = GET_PARAM_IF_NIL_DEF(func15_param7, 25)
   local func15_var19 = GET_PARAM_IF_NIL_DEF(func15_param8, 3)
   local func15_var20 = GET_PARAM_IF_NIL_DEF(func15_param9, 40)
   local func15_var21 = GET_PARAM_IF_NIL_DEF(goal0, 4)
   local func15_var22 = GET_PARAM_IF_NIL_DEF(goal1, 3)
   if ai:IsInterupt(INTERUPT_FindAttack) and func15_var12 <= func15_param2 and func15_var13 <= func15_param3 then
      if func15_var14 <= func15_param4 then
         goal:ClearSubGoal()
         if func15_var15 <= func15_var16 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, func15_var19)
         elseif func15_var15 <= func15_var16 + func15_var17 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, func15_var19)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, func15_var19)
         end
         return true
      else
         goal:ClearSubGoal()
         if func15_var15 <= func15_var20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func15_var22, TARGET_ENE_0, true, 9910)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func15_var22, TARGET_ENE_0, true, 9910)
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func15_var21, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         end
         return true
      end
   end
end

Damaged_Act = function(ai, goal, func16_param2, func16_param3)
   local func16_var4 = ai:GetDist(TARGET_ENE_0)
   local func16_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and func16_var4 < func16_param2 and func16_var5 <= func16_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

Damaged_Guard = function(ai, goal, func17_param2, func17_param3, func17_param4, func17_param5, func17_param6)
   local func17_var7 = ai:GetDist(TARGET_ENE_0)
   local func17_var8 = ai:GetRandam_Int(1, 100)
   local func17_var9 = ai:GetRandam_Int(1, 100)
   local func17_var10 = GET_PARAM_IF_NIL_DEF(func17_param4, 40)
   local func17_var11 = GET_PARAM_IF_NIL_DEF(func17_param5, 4)
   local func17_var12 = GET_PARAM_IF_NIL_DEF(func17_param6, 3)
   if ai:IsInterupt(INTERUPT_Damaged) and func17_var7 <= func17_param2 and func17_var8 <= func17_param3 then
      goal:ClearSubGoal()
      if func17_var9 <= func17_var10 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func17_var12, TARGET_ENE_0, true, 9910)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func17_var12, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, func17_var11, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      end
      return true
   end
end

Damaged_Step = function(ai, goal, func18_param2, func18_param3, func18_param4, func18_param5, func18_param6, func18_param7)
   local func18_var8 = ai:GetDist(TARGET_ENE_0)
   local func18_var9 = ai:GetRandam_Int(1, 100)
   local func18_var10 = ai:GetRandam_Int(1, 100)
   local func18_var11 = GET_PARAM_IF_NIL_DEF(func18_param4, 50)
   local func18_var12 = GET_PARAM_IF_NIL_DEF(func18_param5, 25)
   local func18_var13 = GET_PARAM_IF_NIL_DEF(func18_param6, 25)
   local func18_var14 = GET_PARAM_IF_NIL_DEF(func18_param7, 3)
   if ai:IsInterupt(INTERUPT_Damaged) and func18_var8 <= func18_param2 and func18_var9 <= func18_param3 then
      goal:ClearSubGoal()
      if func18_var10 <= func18_var11 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, func18_var14)
      elseif func18_var10 <= func18_var11 + func18_var12 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, func18_var14)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, func18_var14)
      end
      return true
   end
end

Damaged_Step_or_Guard = function(ai, goal, func19_param2, func19_param3, func19_param4, func19_param5, func19_param6, func19_param7, func19_param8, func19_param9, goal0, goal1)
   local func19_var12 = ai:GetDist(TARGET_ENE_0)
   local func19_var13 = ai:GetRandam_Int(1, 100)
   local func19_var14 = ai:GetRandam_Int(1, 100)
   local func19_var15 = ai:GetRandam_Int(1, 100)
   local func19_var16 = GET_PARAM_IF_NIL_DEF(func19_param5, 50)
   local func19_var17 = GET_PARAM_IF_NIL_DEF(func19_param6, 25)
   local func19_var18 = GET_PARAM_IF_NIL_DEF(func19_param7, 25)
   local func19_var19 = GET_PARAM_IF_NIL_DEF(func19_param8, 3)
   local func19_var20 = GET_PARAM_IF_NIL_DEF(func19_param9, 40)
   local func19_var21 = GET_PARAM_IF_NIL_DEF(goal0, 4)
   local func19_var22 = GET_PARAM_IF_NIL_DEF(goal1, 3)
   if ai:IsInterupt(INTERUPT_Damaged) and func19_var12 <= func19_param2 and func19_var13 <= func19_param3 then
      if func19_var14 <= func19_param4 then
         goal:ClearSubGoal()
         if func19_var15 <= func19_var16 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, func19_var19)
         elseif func19_var15 <= func19_var16 + func19_var17 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, func19_var19)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, func19_var19)
         end
         return true
      else
         goal:ClearSubGoal()
         if func19_var15 <= func19_var20 then
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func19_var22, TARGET_ENE_0, true, 9910)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, func19_var22, TARGET_ENE_0, true, 9910)
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, func19_var21, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         end
         return true
      end
   end
end

GuardBreak_Act = function(ai, goal, func20_param2, func20_param3)
   local func20_var4 = ai:GetDist(TARGET_ENE_0)
   local func20_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardBreak) and func20_var4 <= func20_param2 and func20_var5 <= func20_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

GuardBreak_Attack = function(ai, goal, func21_param2, func21_param3, func21_param4)
   local func21_var5 = ai:GetDist(TARGET_ENE_0)
   local func21_var6 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardBreak) and func21_var5 <= func21_param2 and func21_var6 <= func21_param3 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, func21_param4, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end

MissSwing_Int = function(ai, goal, func22_param2, func22_param3)
   local func22_var4 = ai:GetDist(TARGET_ENE_0)
   local func22_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) and func22_var4 <= func22_param2 and func22_var5 <= func22_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

MissSwing_Attack = function(ai, goal, func23_param2, func23_param3, func23_param4)
   local func23_var5 = ai:GetDist(TARGET_ENE_0)
   local func23_var6 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) and func23_var5 <= func23_param2 and func23_var6 <= func23_param3 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, func23_param4, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end

UseItem_Act = function(ai, goal, func24_param2, func24_param3)
   local func24_var4 = ai:GetDist(TARGET_ENE_0)
   local func24_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_UseItem) and func24_var4 <= func24_param2 and func24_var5 <= func24_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

Shoot_1kind = function(ai, goal, func25_param2, func25_param3)
   local func25_var4 = ai:GetDist(TARGET_ENE_0)
   local func25_var5 = ai:GetRandam_Int(1, 100)
   local func25_var6 = GET_PARAM_IF_NIL_DEF(bkStepPer, 50)
   local func25_var7 = GET_PARAM_IF_NIL_DEF(leftStepPer, 25)
   local func25_var8 = GET_PARAM_IF_NIL_DEF(rightStepPer, 25)
   local func25_var9 = GET_PARAM_IF_NIL_DEF(safetyDist, 3)
   if ai:IsInterupt(INTERUPT_Shoot) and func25_var4 <= func25_param2 and func25_var5 <= func25_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

Shoot_2dist = function(ai, goal, func26_param2, func26_param3, func26_param4, func26_param5)
   local func26_var6 = ai:GetDist(TARGET_ENE_0)
   local func26_var7 = ai:GetRandam_Int(1, 100)
   local func26_var8 = ai:GetRandam_Int(1, 100)
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

MissSwingSelf_Step = function(ai, goal, func27_param2, func27_param3, func27_param4, func27_param5, func27_param6)
   local func27_var7 = ai:GetDist(TARGET_ENE_0)
   local func27_var8 = ai:GetRandam_Int(1, 100)
   local func27_var9 = ai:GetRandam_Int(1, 100)
   local func27_var10 = GET_PARAM_IF_NIL_DEF(func27_param3, 50)
   local func27_var11 = GET_PARAM_IF_NIL_DEF(func27_param4, 25)
   local func27_var12 = GET_PARAM_IF_NIL_DEF(func27_param5, 25)
   local func27_var13 = GET_PARAM_IF_NIL_DEF(func27_param6, 3)
   if ai:IsInterupt(INTERUPT_MissSwingSelf) and func27_var8 <= func27_param2 then
      goal:ClearSubGoal()
      if func27_var9 <= func27_var10 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, func27_var13)
      elseif func27_var9 <= func27_var10 + func27_var11 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, func27_var13)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, func27_var13)
      end
      return true
   end
end

RebByOpGuard_Step = function(ai, goal, func28_param2, func28_param3, func28_param4, func28_param5, func28_param6)
   local func28_var7 = ai:GetDist(TARGET_ENE_0)
   local func28_var8 = ai:GetRandam_Int(1, 100)
   local func28_var9 = ai:GetRandam_Int(1, 100)
   local func28_var10 = GET_PARAM_IF_NIL_DEF(func28_param3, 50)
   local func28_var11 = GET_PARAM_IF_NIL_DEF(func28_param4, 25)
   local func28_var12 = GET_PARAM_IF_NIL_DEF(func28_param5, 25)
   local func28_var13 = GET_PARAM_IF_NIL_DEF(func28_param6, 3)
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) and func28_var8 <= func28_param2 then
      goal:ClearSubGoal()
      if func28_var9 <= func28_var10 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, func28_var13)
      elseif func28_var9 <= func28_var10 + func28_var11 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, func28_var13)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, func28_var13)
      end
      return true
   end
end

SuccessGuard_Act = function(ai, goal, func29_param2, func29_param3)
   local func29_var4 = ai:GetDist(TARGET_ENE_0)
   local func29_var5 = ai:GetRandam_Int(1, 100)
   local func29_var6 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_SuccessGuard) and func29_var4 <= func29_param2 and func29_var5 <= func29_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

SuccessGuard_Attack = function(ai, goal, func30_param2, func30_param3, func30_param4)
   local func30_var5 = ai:GetDist(TARGET_ENE_0)
   local func30_var6 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_SuccessGuard) and func30_var5 <= func30_param2 and func30_var6 <= func30_param3 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, func30_param4, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   return false
end

FarDamaged_Act = function(ai, goal, func31_param2, func31_param3)
   local func31_var4 = ai:GetDist(TARGET_ENE_0)
   local func31_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and func31_param2 <= func31_var4 and func31_var5 <= func31_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

MissSwing_Act = function(ai, goal, func32_param2, func32_param3)
   local func32_var4 = ai:GetDist(TARGET_ENE_0)
   local func32_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_MissSwing) and func32_var4 <= func32_param2 and func32_var5 <= func32_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindGuardBreak_Act = function(ai, goal, func33_param2, func33_param3)
   local func33_var4 = ai:GetDist(TARGET_ENE_0)
   local func33_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardBreak) and func33_var4 <= func33_param2 and func33_var5 <= func33_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindGuardFinish_Act = function(ai, goal, func34_param2, func34_param3)
   local func34_var4 = ai:GetDist(TARGET_ENE_0)
   local func34_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_GuardFinish) and func34_var4 <= func34_param2 and func34_var5 <= func34_param3 then
      goal:ClearSubGoal()
      return true
   end
   return false
end

FindShoot_Act = function(ai, goal, func35_param2, func35_param3, func35_param4, func35_param5, func35_param6, func35_param7)
   local func35_var8 = ai:GetDist(TARGET_ENE_0)
   local func35_var9 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Shoot) then
      if func35_var8 <= func35_param5 and func35_var9 <= func35_param2 then
         goal:ClearSubGoal()
         return 1
      elseif func35_var8 <= func35_param6 and func35_var9 <= func35_param3 then
         goal:ClearSubGoal()
         return 2
      elseif func35_var8 <= func35_param7 and func35_var9 <= func35_param4 then
         goal:ClearSubGoal()
         return 3
      else
         goal:ClearSubGoal()
         return 0
      end
   end
   return 0
end

Approach_Act = function(ai, goal, func36_param2, func36_param3, func36_param4)
   local func36_var5 = ai:GetDist(TARGET_ENE_0)
   local func36_var6 = true
   if func36_param3 <= func36_var5 then
      func36_var6 = false
   end
   local func36_var7 = -1
   local func36_var8 = ai:GetRandam_Int(1, 100)
   if func36_var8 <= func36_param4 then
      func36_var7 = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func36_param2, TARGET_SELF, func36_var6, func36_var7)
end

BusyApproach_Act = function(ai, goal, func37_param2, func37_param3, func37_param4)
   local func37_var5 = -1
   local func37_var6 = ai:GetRandam_Int(1, 100)
   if func37_var6 <= func37_param4 then
      func37_var5 = 9910
   end
   local func37_var7 = ai:GetDist(TARGET_ENE_0)
   if func37_param3 <= func37_var7 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func37_param2, TARGET_SELF, false, func37_var5)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, func37_param2, TARGET_SELF, true, func37_var5)
   end
end

Approach_and_Attack_Act = function(ai, goal, func38_param2, func38_param3, func38_param4, func38_param5, func38_param6, func38_param7, func38_param8)
   local func38_var9 = ai:GetDist(TARGET_ENE_0)
   local func38_var10 = true
   if func38_param3 <= func38_var9 then
      func38_var10 = false
   end
   local func38_var11 = -1
   local func38_var12 = ai:GetRandam_Int(1, 100)
   if func38_var12 <= func38_param4 then
      func38_var11 = 9910
   end
   local func38_var13 = GET_PARAM_IF_NIL_DEF(func38_param7, 1.5)
   local func38_var14 = GET_PARAM_IF_NIL_DEF(func38_param8, 20)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func38_param2, TARGET_SELF, func38_var10, func38_var11)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, func38_param5, TARGET_ENE_0, func38_param6, func38_var13, func38_var14)
end

KeepDist_and_Attack_Act = function(ai, goal, func39_param2, func39_param3, func39_param4, func39_param5, func39_param6, func39_param7)
   local func39_var8 = ai:GetDist(TARGET_ENE_0)
   local func39_var9 = true
   if func39_param4 <= func39_var8 then
      func39_var9 = false
   end
   local func39_var10 = -1
   local func39_var11 = ai:GetRandam_Int(1, 100)
   if func39_var11 <= func39_param5 then
      func39_var10 = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, func39_param2, func39_param3, TARGET_ENE_0, func39_var9, func39_var10)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, func39_param6, TARGET_ENE_0, func39_param7, 0)
end

Approach_and_GuardBreak_Act = function(ai, goal, func40_param2, func40_param3, func40_param4, func40_param5, func40_param6, func40_param7, func40_param8)
   local func40_var9 = ai:GetDist(TARGET_ENE_0)
   local func40_var10 = true
   if func40_param3 <= func40_var9 then
      func40_var10 = false
   end
   local func40_var11 = -1
   local func40_var12 = ai:GetRandam_Int(1, 100)
   if func40_var12 <= func40_param4 then
      func40_var11 = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func40_param2, TARGET_SELF, func40_var10, func40_var11)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakAttack, 10, func40_param5, TARGET_ENE_0, func40_param6, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func40_param7, TARGET_ENE_0, func40_param8, 0)
end

GetWellSpace_Act = function(ai, goal, func41_param2, func41_param3, func41_param4, func41_param5, func41_param6, func41_param7)
   local func41_var8 = -1
   local func41_var9 = ai:GetRandam_Int(1, 100)
   if func41_var9 <= func41_param2 then
      func41_var8 = 9910
   end
   local func41_var10 = ai:GetRandam_Int(1, 100)
   local func41_var11 = ai:GetRandam_Int(0, 1)
   local func41_var12 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func41_var11, TARGET_ENE_0, 2)
   if func41_var10 <= func41_param3 then
   elseif func41_var10 <= func41_param3 + func41_param4 and func41_var12 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, func41_var8)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func41_var11, ai:GetRandam_Int(30, 45), true, true, func41_var8)
   elseif func41_var10 <= func41_param3 + func41_param4 + func41_param5 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, func41_var8)
   elseif func41_var10 <= func41_param3 + func41_param4 + func41_param5 + func41_param6 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   end
end

GetWellSpace_Act_IncludeSidestep = function(ai, goal, func42_param2, func42_param3, func42_param4, func42_param5, func42_param6, func42_param7, func42_param8)
   local func42_var9 = -1
   local func42_var10 = ai:GetRandam_Int(1, 100)
   if func42_var10 <= func42_param2 then
      func42_var9 = 9910
   end
   local func42_var11 = ai:GetRandam_Int(1, 100)
   local func42_var12 = ai:GetRandam_Int(0, 1)
   local func42_var13 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func42_var12, TARGET_ENE_0, 2)
   if func42_var11 <= func42_param3 then
   elseif func42_var11 <= func42_param3 + func42_param4 and func42_var13 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, func42_var9)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func42_var12, ai:GetRandam_Int(30, 45), true, true, func42_var9)
   elseif func42_var11 <= func42_param3 + func42_param4 + func42_param5 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, func42_var9)
   elseif func42_var11 <= func42_param3 + func42_param4 + func42_param5 + func42_param6 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   elseif func42_var11 <= func42_param3 + func42_param4 + func42_param5 + func42_param6 + func42_param7 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   else
      local func42_var14 = ai:GetRandam_Int(1, 100)
      if func42_var14 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Shoot_Act = function(ai, goal, func43_param2, func43_param3, func43_param4)
   if func43_param4 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, func43_param2, TARGET_ENE_0, DIST_None, 0)
   elseif func43_param4 >= 2 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, func43_param2, TARGET_ENE_0, DIST_None, 0)
      if func43_param4 >= 3 then
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func43_param3, TARGET_ENE_0, DIST_None, 0)
         if func43_param4 >= 4 then
            goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func43_param3, TARGET_ENE_0, DIST_None, 0)
            if func43_param4 >= 5 then
               goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func43_param3, TARGET_ENE_0, DIST_None, 0)
            end
         end
      end
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func43_param3, TARGET_ENE_0, DIST_None, 0)
   end
end

Approach_Act = function(ai, goal, func44_param2, func44_param3, func44_param4, func44_param5)
   if func44_param5 == nil then
      func44_param5 = 10
   end
   local func44_var6 = ai:GetDist(TARGET_ENE_0)
   local func44_var7 = true
   if func44_param3 <= func44_var6 then
      func44_var7 = false
   end
   local func44_var8 = -1
   local func44_var9 = ai:GetRandam_Int(1, 100)
   if func44_var9 <= func44_param4 then
      func44_var8 = 9910
   end
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, func44_param5, TARGET_ENE_0, func44_param2, TARGET_SELF, func44_var7, func44_var8)
end

Approach_or_Leave_Act = function(ai, goal, func45_param2, func45_param3, func45_param4, func45_param5)
   local func45_var6 = ai:GetDist(TARGET_ENE_0)
   local func45_var7 = true
   if func45_param4 ~= -1 and func45_param4 <= func45_var6 then
      func45_var7 = false
   end
   local func45_var8 = -1
   local func45_var9 = ai:GetRandam_Int(1, 100)
   if func45_var9 <= func45_param5 then
      func45_var8 = 9910
   end
   if func45_param2 <= func45_var6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func45_param3, TARGET_SELF, func45_var7, func45_var8)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, func45_param2, TARGET_ENE_0, true, func45_var8)
   end
end

Watching_Parry_Chance_Act = function(ai, goal)
   FirstDist = ai:GetRandam_Float(2, 4)
   SecondDist = ai:GetRandam_Float(2, 4)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, FirstDist, FirstDist + 0.5, TARGET_ENE_0, true, 9920)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, 9920)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 5, TARGET_ENE_0, SecondDist, SecondDist + 0.5, TARGET_ENE_0, true, 9920)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(3, 5), TARGET_ENE_0, ai:GetRandam_Int(0, 1), 180, true, true, 9920)
end

Parry_Act = function(ai, goal, func47_param2, func47_param3, func47_param4, func47_param5)
   local func47_var6 = ai:GetDist(TARGET_ENE_0)
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

ObserveAreaForBackstab = function(ai, goal, func48_param2, func48_param3, func48_param4)
   ai:AddObserveArea(func48_param2, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, func48_param4, func48_param3)
end

Backstab_Act = function(ai, goal, func49_param2, func49_param3, func49_param4, func49_param5)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsThrowing() == false and ai:IsFinishTimer(func49_param4) == true and ai:IsInsideObserve(func49_param2) then
      ai:SetTimer(func49_param4, func49_param5)
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, func49_param3, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3110, TARGET_ENE_0, 3, 0)
      return true
   end
end

Torimaki_Act = function(ai, goal, func50_param2)
   local func50_var3 = -1
   local func50_var4 = ai:GetRandam_Int(1, 100)
   if func50_var4 <= func50_param2 then
      func50_var3 = 9910
   end
   local func50_var5 = ai:GetDist(TARGET_ENE_0)
   if func50_var5 >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, false, -1)
   elseif func50_var5 >= 6 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 4.5, TARGET_SELF, true, -1)
   elseif func50_var5 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, func50_var3)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4, TARGET_ENE_0, true, func50_var3)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, func50_var3)
end

Kankyaku_Act = function(ai, goal, func51_param2)
   local func51_var3 = -1
   local func51_var4 = ai:GetRandam_Int(1, 100)
   if func51_var4 <= func51_param2 then
      func51_var3 = 9910
   end
   local func51_var5 = ai:GetDist(TARGET_ENE_0)
   if func51_var5 >= 15 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, false, -1)
   elseif func51_var5 >= 8 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 6.5, TARGET_SELF, true, -1)
   elseif func51_var5 >= 4 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, func51_var3)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 6, TARGET_ENE_0, true, func51_var3)
   end
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, func51_var3)
end


