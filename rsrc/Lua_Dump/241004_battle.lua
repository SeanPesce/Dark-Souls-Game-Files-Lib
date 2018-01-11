local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.1
local localScriptConfigVar2 = 3.5
local localScriptConfigVar3 = 5.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.1
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.9
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 3.1
local localScriptConfigVar12 = 5
local localScriptConfigVar13 = 6.5
WhiteKnight_Bow241004Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   ai:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 80, 8)
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      if func1_var5 >= 10 then
         func1_var2[10] = 100
      elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
         if func1_var5 >= 7 then
            func1_var2[4] = 20
         elseif func1_var5 >= 3.2 then
            func1_var2[4] = 80
         else
            func1_var2[4] = 150
         end
         if func1_var5 >= 7 then
            func1_var2[1] = 24
            func1_var2[2] = 3
            func1_var2[3] = 0
            func1_var2[5] = 3
            func1_var2[10] = 70
         elseif func1_var5 >= 5.5 then
            func1_var2[1] = 55
            func1_var2[2] = 10
            func1_var2[3] = 10
            func1_var2[5] = 25
         elseif func1_var5 >= 3.2 then
            func1_var2[1] = 15
            func1_var2[2] = 35
            func1_var2[3] = 20
            func1_var2[5] = 20
         else
            func1_var2[1] = 0
            func1_var2[2] = 50
            func1_var2[3] = 25
            func1_var2[5] = 25
         end
      elseif func1_var5 >= 15 then
         func1_var2[8] = 100
      elseif func1_var5 >= 12 then
         func1_var2[8] = 60
         func1_var2[9] = 40
      else
         func1_var2[9] = 100
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      func1_var3[1] = REGIST_FUNC(ai, goal, WhiteKnight_Bow241004_Act01)
      func1_var3[2] = REGIST_FUNC(ai, goal, WhiteKnight_Bow241004_Act02)
      local func1_var7 = {localScriptConfigVar5, 0, 3005, DIST_Middle}
      func1_var4[3] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_Act04)
      func1_var3[4] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_Act05)
      func1_var3[5] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_Act06)
      func1_var3[6] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_Act07)
      func1_var3[7] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_Act08)
      func1_var3[8] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_Act09)
      func1_var3[9] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_Act10)
      func1_var3[10] = func1_var7
      func1_var7 = REGIST_FUNC
      func1_var7 = func1_var7(ai, goal, WhiteKnight_Bow241004_ActAfter_AdjustSpace)
      Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

WhiteKnight_Bow241004_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = localScriptConfigVar3
   local func2_var4 = localScriptConfigVar3 + 2
   local func2_var5 = 75
   local func2_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, -1, 25)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar1
   local func3_var4 = localScriptConfigVar1 + 2
   local func3_var5 = 75
   Approach_Act(ai, goal, func3_var3, func3_var4, func3_var5)
   local func3_var6 = ai:GetRandam_Int(1, 100)
   if func3_var6 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func3_var6 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, -1, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar9
   local func4_var6 = localScriptConfigVar9 + 2
   local func4_var7 = 75
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_GuardBreakTunable, 10, 3007, TARGET_ENE_0, DIST_Middle, -1, 25)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act05 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar7
   local func5_var5 = localScriptConfigVar7 + 2
   local func5_var6 = 75
   local func5_var7 = 3006
   local func5_var8 = DIST_Middle
   Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act06 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar11
   local func6_var5 = localScriptConfigVar11 + 2
   local func6_var6 = 75
   local func6_var7 = 3008
   local func6_var8 = DIST_Middle
   Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act07 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar13
   local func7_var5 = localScriptConfigVar13 + 2
   local func7_var6 = 75
   local func7_var7 = 3009
   local func7_var8 = DIST_Middle
   Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act08 = function(ai, goal, func8_param2)
   local func8_var3 = 3000
   local func8_var4 = 3001
   local func8_var5 = ai:GetRandam_Int(1, 2)
   Shoot_Act(ai, goal, func8_var3, func8_var4, func8_var5)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.2, 0.5), 0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act09 = function(ai, goal, func9_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3010, TARGET_SELF, DIST_Middle, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_Act10 = function(ai, goal, func10_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3011, TARGET_SELF, DIST_Middle, 0)
   local func10_var3 = 3000
   local func10_var4 = 3001
   local func10_var5 = ai:GetRandam_Int(2, 5)
   Shoot_Act(ai, goal, func10_var3, func10_var4, func10_var5)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

WhiteKnight_Bow241004_ActAfter_AdjustSpace = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetRandam_Int(0, 100)
   local func11_var4 = ai:GetRandam_Int(0, 1)
   local func11_var5 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func11_var4, TARGET_ENE_0, 2)
   if func11_var3 <= 20 and func11_var5 < 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 2, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func11_var4, ai:GetRandam_Int(30, 45), true, true, 9910)
   elseif func11_var3 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 3, TARGET_ENE_0, true, 9910)
   elseif func11_var3 <= 37 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif func11_var3 <= 45 then
      local func11_var6 = ai:GetRandam_Int(1, 100)
      if func11_var6 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

WhiteKnight_Bow241004Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

WhiteKnight_Bow241004Battle_Terminate = function(ai, goal)
end

WhiteKnight_Bow241004Battle_Interupt = function(ai, goal)
   local func14_var2 = ai:GetRandam_Int(1, 100)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = ai:GetDist(TARGET_ENE_0)
   local func14_var6 = 3
   local func14_var7 = 25
   local func14_var8 = 30
   local func14_var9 = 60
   local func14_var10 = 20
   local func14_var11 = 20
   local func14_var12 = 3.5
   local func14_var13 = 50
   local func14_var14 = 25
   local func14_var15 = 4.5
   local func14_var16 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func14_var6, func14_var7, func14_var8, func14_var9, func14_var10, func14_var11, func14_var12, func14_var13, oddsSide, func14_var14, func14_var15, func14_var16) then
      return true
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      local func14_var17 = 2.7
      local func14_var18 = 70
      if GuardBreak_Act(ai, goal, func14_var17, func14_var18) then
         if func14_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
      local func14_var19 = 2.7
      local func14_var20 = 30
      if MissSwing_Int(ai, goal, func14_var19, func14_var20) then
         if func14_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
      local func14_var21 = 6.2
      local func14_var22 = 60
      if UseItem_Act(ai, goal, func14_var21, func14_var22) then
         if func14_var5 <= 4 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
      local func14_var23 = 4
      local func14_var24 = 18
      local func14_var25 = 40
      local func14_var26 = 50
      local func14_var27 = Shoot_2dist(ai, goal, func14_var23, func14_var24, func14_var25, func14_var26)
      if func14_var27 == 1 then
         if func14_var2 <= 80 then
            if func14_var3 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, 9910)
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, false, 9910)
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            end
         elseif func14_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
      elseif func14_var27 == 2 then
         if func14_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
            return true
         elseif func14_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
      local func14_var28 = 35
      local func14_var29 = 60
      local func14_var30 = 20
      local func14_var31 = 20
      local func14_var32 = 3.5
      if RebByOpGuard_Step(ai, goal, func14_var28, func14_var29, func14_var30, func14_var31, func14_var32) then
         return true
      end
      local func14_var33 = 2.7
      local func14_var34 = 70
      if SuccessGuard_Act(ai, goal, func14_var33, func14_var34) then
         if func14_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
      if ai:IsInsideObserve(0) and ai:IsFinishTimer(0) == true and func14_var5 <= 6.5 then
         goal:ClearSubGoal()
         ai:SetTimer(0, 18)
         if func14_var5 >= 3.1 then
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar13, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar11, TARGET_SELF, false, 9910)
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      else
         return true
      end
      -- Tried to add an 'end' here but it's incorrect
      return false
end


