local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2.5
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 2
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 2
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 100
OnIf_411000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      Go_HawkEye411000_ActAfter_RealTime(ai, goal)
   end
end

Go_HawkEye411000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = ai:GetRandam_Int(1, 100)
   local func2_var10 = ai:GetEventRequest(0)
   if func2_var10 == 10 then
      func2_var2[10] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
      if func2_var5 <= 1 then
         func2_var2[7] = 100
      else
         func2_var2[5] = 0
         func2_var2[6] = 0
         func2_var2[7] = 0
         func2_var2[8] = 0
         func2_var2[9] = 0
         if ai:GetNumber(0) == 1 then
            func2_var2[1] = 0
            func2_var2[2] = 50
            func2_var2[3] = 0
            func2_var2[4] = 50
         else
            func2_var2[1] = 50
            func2_var2[2] = 0
            func2_var2[3] = 50
            func2_var2[4] = 0
         end
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
         func2_var2[1] = 33
         func2_var2[2] = 0
         func2_var2[3] = 33
         func2_var2[4] = 0
         func2_var2[5] = 34
         func2_var2[6] = 0
         func2_var2[7] = 0
         func2_var2[8] = 0
         func2_var2[9] = 0
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
         func2_var2[1] = 0
         func2_var2[2] = 33
         func2_var2[3] = 0
         func2_var2[4] = 33
         func2_var2[5] = 0
         func2_var2[6] = 34
         func2_var2[7] = 0
         func2_var2[8] = 0
         func2_var2[9] = 0
      elseif func2_var5 <= 1 then
         func2_var2[8] = 100
      else
         func2_var2[3] = 0
         func2_var2[4] = 0
         func2_var2[7] = 0
         func2_var2[8] = 0
         func2_var2[9] = 0
         if ai:GetNumber(0) == 1 then
            func2_var2[1] = 0
            func2_var2[2] = 50
            func2_var2[5] = 0
            func2_var2[6] = 50
         else
            func2_var2[1] = 50
            func2_var2[2] = 0
            func2_var2[5] = 50
            func2_var2[6] = 0
         end
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      func2_var3[1] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act01)
      func2_var3[2] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act02)
      func2_var3[3] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act03)
      func2_var3[4] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act04)
      func2_var3[5] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act05)
      func2_var3[6] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act06)
      func2_var3[7] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act07)
      func2_var3[8] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act08)
      func2_var3[9] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act09)
      func2_var3[10] = REGIST_FUNC(ai, goal, Go_HawkEye411000_Act10)
      local func2_var11 = REGIST_FUNC(ai, goal, Go_HawkEye411000_ActAfter_AdjustSpace)
      Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var11, func2_var4)
end

Go_HawkEye411000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = 0
   local func3_var7 = ai:GetRandam_Int(1, 100)
   if func3_var4 <= func3_var3 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6, 3)
   end
   if func3_var7 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 2, 45)
      ai:SetNumber(0, 1)
   elseif func3_var7 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   elseif func3_var7 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar3
   local func4_var5 = localScriptConfigVar3
   local func4_var6 = 0
   local func4_var7 = ai:GetRandam_Int(1, 100)
   if func4_var4 <= func4_var3 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6, 3)
   end
   if func4_var7 <= 33 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 2, 45)
      ai:SetNumber(0, 0)
   elseif func4_var7 <= 66 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar5
   local func5_var5 = localScriptConfigVar5
   local func5_var6 = 0
   local func5_var7 = ai:GetRandam_Int(1, 100)
   if func5_var4 <= func5_var3 then
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6, 3)
   end
   if func5_var7 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 2, 45)
      ai:SetNumber(0, 1)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(0, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar7
   local func6_var5 = localScriptConfigVar7
   local func6_var6 = 0
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 2, 45)
   ai:SetNumber(0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = localScriptConfigVar9
   local func7_var4 = localScriptConfigVar9
   local func7_var5 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 0, 360)
   ai:SetNumber(0, 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = localScriptConfigVar11
   local func8_var4 = localScriptConfigVar11
   local func8_var5 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, 360)
   ai:SetNumber(0, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = localScriptConfigVar13
   local func9_var5 = localScriptConfigVar13
   local func9_var6 = 0
   if func9_var4 <= func9_var3 then
      Approach_Act(ai, goal, func9_var4, func9_var5, func9_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, 360)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = localScriptConfigVar15
   local func10_var5 = localScriptConfigVar15
   local func10_var6 = 0
   if func10_var4 <= func10_var3 then
      Approach_Act(ai, goal, func10_var4, func10_var5, func10_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, 360)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act09 = function(ai, goal, func11_param2)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_Middle, 0, 360)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Go_HawkEye411000_Act10 = function(ai, goal, func12_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 0, TARGET_NONE, false, -1)
end

Go_HawkEye411000_ActAfter_AdjustSpace = function(ai, goal, func13_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

Go_HawkEye411000_ActAfter_RealTime = function(ai, goal)
end

Go_HawkEye411000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Go_HawkEye411000Battle_Terminate = function(ai, goal)
end

Go_HawkEye411000Battle_Interupt = function(ai, goal)
   return false
end


