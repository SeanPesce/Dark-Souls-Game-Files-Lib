local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.3
local localScriptConfigVar6 = 2.5
local localScriptConfigVar7 = 4.5
OnIf_255002 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

HusiHeavy_Bow255002Battle_Activate = function(ai, goal)
   ai:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 180, 3)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = 10
   local func2_var7 = 8
   local func2_var8 = ai:GetHpRate(TARGET_SELF)
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      if func2_var8 <= 0.4 and ai:IsFinishTimer(0) == true then
         if func2_var6 <= func2_var5 then
            func2_var2[4] = 25
            func2_var2[6] = 0
            func2_var2[7] = 0
            func2_var2[8] = 0
            func2_var2[9] = 0
            func2_var2[10] = 75
         elseif func2_var5 >= 4.5 then
            func2_var2[4] = 5
            func2_var2[6] = 5
            func2_var2[7] = 5
            func2_var2[8] = 5
            func2_var2[9] = 5
            func2_var2[10] = 75
         elseif func2_var5 >= 3 then
            func2_var2[6] = 15
            func2_var2[7] = 15
            func2_var2[8] = 10
            func2_var2[9] = 10
            func2_var2[10] = 50
         else
            func2_var2[6] = 25
            func2_var2[7] = 20
            func2_var2[8] = 20
            func2_var2[9] = 0
            func2_var2[10] = 35
         end
      elseif func2_var6 <= func2_var5 then
         func2_var2[4] = 100
      elseif func2_var7 <= func2_var5 then
         func2_var2[4] = 70
         func2_var2[6] = 5
         func2_var2[7] = 5
         func2_var2[8] = 5
         func2_var2[9] = 15
      else
         func2_var2[6] = 40
         func2_var2[7] = 30
         func2_var2[8] = 30
         func2_var2[9] = 0
      end
   elseif func2_var8 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var5 >= 12 then
         func2_var2[1] = 25
         func2_var2[2] = 0
         func2_var2[10] = 75
      elseif func2_var5 >= 4.5 then
         func2_var2[1] = 15
         func2_var2[2] = 10
         func2_var2[10] = 75
      elseif func2_var5 >= 3 then
         func2_var2[1] = 20
         func2_var2[2] = 10
         func2_var2[5] = 20
         func2_var2[10] = 50
      else
         func2_var2[5] = 65
         func2_var2[10] = 35
      end
   elseif func2_var5 >= 12 then
      func2_var2[1] = 100
   elseif func2_var5 >= 5 then
      func2_var2[1] = 70
      func2_var2[2] = 30
   elseif func2_var5 >= 3 then
      func2_var2[1] = 30
      func2_var2[2] = 40
      func2_var2[5] = 30
   else
      func2_var2[5] = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, HusiHeavy_Bow255002_Act10)
   local func2_var9 = {0, 60, 0, 0, 0, 20, 20}
   local func2_var10 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func2_var9)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var10, func2_var4)
end

HusiHeavy_Bow255002_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   if func3_var4 <= 50 then
      local func3_var5 = 3000
      local func3_var6 = 3001
      local func3_var7 = ai:GetRandam_Int(1, 3)
      Shoot_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   else
      local func3_var5 = 3002
      local func3_var6 = 3003
      local func3_var7 = ai:GetRandam_Int(1, 3)
      Shoot_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   end
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2), 0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   if func4_var4 <= 50 then
      local func4_var5 = 3000
      local func4_var6 = 3001
      local func4_var7 = ai:GetRandam_Int(1, 3)
      Shoot_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   else
      local func4_var5 = 3002
      local func4_var6 = 3003
      local func4_var7 = ai:GetRandam_Int(1, 3)
      Shoot_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   end
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2), 0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   if func5_var4 <= 50 then
      local func5_var5 = 3000
      local func5_var6 = 3001
      local func5_var7 = ai:GetRandam_Int(1, 3)
      Shoot_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   else
      local func5_var5 = 3002
      local func5_var6 = 3003
      local func5_var7 = ai:GetRandam_Int(1, 3)
      Shoot_Act(ai, goal, func5_var5, func5_var6, func5_var7)
   end
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2), 0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_SELF, DIST_Middle, 0)
   if func6_var4 <= 50 then
      local func6_var5 = 3000
      local func6_var6 = 3001
      local func6_var7 = ai:GetRandam_Int(2, 5)
      Shoot_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   else
      local func6_var5 = 3002
      local func6_var6 = 3003
      local func6_var7 = ai:GetRandam_Int(2, 5)
      Shoot_Act(ai, goal, func6_var5, func6_var6, func6_var7)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act05 = function(ai, goal, func7_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_SELF, DIST_None)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = localScriptConfigVar1
   local func8_var4 = localScriptConfigVar1 + 2
   local func8_var5 = 0
   local func8_var6 = ai:GetDist(TARGET_ENE_0)
   local func8_var7 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func8_var3, func8_var4, func8_var5)
   if func8_var7 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func8_var7 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func8_var7 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func8_var7 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = localScriptConfigVar3
   local func9_var4 = localScriptConfigVar3 + 2
   local func9_var5 = 0
   Approach_Act(ai, goal, func9_var3, func9_var4, func9_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = localScriptConfigVar5
   local func10_var4 = localScriptConfigVar5 + 2
   local func10_var5 = 0
   Approach_Act(ai, goal, func10_var3, func10_var4, func10_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = localScriptConfigVar7
   local func11_var4 = localScriptConfigVar7 + 2
   local func11_var5 = 0
   Approach_Act(ai, goal, func11_var3, func11_var4, func11_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetRandam_Int(1, 100)
   if func12_var3 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HusiHeavy_Bow255002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Bow255002Battle_Terminate = function(ai, goal)
end

HusiHeavy_Bow255002Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func15_var2 = ai:GetRandam_Int(1, 100)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:HasSpecialEffectId(TARGET_SELF, 5401) == false and ai:IsFinishTimer(0) == true and ai:HasSpecialEffectId(TARGET_SELF, 5401) == false then
      ai:SetTimer(0, 5)
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_SELF, DIST_None)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      if func15_var2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      end
      return true
   end
   local func15_var6 = 3
   local func15_var7 = 10
   local func15_var8 = 50
   local func15_var9 = 25
   local func15_var10 = 25
   if FindAttack_Step(ai, goal, func15_var6, func15_var7, func15_var8, func15_var9, func15_var10) then
      return true
   end
   local func15_var11 = 3
   local func15_var12 = 10
   local func15_var13 = 50
   local func15_var14 = 25
   local func15_var15 = 25
   local func15_var16 = 4
   if Damaged_Step(ai, goal, func15_var11, func15_var12, func15_var13, func15_var14, func15_var15, func15_var16) then
      return true
   end
   return false
end


