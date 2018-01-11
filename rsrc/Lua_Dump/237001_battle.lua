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
FourKnightD_m17_237001Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:ChkNearLowHpFriend(1, 20) and not ai:HasSpecialEffectId(TARGET_SELF, 5470) then
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
   if func1_var5 >= 8 then
      func1_var2[1] = 40
      func1_var2[2] = 0
      func1_var2[3] = 60
      func1_var2[9] = 0
   elseif func1_var5 >= 4 then
      func1_var2[1] = 30
      func1_var2[2] = 15
      func1_var2[3] = 15
      func1_var2[7] = 15
      func1_var2[9] = 15
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 20
      func1_var2[2] = 25
      func1_var2[3] = 10
      func1_var2[7] = 20
      func1_var2[9] = 25
   else
      func1_var2[1] = 10
      func1_var2[2] = 30
      func1_var2[3] = 0
      func1_var2[7] = 30
      func1_var2[9] = 30
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, FourKnightD_m17_237001_Act01)
   local func1_var6 = {localScriptConfigVar1, 0, 20, 40, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, FourKnightD_m17_237001_Act03)
   func1_var3[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, FourKnightD_m17_237001_Act05)
   func1_var3[5] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, FourKnightD_m17_237001_Act07)
   func1_var3[7] = func1_var6
   func1_var6 = {localScriptConfigVar3, 0, 40, 100, 3003, 3004, nil, nil}
   func1_var4[9] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, FourKnightD_m17_237001_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

FourKnightD_m17_237001_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3005, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD_m17_237001_Act03 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD_m17_237001_Act05 = function(ai, goal, func4_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

FourKnightD_m17_237001_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

FourKnightD_m17_237001_ActAfter_AdjustSpace = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetRandam_Int(1, 100)
   if func6_var3 <= 10 then
   elseif func6_var3 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
      return true
   end
   return false
end

OnIf_237001 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetRandam_Int(1, 100)
   local func7_var6 = ai:GetDist(TARGET_ENE_0)
   local func7_var7 = 0
   local func7_var8 = 0
   local func7_var9 = 0
   local func7_var10 = 0
   local func7_var11 = 0
   local func7_var12 = 0
   local func7_var13 = 0
   local func7_var14 = 0
   local func7_var15 = 0
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 7.5) then
      func7_var13 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 7.5) then
      func7_var14 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 7.5) then
      func7_var15 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 4.5) then
      func7_var10 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 4.5) then
      func7_var11 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 4.5) then
      func7_var12 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 3.5) then
      func7_var7 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 3.5) then
      func7_var8 = 1
   end
   if ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 3.5) then
      func7_var9 = 1
   end
   if func7_var15 == 1 or func7_var14 == 1 or func7_var13 == 1 then
      if func7_var13 == 1 or func7_var15 == 0 and func7_var14 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 721, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
      elseif func7_var5 <= 50 or func7_var14 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 723, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 722, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
      end
      return true
   elseif func7_var12 == 1 or func7_var11 == 1 or func7_var10 == 1 then
      if func7_var10 == 1 or func7_var12 == 0 and func7_var11 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
      elseif func7_var5 <= 50 or func7_var11 == 0 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
      end
      return true
   elseif func7_var7 == 1 or func7_var9 == 0 and func7_var8 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 1)
   elseif func7_var5 <= 50 or func7_var8 == 0 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 1)
   end
   return true
end

FourKnightD_m17_237001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

FourKnightD_m17_237001Battle_Terminate = function(ai, goal)
end

FourKnightD_m17_237001Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = ai:GetEventRequest(0)
   local func10_var7 = 3.5
   local func10_var8 = 100
   local func10_var9 = ai:GetNpcThinkParamID()
   if ai:IsInterupt(INTERUPT_Damaged) then
      if func10_var9 == 237001 then
         if func10_var6 ~= 1 and func10_var5 <= 3.5 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
         elseif func10_var5 <= 3.5 and func10_var2 <= 50 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
         elseif func10_var9 == 237001 and func10_var5 <= 3.5 and func10_var2 <= 50 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         local func10_var10 = 3.1
         local func10_var11 = 50
         if GuardBreak_Act(ai, goal, func10_var10, func10_var11) then
            if func10_var2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            end
            return true
         end
         local func10_var12 = 6.5
         local func10_var13 = 50
         if MissSwing_Int(ai, goal, func10_var12, func10_var13) then
            if func10_var2 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
            end
            return true
         end
         local func10_var14 = 8
         local func10_var15 = 15
         if UseItem_Act(ai, goal, func10_var14, func10_var15) then
            if func10_var5 <= 3.1 then
               if func10_var2 <= 50 then
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
         if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) and func10_var2 <= 20 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
            return true
         end
         return false
end


