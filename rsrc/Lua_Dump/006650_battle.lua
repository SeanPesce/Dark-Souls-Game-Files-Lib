local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 0.8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1
local localScriptConfigVar10 = 3.5
local localScriptConfigVar11 = 4.5
DarkMoon_Kei6650Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetDist(TARGET_ENE_0)
   if func1_var7 >= 8 then
      func1_var2[1] = 10
      func1_var2[3] = 20
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[6] = 70
      func1_var2[7] = 0
      func1_var2[8] = 0
   elseif func1_var7 >= 4.5 then
      func1_var2[1] = 20
      func1_var2[3] = 20
      func1_var2[4] = 0
      func1_var2[5] = 0
      func1_var2[6] = 60
      func1_var2[7] = 0
      func1_var2[8] = 0
   elseif func1_var7 >= 2.1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 0
         func1_var2[2] = 30
         func1_var2[3] = 20
         func1_var2[4] = 10
         func1_var2[5] = 0
         func1_var2[6] = 0
         func1_var2[7] = 40
         func1_var2[8] = 0
      else
         func1_var2[1] = 20
         func1_var2[2] = 0
         func1_var2[3] = 30
         func1_var2[4] = 0
         func1_var2[5] = 20
         func1_var2[6] = 0
         func1_var2[7] = 30
         func1_var2[8] = 0
      end
   elseif func1_var7 >= 1 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 0
         func1_var2[2] = 30
         func1_var2[3] = 0
         func1_var2[4] = 15
         func1_var2[5] = 10
         func1_var2[6] = 0
         func1_var2[7] = 35
         func1_var2[8] = 10
      else
         func1_var2[1] = 22
         func1_var2[2] = 0
         func1_var2[3] = 22
         func1_var2[4] = 0
         func1_var2[5] = 16
         func1_var2[6] = 0
         func1_var2[7] = 30
         func1_var2[8] = 10
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var2[1] = 0
      func1_var2[2] = 18
      func1_var2[3] = 0
      func1_var2[4] = 22
      func1_var2[5] = 0
      func1_var2[6] = 0
      func1_var2[7] = 50
      func1_var2[8] = 10
   else
      func1_var2[1] = 15
      func1_var2[2] = 0
      func1_var2[3] = 15
      func1_var2[4] = 0
      func1_var2[5] = 20
      func1_var2[6] = 0
      func1_var2[7] = 40
      func1_var2[8] = 10
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act06)
   func1_var3[7] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act07)
   func1_var3[8] = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_Act08)
   local func1_var8 = REGIST_FUNC(ai, goal, DarkMoon_Kei6650_ActAfter_AdjustSpace, atkAfterOddsTbl)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

DarkMoon_Kei6650_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 5
   local func2_var7 = 100
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func2_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DarkMoon_Kei6650_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_TurnAround, 2, TARGET_ENE_0, AI_DIR_TYPE_B, 10, false, true, 4)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DarkMoon_Kei6650_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = localScriptConfigVar3 + 5
   local func4_var7 = 100
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
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

DarkMoon_Kei6650_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar5
   local func5_var6 = localScriptConfigVar5 + 5
   local func5_var7 = 100
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_PushR, TARGET_ENE_0, DIST_Middle, 1.5, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DarkMoon_Kei6650_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = localScriptConfigVar1
   local func6_var6 = localScriptConfigVar1 + 5
   local func6_var7 = 100
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 6, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DarkMoon_Kei6650_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar11
   local func7_var6 = localScriptConfigVar11 + 5
   local func7_var7 = 100
   CommonNPC_ChangeWepL1(ai, goal)
   NPC_Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_StepF, TARGET_ENE_0, 3, 1.5, 90)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, NPC_ATK_NormalR, TARGET_ENE_0, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

DarkMoon_Kei6650_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   CommonNPC_ChangeWepL1(ai, goal)
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

DarkMoon_Kei6650_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   CommonNPC_ChangeWepL1(ai, goal)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

DarkMoon_Kei6650_ActAfter_AdjustSpace = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = 3
   if func10_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_BackstepB, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif func10_var3 <= 85 then
      if func10_var4 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, ai:GetRandam_Float(2.5, 3.5), TARGET_ENE_0, true, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, ai:GetRandam_Float(1.5, 3), TARGET_ENE_0, true, 4)
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

DarkMoon_Kei6650Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DarkMoon_Kei6650Battle_Terminate = function(ai, goal)
end

DarkMoon_Kei6650Battle_Interupt = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = ai:GetRandam_Int(1, 100)
   local func13_var6 = 3
   local func13_var7 = 60
   local func13_var8 = 4
   local func13_var9 = 60
   if ai:IsInterupt(INTERUPT_SuccessGuard) then
      local func13_var10 = 3
      local func13_var11 = 80
      if func13_var2 <= func13_var10 and func13_var3 <= func13_var11 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, NPC_ATK_LargeR, TARGET_ENE_0, DIST_None, 0, -1)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func13_var10 = 3
      local func13_var11 = 40
      if func13_var2 < func13_var10 and func13_var3 <= func13_var11 then
         goal:ClearSubGoal()
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         return true
      end
   end
   if ai:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
      local func13_var10 = 3
      local func13_var11 = 10
      if func13_var2 < func13_var10 then
         if func13_var3 <= func13_var11 then
            goal:ClearSubGoal()
            if func13_var4 <= func13_var11 then
               if func13_var5 <= 50 then
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
      local func13_var10 = 50
      if func13_var3 <= func13_var10 then
         goal:ClearSubGoal()
         if func13_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, NPC_ATK_StepB, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, ai:GetRandam_Int(11, 12), TARGET_SELF, 0, AI_DIR_TYPE_F, 4)
         end
         return true
      end
   end
   --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end


