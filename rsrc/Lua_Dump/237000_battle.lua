local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.5
local localScriptConfigVar4 = 2.5
local localScriptConfigVar5 = 4
local localScriptConfigVar6 = 4
local localScriptConfigVar7 = 6
local localScriptConfigVar8 = 6
local localScriptConfigVar9 = 7.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4.1
FourKnightD237000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var7 = 100
   if ai:ChkNearLowHpFriend(1, 20) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1012775) and not ai:HasSpecialEffectId(TARGET_SELF, 5470) then
      if func1_var5 >= 8 then
         func1_var2[5] = 900
      elseif func1_var5 >= 4 then
         func1_var2[5] = 50
      elseif func1_var5 >= 2.5 then
         func1_var2[5] = 45
      else
         func1_var2[5] = 20
      end
   end
   if ai:IsInsideTargetRegion(TARGET_SELF, 1012775) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1012776) then
      func1_var2[1] = 40
      func1_var2[3] = 60
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1012775) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1012777) then
      func1_var2[6] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 40
      func1_var2[2] = 0
      func1_var2[3] = 60
      func1_var2[4] = 0
      func1_var2[9] = 0
   elseif func1_var5 >= 4 then
      func1_var2[1] = 25
      func1_var2[2] = 15
      func1_var2[3] = 15
      func1_var2[4] = 15
      func1_var2[7] = 15
      func1_var2[9] = 15
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 10
      func1_var2[2] = 15
      func1_var2[3] = 0
      func1_var2[4] = 50
      func1_var2[7] = 10
      func1_var2[9] = 15
   else
      func1_var2[1] = 0
      func1_var2[2] = 10
      func1_var2[3] = 0
      func1_var2[4] = 70
      func1_var2[7] = 10
      func1_var2[9] = 10
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, FourKnightD237000_Act01)
   local func1_var8 = {localScriptConfigVar1, 0, 20, 40, nil, nil, nil, nil}
   func1_var4[2] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, FourKnightD237000_Act03)
   func1_var3[3] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, FourKnightD237000_Act04)
   func1_var3[4] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, FourKnightD237000_Act05)
   func1_var3[5] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, FourKnightD237000_Act06)
   func1_var3[6] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, FourKnightD237000_Act07)
   func1_var3[7] = func1_var8
   func1_var8 = {localScriptConfigVar3, 0, 40, 100, 3003, 3004, nil, nil}
   func1_var4[9] = func1_var8
   func1_var8 = REGIST_FUNC
   func1_var8 = func1_var8(ai, goal, FourKnightD237000_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

FourKnightD237000_Act01 = function(ai, goal, func2_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act03 = function(ai, goal, func3_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   if func4_var3 <= 5 then
      if func4_var4 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 721, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 7.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
      end
   elseif func4_var3 <= 10 then
      if func4_var4 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 4.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   if func5_var3 >= 5 then
   elseif func5_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 721, TARGET_ENE_0, 0.5, AI_DIR_TYPE_B, 7.5)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
   end
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act06 = function(ai, goal, func6_param2)
   goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD237000_Act07 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

FourKnightD237000_ActAfter_AdjustSpace = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   if func8_var4 <= 10 then
   elseif func8_var4 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

OnIf_237000 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = ai:GetRandam_Int(1, 100)
   local func9_var6 = ai:GetDist(TARGET_ENE_0)
   local func9_var7 = 0
   local func9_var8 = 0
   local func9_var9 = 0
   local func9_var10 = 0
   local func9_var11 = 0
   local func9_var12 = 0
   local func9_var13 = 0
   local func9_var14 = 0
   local func9_var15 = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 7.5) then
      func9_var13 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 7.5) then
      func9_var14 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 7.5) then
      func9_var15 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 4.5) then
      func9_var10 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 4.5) then
      func9_var11 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 4.5) then
      func9_var12 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3.5) then
      func9_var7 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3.5) then
      func9_var8 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 3.5) then
      func9_var9 = 1
   end
   if func9_var15 == 1 or func9_var14 == 1 or func9_var13 == 1 then
      if func9_var13 == 1 or func9_var15 == 0 and func9_var14 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 721, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
      elseif func9_var5 <= 50 or func9_var14 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 723, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 722, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      end
      return true
   elseif func9_var12 == 1 or func9_var11 == 1 or func9_var10 == 1 then
      if func9_var10 == 1 or func9_var12 == 0 and func9_var11 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func9_var5 <= 50 or func9_var11 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      end
      return true
   elseif func9_var7 == 1 or func9_var9 == 0 and func9_var8 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 1)
   elseif func9_var5 <= 50 or func9_var8 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 1)
   end
   return true
end

FourKnightD237000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FourKnightD237000Battle_Terminate = function(ai, goal)
end

FourKnightD237000Battle_Interupt = function(ai, goal)
   local func12_var2 = ai:GetRandam_Int(1, 100)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   local func12_var5 = ai:GetDist(TARGET_ENE_0)
   local func12_var6 = 0
   local func12_var7 = 0
   local func12_var8 = 0
   local func12_var9 = 0
   local func12_var10 = 0
   local func12_var11 = 0
   local func12_var12 = 0
   local func12_var13 = 0
   local func12_var14 = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 7.5) then
      func12_var12 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 7.5) then
      func12_var13 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 7.5) then
      func12_var14 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 4.5) then
      func12_var9 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 4.5) then
      func12_var10 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 4.5) then
      func12_var11 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3.5) then
      func12_var6 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3.5) then
      func12_var7 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 3.5) then
      func12_var8 = 1
   end
   local func12_var15 = 3.5
   local func12_var16 = 30
   if Damaged_Act(ai, goal, func12_var15, func12_var16) then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   end
   if ai:IsInterupt(INTERUPT_Damaged) and func12_var5 >= 6 then
      goal:ClearSubGoal()
      if func12_var2 <= 25 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      elseif func12_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_None, 0)
      end
      return true
   end
   local func12_var17 = 3.1
   local func12_var18 = 50
   if GuardBreak_Act(ai, goal, func12_var17, func12_var18) then
      if func12_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func12_var19 = 6.5
   local func12_var20 = 50
   if MissSwing_Int(ai, goal, func12_var19, func12_var20) then
      if func12_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func12_var21 = 8
   local func12_var22 = 15
   if UseItem_Act(ai, goal, func12_var21, func12_var22) then
      if func12_var5 <= 3.1 then
         if func12_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) and func12_var2 <= 20 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      return true
   end
   return false
end


