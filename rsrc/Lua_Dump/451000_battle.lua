local localScriptConfigVar0 = 6
local localScriptConfigVar1 = 32
local localScriptConfigVar2 = 6
local localScriptConfigVar3 = 16
local localScriptConfigVar4 = -2
local localScriptConfigVar5 = 0
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 4
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 4
local localScriptConfigVar14 = -4
local localScriptConfigVar15 = 0
local localScriptConfigVar16 = -4
local localScriptConfigVar17 = 0
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 5
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 4
local localScriptConfigVar22 = 0
local localScriptConfigVar23 = 4
local localScriptConfigVar24 = 0
local localScriptConfigVar25 = 16
local localScriptConfigVar26 = 0
local localScriptConfigVar27 = 0
local localScriptConfigVar28 = 0
local localScriptConfigVar29 = 0
local localScriptConfigVar30 = 0
local localScriptConfigVar31 = 0
local localScriptConfigVar32 = 0
local localScriptConfigVar33 = 20
local localScriptConfigVar34 = 0
local localScriptConfigVar35 = 0
OnIf_451000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      BlackDragon451000_ActAfter(ai, goal)
   end
   if func1_param2 == 1 then
      BlackDragon451000_Turn(ai, goal)
   end
end

BlackDragon451000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetHpRate(TARGET_SELF)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = ai:GetEventRequest(1)
   local func2_var10 = 0
   local func2_var11 = ai:GetPartsDmg(func2_var10)
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1212057) then
      func2_var2[18] = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1212059) then
      func2_var2[19] = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1212058) then
      func2_var2[18] = 100
   elseif not ai:IsRideLargeSpaceFlag(TARGET_ENE_0) then
      if func2_var6 >= 4 then
         func2_var2[1] = 50
         func2_var2[2] = 50
      else
         func2_var2[4] = 33
         func2_var2[5] = 33
         func2_var2[10] = 34
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
      func2_var2[17] = 100
   elseif func2_var6 >= 12 then
      func2_var2[1] = 20
      func2_var2[2] = 10
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 30
      func2_var2[6] = 0
      func2_var2[7] = 0
      func2_var2[8] = 0
      func2_var2[9] = 0
      func2_var2[10] = 0
      func2_var2[11] = 0
      func2_var2[12] = 0
      func2_var2[13] = 20
      func2_var2[14] = 0
      func2_var2[15] = 0
      func2_var2[16] = 0
      func2_var2[20] = 20
      if ai:GetNumber(0) >= 1 then
         func2_var2[1] = 0
         func2_var2[20] = 40
      elseif func2_var6 >= 6 then
         func2_var2[1] = 20
         func2_var2[2] = 30
         func2_var2[3] = 0
         func2_var2[4] = 20
         func2_var2[5] = 20
         func2_var2[6] = 0
         func2_var2[7] = 0
         func2_var2[8] = 0
         func2_var2[9] = 0
         func2_var2[10] = 0
         func2_var2[11] = 0
         func2_var2[12] = 0
         func2_var2[13] = 10
         func2_var2[14] = 0
         func2_var2[15] = 0
         func2_var2[16] = 0
         if ai:GetNumber(0) >= 1 then
            func2_var2[1] = 0
            func2_var2[2] = 0
            func2_var2[4] = 0
         elseif func2_var6 >= 4 then
            func2_var2[1] = 0
            func2_var2[2] = 0
            func2_var2[3] = 100
            func2_var2[4] = 30
            func2_var2[5] = 50
            func2_var2[6] = 0
            func2_var2[7] = 0
            func2_var2[8] = 0
            func2_var2[9] = 0
            func2_var2[10] = 0
            func2_var2[11] = 0
            func2_var2[12] = 0
            func2_var2[13] = 20
            func2_var2[14] = 0
            func2_var2[15] = 0
            func2_var2[16] = 0
         elseif func2_var6 >= 2 then
            func2_var2[1] = 0
            func2_var2[2] = 0
            func2_var2[3] = 100
            func2_var2[4] = 20
            func2_var2[5] = 40
            func2_var2[6] = 0
            func2_var2[7] = 0
            func2_var2[8] = 0
            func2_var2[9] = 0
            func2_var2[10] = 25
            func2_var2[11] = 15
            func2_var2[12] = 0
            func2_var2[13] = 0
            func2_var2[14] = 0
            func2_var2[15] = 0
            func2_var2[16] = 100
         elseif func2_var6 >= 0 then
            func2_var2[1] = 0
            func2_var2[2] = 0
            func2_var2[3] = 100
            func2_var2[4] = 0
            func2_var2[5] = 50
            func2_var2[6] = 0
            func2_var2[7] = 0
            func2_var2[8] = 0
            func2_var2[9] = 0
            func2_var2[10] = 25
            func2_var2[11] = 35
            func2_var2[12] = 0
            func2_var2[13] = 0
            func2_var2[14] = 0
            func2_var2[15] = 0
            func2_var2[16] = 100
         elseif func2_var6 >= -4 then
            func2_var2[1] = 0
            func2_var2[2] = 0
            func2_var2[3] = 0
            func2_var2[4] = 0
            func2_var2[5] = 0
            func2_var2[6] = 0
            func2_var2[7] = 0
            func2_var2[8] = 30
            func2_var2[9] = 30
            func2_var2[10] = 0
            func2_var2[11] = 40
            func2_var2[12] = 0
            func2_var2[13] = 0
            func2_var2[14] = 0
            func2_var2[15] = 0
            func2_var2[16] = 100
            if ai:GetNumber(1) >= 2 then
               func2_var2[8] = 0
               func2_var2[9] = 0
            else
               func2_var2[1] = 0
               func2_var2[2] = 0
               func2_var2[3] = 0
               func2_var2[4] = 0
               func2_var2[5] = 0
               func2_var2[6] = 0
               func2_var2[7] = 0
               func2_var2[8] = 0
               func2_var2[9] = 0
               func2_var2[10] = 0
               func2_var2[11] = 60
               func2_var2[12] = 0
               func2_var2[13] = 0
               func2_var2[14] = 20
               func2_var2[15] = 20
               func2_var2[16] = 100
            end
            -- Tried to add an 'end' here but it's incorrect
         end
      end
      -- Tried to add an 'end' here but it's incorrect
      if ai:IsFinishTimer(0) == false then
         func2_var2[3] = 0
      end
      if ai:IsFinishTimer(1) == false then
         func2_var2[14] = 0
      end
      if ai:IsFinishTimer(2) == false then
         func2_var2[16] = 0
      end
      func2_var3[1] = REGIST_FUNC(ai, goal, BlackDragon451000_Act01)
      func2_var3[2] = REGIST_FUNC(ai, goal, BlackDragon451000_Act02)
      func2_var3[3] = REGIST_FUNC(ai, goal, BlackDragon451000_Act03)
      func2_var3[4] = REGIST_FUNC(ai, goal, BlackDragon451000_Act04)
      func2_var3[5] = REGIST_FUNC(ai, goal, BlackDragon451000_Act05)
      func2_var3[6] = REGIST_FUNC(ai, goal, BlackDragon451000_Act06)
      func2_var3[7] = REGIST_FUNC(ai, goal, BlackDragon451000_Act07)
      func2_var3[8] = REGIST_FUNC(ai, goal, BlackDragon451000_Act08)
      func2_var3[9] = REGIST_FUNC(ai, goal, BlackDragon451000_Act09)
      func2_var3[10] = REGIST_FUNC(ai, goal, BlackDragon451000_Act10)
      func2_var3[11] = REGIST_FUNC(ai, goal, BlackDragon451000_Act11)
      func2_var3[12] = REGIST_FUNC(ai, goal, BlackDragon451000_Act12)
      func2_var3[13] = REGIST_FUNC(ai, goal, BlackDragon451000_Act13)
      func2_var3[14] = REGIST_FUNC(ai, goal, BlackDragon451000_Act14)
      func2_var3[15] = REGIST_FUNC(ai, goal, BlackDragon451000_Act15)
      func2_var3[16] = REGIST_FUNC(ai, goal, BlackDragon451000_Act16)
      func2_var3[17] = REGIST_FUNC(ai, goal, BlackDragon451000_Act17)
      func2_var3[18] = REGIST_FUNC(ai, goal, BlackDragon451000_Act18)
      func2_var3[19] = REGIST_FUNC(ai, goal, BlackDragon451000_Act19)
      func2_var3[20] = REGIST_FUNC(ai, goal, BlackDragon451000_Act20)
      local func2_var12 = REGIST_FUNC(ai, goal, BlackDragon451000_ActAfter_AdjustSpace)
      Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var12, func2_var4)
end

BlackDragon451000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar1 - 1
   local func3_var5 = localScriptConfigVar1 + 2
   local func3_var6 = localScriptConfigVar1
   local func3_var7 = 0
   local func3_var8 = ai:GetRandam_Int(1, 100)
   if func3_var4 <= func3_var3 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var6, 0, 45)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar3 - 1
   local func4_var5 = localScriptConfigVar3 + 2
   local func4_var6 = localScriptConfigVar3
   local func4_var7 = 0
   local func4_var8 = ai:GetRandam_Int(1, 100)
   if func4_var4 <= func4_var3 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, func4_var6, 0, 45)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar5 - 1
   local func5_var5 = localScriptConfigVar5 + 2
   local func5_var6 = localScriptConfigVar5
   local func5_var7 = 0
   local func5_var8 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(0, 60)
   if func5_var4 <= func5_var3 then
      Approach_Act(ai, goal, func5_var4, func5_var5, func5_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var6, 0, 45)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar7 - 0
   local func6_var5 = localScriptConfigVar7 + 2
   local func6_var6 = localScriptConfigVar7
   local func6_var7 = 0
   local func6_var8 = ai:GetRandam_Int(1, 100)
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, func6_var6, 0, 45)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar9 - 0
   local func7_var5 = localScriptConfigVar9 + 2
   local func7_var6 = localScriptConfigVar9
   local func7_var7 = 0
   local func7_var8 = ai:GetRandam_Int(1, 100)
   if func7_var4 <= func7_var3 then
      Approach_Act(ai, goal, func7_var4, func7_var5, func7_var7, 3)
   end
   if func7_var8 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, func7_var6, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, func7_var6, 0, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, func7_var6, 0)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = localScriptConfigVar11 - 1
   local func8_var5 = localScriptConfigVar11 + 2
   local func8_var6 = localScriptConfigVar11
   local func8_var7 = 0
   local func8_var8 = ai:GetRandam_Int(1, 100)
   local func8_var9 = 0
   local func8_var10 = ai:GetPartsDmg(func8_var9)
   if func8_var10 ~= PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, func8_var6, 0, 180)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, func8_var6, 0, 180)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = localScriptConfigVar13 - 1
   local func9_var5 = localScriptConfigVar13 + 2
   local func9_var6 = localScriptConfigVar13
   local func9_var7 = 0
   local func9_var8 = ai:GetRandam_Int(1, 100)
   local func9_var9 = 0
   local func9_var10 = ai:GetPartsDmg(func9_var9)
   if func9_var10 ~= PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, func9_var6, 0, 180)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, func9_var6, 0, 180)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act08 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = localScriptConfigVar15 - 1
   local func10_var5 = localScriptConfigVar15 + 2
   local func10_var6 = localScriptConfigVar15
   local func10_var7 = 0
   local func10_var8 = ai:GetRandam_Int(1, 100)
   if func10_var4 <= func10_var3 then
      Approach_Act(ai, goal, func10_var4, func10_var5, func10_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, func10_var6, 0, 90)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, ai:GetNumber(0) + 1)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = localScriptConfigVar17 - 1
   local func11_var5 = localScriptConfigVar17 + 2
   local func11_var6 = localScriptConfigVar17
   local func11_var7 = 0
   local func11_var8 = ai:GetRandam_Int(1, 100)
   if func11_var4 <= func11_var3 then
      Approach_Act(ai, goal, func11_var4, func11_var5, func11_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, func11_var6, 0, 90)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, ai:GetNumber(0) + 1)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = localScriptConfigVar19 - 0
   local func12_var5 = localScriptConfigVar19 + 2
   local func12_var6 = localScriptConfigVar19
   local func12_var7 = 0
   local func12_var8 = ai:GetRandam_Int(1, 100)
   local func12_var9 = 0
   local func12_var10 = ai:GetPartsDmg(func12_var9)
   if func12_var10 ~= PARTS_DMG_FINAL then
      if func12_var4 <= func12_var3 then
         Approach_Act(ai, goal, func12_var4, func12_var5, func12_var7, 3)
         -- Tried to add an 'end' here but it's incorrect
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, func12_var6, 0, 180)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
      end
      ai:SetNumber(0, 0)
      ai:SetNumber(1, 0)
      ai:SetNumber(2, 0)
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

BlackDragon451000_Act11 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = localScriptConfigVar21 - 1
   local func13_var5 = localScriptConfigVar21 + 2
   local func13_var6 = localScriptConfigVar21
   local func13_var7 = 0
   local func13_var8 = ai:GetRandam_Int(1, 100)
   if func13_var4 <= func13_var3 then
      Approach_Act(ai, goal, func13_var4, func13_var5, func13_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, func13_var6, 0, 90)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act12 = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = localScriptConfigVar23 - 1
   local func14_var5 = localScriptConfigVar23 + 2
   local func14_var6 = localScriptConfigVar23
   local func14_var7 = 0
   local func14_var8 = ai:GetRandam_Int(1, 100)
   local func14_var9 = 0
   local func14_var10 = ai:GetPartsDmg(func14_var9)
   if func14_var10 ~= PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, func14_var6, 0, 360)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, func14_var6, 0, 360)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, ai:GetNumber(2) + 1)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act13 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = localScriptConfigVar25 - 1
   local func15_var5 = localScriptConfigVar25 + 2
   local func15_var6 = 9999
   local func15_var7 = 0
   local func15_var8 = ai:GetRandam_Int(1, 100)
   if func15_var4 <= func15_var3 then
      Approach_Act(ai, goal, func15_var4, func15_var5, func15_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, func15_var6, 0, 90)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act14 = function(ai, goal, func16_param2)
   local func16_var3 = ai:GetDist(TARGET_ENE_0)
   local func16_var4 = localScriptConfigVar27 - 0
   local func16_var5 = localScriptConfigVar27 + 2
   local func16_var6 = 9999
   local func16_var7 = 0
   local func16_var8 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(1, 60)
   if func16_var4 <= func16_var3 then
      Approach_Act(ai, goal, func16_var4, func16_var5, func16_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, func16_var6, 0, 360)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act15 = function(ai, goal, func17_param2)
   local func17_var3 = ai:GetDist(TARGET_ENE_0)
   local func17_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackDragon451000_Act16 = function(ai, goal, func18_param2)
   local func18_var3 = ai:GetDist(TARGET_ENE_0)
   local func18_var4 = localScriptConfigVar35 - 0
   local func18_var5 = localScriptConfigVar35 + 2
   local func18_var6 = 9999
   local func18_var7 = 0
   local func18_var8 = ai:GetRandam_Int(1, 100)
   ai:SetTimer(2, 60)
   if func18_var4 <= func18_var3 then
      Approach_Act(ai, goal, func18_var4, func18_var5, func18_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, func18_var6, 0, 360)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_Act17 = function(ai, goal, func19_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
end

BlackDragon451000_Turn = function(ai, goal)
   local func20_var2 = ai:GetDist(TARGET_ENE_0)
   local func20_var3 = 0
   local func20_var4 = ai:GetPartsDmg(func20_var3)
   local func20_var5 = ai:GetRandam_Int(1, 100)
   local func20_var6 = ai:GetRandam_Int(1, 100)
   local func20_var7 = ai:GetEventRequest()
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) then
      if func20_var2 >= -2 and func20_var2 <= 6 and func20_var4 ~= PARTS_DMG_FINAL and ai:GetNumber(2) <= 0 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 15) then
         BlackDragon451000_Act12(ai, goal)
      elseif func20_var2 >= 2 and func20_var2 <= 6 and func20_var5 <= 50 then
         BlackDragon451000_Act06(ai, goal)
      elseif func20_var2 >= 2 and func20_var2 <= 6 and func20_var5 <= 100 then
         BlackDragon451000_Act07(ai, goal)
      elseif func20_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3029, TARGET_ENE_0, DIST_None, 0, 90)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3028, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         if func20_var2 >= 0 and func20_var2 <= 4 and func20_var5 <= 75 then
            BlackDragon451000_Act06(ai, goal)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3027, TARGET_ENE_0, DIST_None, 0, 90)
         end
      elseif func20_var2 >= 0 and func20_var2 <= 4 and func20_var5 <= 75 then
         BlackDragon451000_Act07(ai, goal)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3026, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 150) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         if func20_var2 >= 0 and func20_var2 <= 4 and func20_var5 <= 75 then
            BlackDragon451000_Act07(ai, goal)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3027, TARGET_ENE_0, DIST_None, 0, 90)
         end
      elseif func20_var2 >= 0 and func20_var2 <= 4 and func20_var5 <= 75 then
         BlackDragon451000_Act06(ai, goal)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3026, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 210) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         if func20_var2 >= 0 and func20_var2 <= 4 and func20_var5 <= 75 then
            BlackDragon451000_Act07(ai, goal)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3027, TARGET_ENE_0, DIST_None, 0, 90)
         end
      elseif func20_var2 >= 0 and func20_var2 <= 4 and func20_var5 <= 75 then
         BlackDragon451000_Act06(ai, goal)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3026, TARGET_ENE_0, DIST_None, 0, 90)
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3025, TARGET_ENE_0, DIST_None, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3024, TARGET_ENE_0, DIST_None, 0, 90)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

BlackDragon451000_Act18 = function(ai, goal, func21_param2)
   local func21_var3 = ai:GetDist(TARGET_ENE_0)
   local func21_var4 = 9999
   local func21_var5 = 9999
   local func21_var6 = 9999
   local func21_var7 = 0
   local func21_var8 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, func21_var6, 0, 360)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackDragon451000_Act19 = function(ai, goal, func22_param2)
   local func22_var3 = ai:GetDist(TARGET_ENE_0)
   local func22_var4 = 9999
   local func22_var5 = 9999
   local func22_var6 = 9999
   local func22_var7 = 0
   local func22_var8 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 3, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, func22_var6, 0, 360)
   ai:SetNumber(0, ai:GetNumber(0) + 1)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

BlackDragon451000_Act20 = function(ai, goal, func23_param2)
   local func23_var3 = ai:GetDist(TARGET_ENE_0)
   local func23_var4 = localScriptConfigVar33 - 1
   local func23_var5 = localScriptConfigVar33 + 2
   local func23_var6 = 9999
   local func23_var7 = 0
   local func23_var8 = ai:GetRandam_Int(1, 100)
   if func23_var4 <= func23_var3 then
      Approach_Act(ai, goal, func23_var4, func23_var5, func23_var7, 3)
   end
   if func23_var8 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, func23_var6, 0, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, func23_var6, 0, 90)
   end
   ai:SetNumber(0, 0)
   ai:SetNumber(1, 0)
   ai:SetNumber(2, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

BlackDragon451000_ActAfter = function(ai, goal)
   local func24_var2 = ai:GetRandam_Int(1, 100)
   local func24_var3 = ai:GetRandam_Int(1, 100)
   local func24_var4 = ai:GetRandam_Int(0, 1)
   local func24_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 330) then
      BlackDragon451000_Turn(ai, goal)
   elseif func24_var5 <= 2 then
      if func24_var2 <= 50 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func24_var2 <= 100 then
         if func24_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func24_var4, ai:GetRandam_Int(30, 45), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
            do break end
         end
      elseif func24_var5 <= 4 then
         if func24_var2 <= 25 then
            if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
            elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         elseif func24_var2 <= 100 then
            if func24_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func24_var4, ai:GetRandam_Int(45, 60), true, true, -1)
            else
               goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
               do break end
            end
         elseif func24_var5 <= 8 then
            if func24_var2 <= 13 then
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
               elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
            elseif func24_var2 <= 100 then
               if func24_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func24_var4, ai:GetRandam_Int(60, 75), true, true, -1)
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
                  do break end
               end
            elseif func24_var2 <= 0 then
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 7)
               elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
            elseif func24_var2 <= 100 then
               if func24_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func24_var4, ai:GetRandam_Int(75, 90), true, true, -1)
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
               end
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
            -- Tried to add an 'end' here but it's incorrect
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
end

BlackDragon451000_ActAfter_AdjustSpace = function(ai, goal, func25_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 20, 0)
end

BlackDragon451000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

BlackDragon451000Battle_Terminate = function(ai, goal)
end

BlackDragon451000Battle_Interupt = function(ai, goal)
   local func28_var2 = ai:GetRandam_Int(1, 100)
   local func28_var3 = ai:GetRandam_Int(1, 100)
   local func28_var4 = ai:GetRandam_Int(1, 100)
   local func28_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_FindAttack) then
      if func28_var2 <= 80 then
         if func28_var5 >= 0 and func28_var5 <= 6 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            goal:ClearSubGoal()
            if func28_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3004, TARGET_ENE_0, DIST_None, 0, 45)
            end
            return true
         else
            return false
         end
      else
         return false
      end
      -- Tried to add an 'end' here but it's incorrect
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      if func28_var2 <= 80 then
         if func28_var5 <= 4 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            goal:ClearSubGoal()
            if func28_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3003, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3004, TARGET_ENE_0, DIST_None, 0, 45)
            end
            return true
         elseif func28_var5 <= 12 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            goal:ClearSubGoal()
            if func28_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3001, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:ClearSubGoal()
               if func28_var4 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
               end
            end
            return true
         elseif func28_var5 <= 20 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
            goal:ClearSubGoal()
            if func28_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3000, TARGET_ENE_0, DIST_None, 0, 45)
            else
               goal:ClearSubGoal()
               if func28_var4 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
               end
            end
            return true
         else
            return false
         end
      else
         return false
      end
      -- Tried to add an 'end' here but it's incorrect
   end
   return false
end


