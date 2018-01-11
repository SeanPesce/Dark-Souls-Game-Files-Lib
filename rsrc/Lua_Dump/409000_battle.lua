local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2
OnIf_409000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      SniperA409000_ActAfter(ai, goal)
   end
   if func1_param2 == 1 then
      SniperA409000_KickAfter(ai, goal)
   end
end

SniperA409000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = ai:GetHpRate(TARGET_SELF)
   local func2_var6 = ai:GetDist(TARGET_ENE_0)
   local func2_var7 = ai:GetDistYSigned(TARGET_ENE_0)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = ai:GetRandam_Int(1, 100)
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 6, 6)
   ai:SetNumber(0, 0)
   if ai:IsFinishTimer(0) == true then
      ai:SetNumber(1, 0)
   end
   if func2_var6 >= 20 then
      func2_var2[1] = 60
      func2_var2[2] = 40
      func2_var2[3] = 0
      func2_var2[4] = 0
      func2_var2[5] = 0
   elseif func2_var6 >= 12 then
      func2_var2[1] = 50
      func2_var2[2] = 30
      func2_var2[3] = 0
      func2_var2[4] = 20
      func2_var2[5] = 0
   elseif func2_var6 >= 7 then
      func2_var2[1] = 30
      func2_var2[2] = 30
      func2_var2[3] = 10
      func2_var2[4] = 30
      func2_var2[5] = 0
   elseif func2_var6 >= 2.5 then
      func2_var2[1] = 15
      func2_var2[2] = 30
      func2_var2[3] = 15
      func2_var2[4] = 20
      func2_var2[5] = 20
   else
      func2_var2[1] = 0
      func2_var2[2] = 30
      func2_var2[3] = 30
      func2_var2[4] = 0
      func2_var2[5] = 40
   end
   func2_var3[1] = REGIST_FUNC(ai, goal, SniperA409000_Act01)
   func2_var3[2] = REGIST_FUNC(ai, goal, SniperA409000_Act02)
   func2_var3[3] = REGIST_FUNC(ai, goal, SniperA409000_Act03)
   func2_var3[4] = REGIST_FUNC(ai, goal, SniperA409000_Act04)
   func2_var3[5] = REGIST_FUNC(ai, goal, SniperA409000_Act05)
   local func2_var10 = REGIST_FUNC(ai, goal, SniperA409000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func2_var2, func2_var3, func2_var10, func2_var4)
end

SniperA409000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = 3000
   local func3_var6 = 3001
   local func3_var7 = ai:GetRandam_Int(1, 1)
   local func3_var8 = 45
   local func3_var9 = 45
   local func3_var10 = 0
   if func3_var8 <= func3_var3 then
      Approach_Act(ai, goal, func3_var8, func3_var9, func3_var10, 5)
   end
   if func3_var3 >= 15 then
      func3_var7 = ai:GetRandam_Int(1, 5)
   elseif func3_var3 >= 10 then
      func3_var7 = ai:GetRandam_Int(1, 4)
   elseif func3_var3 >= 7 then
      func3_var7 = ai:GetRandam_Int(1, 3)
   elseif func3_var3 >= 4 then
      func3_var7 = ai:GetRandam_Int(1, 2)
   else
      func3_var7 = ai:GetRandam_Int(1, 1)
   end
   ai:SetNumber(0, 1)
   Shoot_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = 3002
   local func4_var6 = 3003
   local func4_var7 = ai:GetRandam_Int(1, 1)
   local func4_var8 = 45
   local func4_var9 = 45
   local func4_var10 = 0
   if func4_var8 <= func4_var3 then
      Approach_Act(ai, goal, func4_var8, func4_var9, func4_var10, 5)
   end
   if func4_var3 >= 15 then
      func4_var7 = ai:GetRandam_Int(3, 5)
   elseif func4_var3 >= 10 then
      func4_var7 = ai:GetRandam_Int(2, 4)
   elseif func4_var3 >= 7 then
      func4_var7 = ai:GetRandam_Int(2, 3)
   elseif func4_var3 >= 4 then
      func4_var7 = ai:GetRandam_Int(1, 2)
   else
      func4_var7 = ai:GetRandam_Int(1, 1)
   end
   ai:SetNumber(0, 1)
   Shoot_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   local func5_var4 = ai:GetDist(TARGET_ENE_0)
   if func5_var4 >= 8 then
      if func5_var3 <= 30 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif func5_var3 <= 65 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
   elseif func5_var4 >= 4 then
      if func5_var3 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif func5_var3 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = 8
   local func6_var5 = 10
   local func6_var6 = 0
   local func6_var7 = ai:GetRandam_Int(1, 100)
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 3)
   end
   if func6_var7 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_NONE, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_NONE, -1, 50)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_NONE, 0)
   end
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = 2.5
   local func7_var5 = 2
   local func7_var6 = 0
   local func7_var7 = localScriptConfigVar1
   if func7_var4 <= func7_var3 then
      Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, func7_var7, 0, 50)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   GetWellSpace_Odds = 50
   return GetWellSpace_Odds
end

SniperA409000_KickAfter = function(ai, goal)
   local func8_var2 = ai:GetDist(TARGET_ENE_0)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   if func8_var2 <= 2 then
      if func8_var3 <= 20 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_None, 0)
      elseif func8_var3 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif func8_var3 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
      end
   elseif func8_var2 <= 5 then
      if func8_var3 <= 20 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_None, 0)
      elseif func8_var3 <= 40 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif func8_var3 <= 60 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
      end
   elseif func8_var3 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, bRight, ai:GetRandam_Int(30, 45), true, true, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

SniperA409000_ActAfter = function(ai, goal)
   local func9_var2 = ai:GetRandam_Int(1, 100)
   local func9_var3 = ai:GetRandam_Int(1, 100)
   local func9_var4 = ai:GetRandam_Int(0, 1)
   local func9_var5 = ai:GetDist(TARGET_ENE_0)
   if func9_var5 <= 3 then
      if func9_var2 <= 80 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func9_var2 <= 100 then
         if func9_var3 <= 0 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, func9_var4, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif func9_var5 <= 7 then
      if func9_var2 <= 65 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func9_var2 <= 90 then
         if func9_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, func9_var4, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif func9_var5 <= 10 then
      if func9_var2 <= 25 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func9_var2 <= 80 then
         if func9_var3 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, func9_var4, ai:GetRandam_Int(60, 60), true, true, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, 12, TARGET_ENE_0, true, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      end
   elseif func9_var2 <= 0 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
   elseif func9_var2 <= 75 then
      if func9_var3 <= 100 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func9_var4, ai:GetRandam_Int(60, 60), true, true, -1)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 15, TARGET_ENE_0, true, -1)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, AppDist, -1, 50)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
end

SniperA409000_ActAfter_AdjustSpace = function(ai, goal, func10_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

SniperA409000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

SniperA409000Battle_Terminate = function(ai, goal)
end

SniperA409000Battle_Interupt = function(ai, goal)
   local func13_var2 = ai:GetRandam_Int(1, 100)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = ai:GetDist(TARGET_ENE_0)
   local func13_var6 = ai:GetDistYSigned(TARGET_ENE_0)
   if ai:IsInterupt(INTERUPT_Damaged) and func13_var2 <= 100 and func13_var5 <= 5 then
      goal:ClearSubGoal()
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_B, 5.5) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_L, 5) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and ai:IsOnNearMeshByPos(TARGET_SELF, AI_DIR_TYPE_R, 5) then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 3, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 2, 3006, TARGET_ENE_0, DIST_None, 0)
      end
      return false
   end
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and ai:GetNumber(0) == 1 then
      ai:SetNumber(0, 0)
      if func13_var2 <= 30 and func13_var5 > 3 then
         goal:ClearSubGoal()
         if func13_var3 <= 60 then
            if func13_var4 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
            elseif func13_var4 <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         elseif func13_var4 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         elseif func13_var4 <= 75 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
      elseif func13_var2 <= 40 and func13_var5 <= 3 then
         goal:ClearSubGoal()
         if func13_var3 <= 50 then
            if func13_var4 <= 60 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
            elseif func13_var4 <= 80 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
         elseif func13_var4 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3007, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5.5)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 2, 3006, TARGET_ENE_0, DIST_None, 0)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
   end
   local func13_var7 = 20
   local func13_var8 = 30
   if UseItem_Act(ai, goal, func13_var7, func13_var8) then
      local func13_var9 = localScriptConfigVar1
      goal:ClearSubGoal()
      if func13_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3006, TARGET_ENE_0, func13_var9, -1, 50)
      else
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 3002, TARGET_ENE_0, DIST_NONE, -1, 50)
      end
      return true
   end
   if ai:IsInterupt(INTERUPT_Shoot) then
      ai:SetNumber(1, 1)
      ai:SetTimer(0, 3)
   end
   if ai:GetNumber(1) == 1 and ai:IsInterupt(INTERUPT_Damaged) and func13_var5 >= 10 then
      goal:ClearSubGoal()
      ai:SetNumber(1, 0)
      Approach_Act(ai, goal, func13_var5 - 5, 0, 0, 4)
      return true
   elseif ai:GetNumber(1) == 1 and ai:IsInterupt(INTERUPT_Damaged) and func13_var6 <= -0.5 then
      goal:ClearSubGoal()
      ai:SetNumber(1, 0)
      Approach_Act(ai, goal, func13_var5 - 4, 0, 0, 3)
      return true
   end
   local func13_var9 = 10
   local func13_var10 = 50
   local func13_var11 = 50
   local func13_var12 = 70
   local func13_var13 = Shoot_2dist(ai, goal, func13_var9, func13_var10, func13_var11, func13_var12)
   if func13_var13 == 1 then
      goal:ClearSubGoal()
      if func13_var2 <= 70 then
         if func13_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func13_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   elseif func13_var13 == 2 then
      goal:ClearSubGoal()
      if func13_var2 <= 30 then
         if func13_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
         else
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 3009, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
         end
      elseif func13_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 2, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
      end
      -- Tried to add an 'end' here but it's incorrect
      return true
   end
   return false
end


