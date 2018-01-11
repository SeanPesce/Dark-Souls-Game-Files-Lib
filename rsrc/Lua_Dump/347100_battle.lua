local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 4.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 5.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.5
local localScriptConfigVar8 = 2
local localScriptConfigVar9 = 5
local localScriptConfigVar10 = 8.5
local localScriptConfigVar11 = 10.5
local localScriptConfigVar12 = 8.5
local localScriptConfigVar13 = 10.5
local localScriptConfigVar14 = 7.5
local localScriptConfigVar15 = 8.5
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 8.5
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 4.5
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 1
local localScriptConfigVar22 = 10.5
local localScriptConfigVar23 = 14.5
local localScriptConfigVar24 = 13.5
local localScriptConfigVar25 = 16.5
local localScriptConfigVar26 = 2.5
local localScriptConfigVar27 = 12.5
OnIf_347100 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      GoldenChimera347100_ActAfter_RealTime(ai, goal)
   end
   if func1_param2 == 1 then
      GoldenChimera347100_FlyingDecision01(ai, goal)
   end
   if func1_param2 == 2 then
      GoldenChimera347100_FlyingDecision02(ai, goal)
   end
   if func1_param2 == 3 then
      GoldenChimera347100_FlyingDecision03(ai, goal)
   end
   if func1_param2 == 4 then
      GoldenChimera347100_BackStepDecision01(ai, goal)
   end
   if func1_param2 == 5 then
      GoldenChimera347100_ChargeDecision01(ai, goal)
   end
end

GoldenChimera347100Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetDist(TARGET_ENE_0)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = ai:GetRandam_Int(1, 100)
   local func2_var10 = 0
   local func2_var11 = ai:GetPartsDmg(func2_var10)
   local func2_var12 = 1
   if ai:IsFinishTimer(0) == false then
      func2_var12 = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and func2_var5 <= 5 then
         func2_var2[8] = 100
      else
         func2_var2[16] = 100
      end
   elseif ai:GetNumber(0) == 1 then
      func2_var2[15] = 100
   elseif ai:GetNumber(3) == 1 then
      func2_var2[14] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) and func2_var5 <= 3 then
      func2_var2[2] = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 150) and func2_var5 <= 3 then
      func2_var2[3] = 100
   elseif func2_var5 >= 20 then
      func2_var2[2] = 5
      func2_var2[3] = 5
      func2_var2[5] = 0
      func2_var2[6] = 15
      func2_var2[7] = 15
      func2_var2[9] = 0
      func2_var2[10] = 10
      func2_var2[12] = 20
      func2_var2[13] = 15
      func2_var2[14] = 15
      func2_var2[17] = 0
   elseif func2_var5 >= 15 then
      func2_var2[2] = 10
      func2_var2[3] = 10
      func2_var2[5] = 0
      func2_var2[6] = 15
      func2_var2[7] = 15
      func2_var2[9] = 0
      func2_var2[10] = 10
      func2_var2[12] = 10
      func2_var2[13] = 10
      func2_var2[14] = 20
      func2_var2[17] = 0
   elseif func2_var5 >= 10 then
      func2_var2[2] = 10
      func2_var2[3] = 10
      func2_var2[5] = 0
      func2_var2[6] = 10
      func2_var2[7] = 10
      func2_var2[9] = 15
      func2_var2[10] = 15
      func2_var2[12] = 10
      func2_var2[13] = 10
      func2_var2[14] = 10
      func2_var2[17] = 0
   elseif func2_var5 >= 7 then
      func2_var2[2] = 5
      func2_var2[3] = 5
      func2_var2[5] = 35 * func2_var12
      func2_var2[6] = 0
      func2_var2[7] = 0
      func2_var2[9] = 25
      func2_var2[10] = 20
      func2_var2[12] = 0
      func2_var2[13] = 5
      func2_var2[14] = 5
      func2_var2[17] = 0
   elseif func2_var5 >= 4 then
      func2_var2[2] = 20
      func2_var2[3] = 20
      func2_var2[5] = 40 * func2_var12
      func2_var2[6] = 0
      func2_var2[7] = 0
      func2_var2[9] = 0
      func2_var2[10] = 0
      func2_var2[12] = 0
      func2_var2[13] = 5
      func2_var2[14] = 5
      func2_var2[17] = 10
   else
      func2_var2[2] = 33
      func2_var2[3] = 33
      func2_var2[5] = 0
      func2_var2[6] = 0
      func2_var2[7] = 0
      func2_var2[9] = 0
      func2_var2[10] = 0
      func2_var2[12] = 0
      func2_var2[13] = 0
      func2_var2[14] = 0
      func2_var2[17] = 34
   end
   -- Tried to add an 'end' here but it's incorrect
   func2_var3[1] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act03)
   func2_var3[5] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act05)
   func2_var3[6] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act06)
   func2_var3[7] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act07)
   func2_var3[8] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act08)
   func2_var3[9] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act09)
   func2_var3[10] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act10)
   func2_var3[12] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act12)
   func2_var3[13] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act13)
   func2_var3[14] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act14)
   func2_var3[15] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act15)
   func2_var3[16] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act16)
   func2_var3[17] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act17)
   func2_var3[18] = REGIST_FUNC(ai, goal, GoldenChimera347100_Act18)
   local func2_var13 = REGIST_FUNC(ai, goal, GoldenChimera347100_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var13, func2_var4)
end

GoldenChimera347100_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 50)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   local func4_var6 = localScriptConfigVar1 - 1
   local func4_var7 = localScriptConfigVar1
   local func4_var8 = 0
   Approach_Act(ai, goal, func4_var6, func4_var7, func4_var8, 3)
   if func4_var4 <= 0 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      if func4_var5 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 20)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 40)
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   local func5_var6 = localScriptConfigVar1 - 1
   local func5_var7 = localScriptConfigVar1
   local func5_var8 = 0
   Approach_Act(ai, goal, func5_var6, func5_var7, func5_var8, 3)
   if func5_var4 <= 0 then
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, DIST_Middle, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
      if func5_var5 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 20)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 40)
      end
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = localScriptConfigVar9
   local func6_var4 = localScriptConfigVar9
   local func6_var5 = 0
   Approach_Act(ai, goal, func6_var3, func6_var4, func6_var5, 3)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
   ai:SetNumber(0, 1)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   ai:SetTimer(0, 30)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GoldenChimera347100_Act06 = function(ai, goal, func7_param2)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act07 = function(ai, goal, func8_param2)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, DIST_None, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_Act08 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = 0
   local func9_var5 = ai:GetPartsDmg(func9_var4)
   local func9_var6 = ai:GetRandam_Int(1, 100)
   if func9_var5 ~= PARTS_DMG_FINAL then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and func9_var3 <= 5 and func9_var6 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) and func9_var3 <= 5 and func9_var6 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and func9_var3 <= 3 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      else
         GoldenChimera347100_Act16(ai, goal)
      end
   else
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and func9_var3 <= 2 and func9_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3024, TARGET_NONE, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 30) and func9_var3 <= 3 and func9_var6 <= 100 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
         ai:SetNumber(1, ai:GetNumber(1) + 50)
      else
         GoldenChimera347100_Act16(ai, goal)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      GetWellSpace_Odds = 100
      return GetWellSpace_Odds
end

GoldenChimera347100_Act09 = function(ai, goal, func10_param2)
   local func10_var3 = localScriptConfigVar15
   local func10_var4 = localScriptConfigVar15
   local func10_var5 = 0
   Approach_Act(ai, goal, func10_var3, func10_var4, func10_var5, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 4)
end

GoldenChimera347100_Act10 = function(ai, goal, func11_param2)
   local func11_var3 = localScriptConfigVar17
   local func11_var4 = localScriptConfigVar17
   local func11_var5 = 0
   Approach_Act(ai, goal, func11_var3, func11_var4, func11_var5, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 5)
end

GoldenChimera347100_Act12 = function(ai, goal, func12_param2)
   local func12_var3 = localScriptConfigVar23
   local func12_var4 = localScriptConfigVar23
   local func12_var5 = 0
   Approach_Act(ai, goal, func12_var3, func12_var4, func12_var5, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
end

GoldenChimera347100_Act13 = function(ai, goal, func13_param2)
   local func13_var3 = localScriptConfigVar25
   local func13_var4 = localScriptConfigVar25
   local func13_var5 = 0
   Approach_Act(ai, goal, func13_var3, func13_var4, func13_var5, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 2)
end

GoldenChimera347100_Act14 = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = localScriptConfigVar27
   local func14_var5 = localScriptConfigVar27
   local func14_var6 = 0
   Approach_Act(ai, goal, func14_var4, func14_var5, func14_var6, 3)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 3)
end

GoldenChimera347100_Act15 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   if ai:HasSpecialEffectId(TARGET_ENE_0, 5521) then
      if func15_var3 <= 8 then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 10, 1212000) then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, 0, 0)
            GetWellSpace_Odds = 100
            ai:SetNumber(1, ai:GetNumber(1) + 40)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, 0)
            GetWellSpace_Odds = 100
            ai:SetNumber(1, ai:GetNumber(1) + 0)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, 0)
         GetWellSpace_Odds = 100
         ai:SetNumber(1, ai:GetNumber(1) + 0)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
      GetWellSpace_Odds = 0
      ai:SetNumber(1, ai:GetNumber(1) + 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   ai:SetNumber(0, 0)
   return GetWellSpace_Odds
end

GoldenChimera347100_Act16 = function(ai, goal, func16_param2)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   end
   ai:SetNumber(1, ai:GetNumber(1) + 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

GoldenChimera347100_Act17 = function(ai, goal, func17_param2)
   local func17_var3 = localScriptConfigVar21
   local func17_var4 = localScriptConfigVar21
   local func17_var5 = 0
   Approach_Act(ai, goal, func17_var3, func17_var4, func17_var5, 3)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_Middle, 0, 30, 0, 0)
   ai:SetNumber(1, ai:GetNumber(1) + 20)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

GoldenChimera347100_ActAfter_AdjustSpace = function(ai, goal, func18_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

GoldenChimera347100_ActAfter_RealTime = function(ai, goal)
   local func19_var2 = ai:GetRandam_Int(1, 100)
   if ai:GetNumber(2) >= 20 then
      local func19_var3 = 0
      local func19_var4 = 0
      local func19_var5 = 0
      local func19_var6 = 0
      local func19_var7 = 0
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 20, 1212000) then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
            if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
               func19_var3 = 1
               func19_var4 = 1
            else
               func19_var3 = 1
            end
         elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
            func19_var4 = 1
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 25, 1212000) then
         func19_var5 = 1
      end
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 10, 1212000) and ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
         func19_var7 = 1
      end
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 10, 1212000) and ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
         func19_var6 = 1
      end
      if func19_var3 == 1 then
         if func19_var4 == 1 then
            if func19_var5 == 1 then
               if func19_var2 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                  ai:SetNumber(3, 1)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
                  if func19_var2 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                     ai:SetNumber(3, 1)
                  end
               elseif func19_var5 == 1 then
                  if func19_var2 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                     ai:SetNumber(3, 1)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
                     if func19_var2 <= 50 then
                        goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                     else
                        goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                        ai:SetNumber(3, 1)
                     end
                  elseif func19_var4 == 1 then
                     if func19_var5 == 1 then
                        if func19_var2 <= 50 then
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                           ai:SetNumber(3, 1)
                        else
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
                           if func19_var2 <= 50 then
                              goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                           else
                              goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
                              ai:SetNumber(3, 1)
                           end
                        elseif func19_var5 == 1 then
                           goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 20)
                           if func19_var2 <= 50 then
                              goal:AddSubGoal(GOAL_COMMON_SidewayMove, 10, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
                           elseif func19_var7 == 1 then
                              if func19_var6 == 1 then
                                 if func19_var2 <= 50 then
                                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
                                 else
                                    goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
                                 end
                              else
                                 goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
                              end
                           elseif func19_var6 == 1 then
                              goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 10)
                           -- Tried to add an 'end' here but it's incorrect
                           -- Tried to add an 'end' here but it's incorrect
                           -- Tried to add an 'end' here but it's incorrect
                           -- Tried to add an 'end' here but it's incorrect
                           -- Tried to add an 'end' here but it's incorrect
                        end
                     end
                     -- Tried to add an 'end' here but it's incorrect
                  end
                  -- Tried to add an 'end' here but it's incorrect
                  -- Tried to add an 'end' here but it's incorrect
               end
               ai:SetNumber(2, 0)
            elseif ai:GetNumber(1) >= 40 then
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               elseif func19_var2 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               end
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 20, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               if func19_var2 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
               end
               ai:SetNumber(1, 0)
               ai:SetNumber(2, ai:GetNumber(2) + 10)
            else
            end
end

GoldenChimera347100_FlyingDecision01 = function(ai, goal)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

GoldenChimera347100_FlyingDecision02 = function(ai, goal)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
      ai:SetNumber(1, ai:GetNumber(1) + 10)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

GoldenChimera347100_FlyingDecision03 = function(ai, goal)
   local func22_var2 = ai:GetDist(TARGET_ENE_0)
   local func22_var3 = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 20, 1212000) then
      if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 10, 1212000) then
         if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
            if func22_var3 <= 50 then
               if func22_var2 <= 8 then
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 0)
               else
                  goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
               end
            elseif func22_var2 <= 8 then
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
            end
         elseif func22_var2 <= 8 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 0)
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         ai:SetNumber(1, 0)
         GetWellSpace_Odds = 100
      elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 10, 1212000) then
         if func22_var2 <= 8 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 0)
         end
         ai:SetNumber(1, 0)
         GetWellSpace_Odds = 100
      else
         goal:ClearSubGoal()
         GetWellSpace_Odds = 0
      end
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      ai:SetNumber(3, 0)
      return GetWellSpace_Odds
end

GoldenChimera347100_BackStepDecision01 = function(ai, goal)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 25, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 0, 0)
      ai:SetNumber(1, 0)
      GetWellSpace_Odds = 100
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   return GetWellSpace_Odds
end

GoldenChimera347100_ChargeDecision01 = function(ai, goal)
   local func24_var2 = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 15, 1212000) then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_Middle, 0, 0)
      if func24_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         ai:SetNumber(1, 0)
         GetWellSpace_Odds = 0
      else
         ai:SetNumber(1, ai:GetNumber(1) + 20)
         GetWellSpace_Odds = 100
      end
   else
      goal:ClearSubGoal()
      GetWellSpace_Odds = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   return GetWellSpace_Odds
end

GoldenChimera347100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

GoldenChimera347100Battle_Terminate = function(ai, goal)
end

GoldenChimera347100Battle_Interupt = function(ai, goal)
   if ai:GetNumber(0) == 0 then
      local func27_var2 = ai:GetRandam_Int(1, 100)
      local func27_var3 = ai:GetRandam_Int(1, 100)
      local func27_var4 = ai:GetRandam_Int(1, 100)
      local func27_var5 = ai:GetDist(TARGET_ENE_0)
      if ai:IsInterupt(INTERUPT_GuardBreak) then
         if func27_var2 <= 50 then
            if func27_var5 <= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
               local func27_var6 = localScriptConfigVar21
               local func27_var7 = 0
               local func27_var8 = 0
               goal:ClearSubGoal()
               Approach_Act(ai, goal, func27_var6, func27_var7, func27_var8, 3)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3014, TARGET_ENE_0, DIST_None, 0)
               return true
            elseif func27_var5 <= 8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
               return true
            else
               return false
            end
         else
            return false
         end
         -- Tried to add an 'end' here but it's incorrect
      end
      if ai:IsInterupt(INTERUPT_UseItem) then
         if func27_var2 <= 50 then
            if func27_var5 <= 2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
               local func27_var6 = localScriptConfigVar21
               local func27_var7 = 0
               local func27_var8 = 0
               goal:ClearSubGoal()
               Approach_Act(ai, goal, func27_var6, func27_var7, func27_var8, 3)
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3014, TARGET_ENE_0, DIST_None, 0)
               return true
            elseif func27_var5 <= 8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
               return true
            elseif func27_var5 <= 13 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
               goal:ClearSubGoal()
               if func27_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3007, TARGET_ENE_0, DIST_None, 0)
               else
                  local func27_var6 = localScriptConfigVar17
                  local func27_var7 = localScriptConfigVar17 + 2
                  local func27_var8 = 0
                  Approach_Act(ai, goal, func27_var6, func27_var7, func27_var8, 3)
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
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
         if func27_var2 <= 80 then
            if func27_var5 <= 8 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
               goal:ClearSubGoal()
               goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
               return true
            elseif func27_var5 <= 13 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
               goal:ClearSubGoal()
               if func27_var3 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3007, TARGET_ENE_0, DIST_None, 0)
               elseif func27_var3 <= 75 then
                  local func27_var6 = localScriptConfigVar17
                  local func27_var7 = localScriptConfigVar17 + 2
                  local func27_var8 = 0
                  Approach_Act(ai, goal, func27_var6, func27_var7, func27_var8, 3)
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, DIST_None, 0)
               else
                  goal:ClearSubGoal()
                  if func27_var4 <= 50 then
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
                  end
               end
               return true
            elseif func27_var5 <= 20 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
               goal:ClearSubGoal()
               if func27_var3 <= 50 then
                  local func27_var6 = localScriptConfigVar23
                  local func27_var7 = 0
                  local func27_var8 = 0
                  Approach_Act(ai, goal, func27_var6, func27_var7, func27_var8, 3)
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3020, TARGET_ENE_0, DIST_None, 0)
               elseif func27_var3 <= 75 then
                  local func27_var6 = localScriptConfigVar17
                  local func27_var7 = 0
                  local func27_var8 = 0
                  Approach_Act(ai, goal, func27_var6, func27_var7, func27_var8, 3)
                  goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3010, TARGET_ENE_0, DIST_None, 0)
               elseif func27_var4 <= 50 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 10)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 1, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 10)
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
      if ai:HasSpecialEffectId(TARGET_SELF, 5522) then
         goal:ClearSubGoal()
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
         end
         return true
      end
   end
   return false
end


