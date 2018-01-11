local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.7
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 0.8
local localScriptConfigVar6 = 2
local localScriptConfigVar7 = 4.1
local localScriptConfigVar8 = 1
local localScriptConfigVar9 = 2.1
local localScriptConfigVar10 = 4
local localScriptConfigVar11 = 5.1
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1.7
local localScriptConfigVar14 = 5
local localScriptConfigVar15 = 15
OnIf_240000 = function(ai, goal, func1_param2)
   if ai:HasSpecialEffectId(TARGET_SELF, 3151) then
      ai:SetTimer(0, 120)
   else
      ai:SetTimer(0, 30)
   end
end

Assassin240000Battle_Activate = function(ai, goal)
   local func2_var2 = 0
   local func2_var3 = 5
   local func2_var4 = 30
   ObserveAreaForBackstab(ai, goal, func2_var2, func2_var3, func2_var4)
   local func2_var5 = {}
   local func2_var6 = {}
   local func2_var7 = {}
   Common_Clear_Param(func2_var5, func2_var6, func2_var7)
   local func2_var8 = ai:GetDist(TARGET_ENE_0)
   local func2_var9 = ai:GetHpRate(TARGET_SELF)
   if ai:IsLadderAct(TARGET_SELF) then
      func2_var5[15] = 100
   elseif func2_var9 <= 0.4 and ai:IsFinishTimer(0) == true then
      if func2_var8 >= 4.5 then
         func2_var5[7] = 300
      elseif func2_var8 >= 3 then
         func2_var5[7] = 100
      else
         func2_var5[7] = 50
      end
   end
   if ai:IsLadderAct(TARGET_SELF) then
      func2_var5[15] = 100
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5401) and func2_var9 <= 0.5 and ai:IsFinishTimer(1) == true then
      func2_var5[11] = 100
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) and func2_var9 >= 0.5 and ai:IsFinishTimer(1) == true then
      func2_var5[12] = 100
   elseif func2_var8 >= 8 then
      func2_var5[1] = 10
      func2_var5[2] = 5
      func2_var5[3] = 0
      func2_var5[4] = 0
      func2_var5[5] = 80
      func2_var5[6] = 0
      func2_var5[8] = 0
      func2_var5[9] = 0
      func2_var5[10] = 5
   elseif func2_var8 >= 5 then
      if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
         func2_var5[4] = 5
         -- Tried to add an 'end' here but it's incorrect
         func2_var5[1] = 40
         func2_var5[2] = 10
         func2_var5[3] = 0
         func2_var5[5] = 15
         func2_var5[6] = 0
         func2_var5[8] = 0
         func2_var5[9] = 10
         func2_var5[10] = 25
      elseif func2_var8 >= 3 then
         if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
            func2_var5[4] = 20
            -- Tried to add an 'end' here but it's incorrect
            func2_var5[1] = 25
            func2_var5[2] = 35
            func2_var5[3] = 0
            func2_var5[5] = 0
            func2_var5[6] = 10
            func2_var5[8] = 0
            func2_var5[9] = 30
            func2_var5[10] = 0
         elseif ai:HasSpecialEffectId(TARGET_SELF, 5401) then
            func2_var5[4] = 15
            func2_var5[1] = 0
            func2_var5[2] = 40
            func2_var5[3] = 20
            func2_var5[5] = 0
            func2_var5[6] = 20
            func2_var5[8] = 0
            func2_var5[9] = 20
            func2_var5[10] = 0
         end
         func2_var6[1] = REGIST_FUNC(ai, goal, Assassin240000_Act01)
         func2_var6[2] = REGIST_FUNC(ai, goal, Assassin240000_Act02)
         local func2_var10 = {localScriptConfigVar5, 0, 3004, DIST_Middle}
         func2_var7[3] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act04)
         func2_var6[4] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act05)
         func2_var6[5] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act06)
         func2_var6[6] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act07)
         func2_var6[7] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act09)
         func2_var6[9] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act10)
         func2_var6[10] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act11)
         func2_var6[11] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act12)
         func2_var6[12] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_Act15)
         func2_var6[15] = func2_var10
         func2_var10 = REGIST_FUNC
         func2_var10 = func2_var10(ai, goal, Assassin240000_ActAfter_AdjustSpace, atkAfterOddsTbl)
         Common_Battle_Activate(ai, goal, func2_var5, func2_var6, func2_var10, func2_var7)
end

Assassin240000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 100
   local func3_var8 = 3005
   local func3_var9 = DIST_Middle
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      func3_var7 = 100
   else
      func3_var7 = 0
   end
   Approach_and_Attack_Act(ai, goal, func3_var5, func3_var6, func3_var7, func3_var8, func3_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar1
   local func4_var6 = localScriptConfigVar1 + 2
   local func4_var7 = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      func4_var7 = 100
   else
      func4_var7 = 0
   end
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar13
   local func5_var5 = localScriptConfigVar13 + 2
   local func5_var6 = 0
   local func5_var7 = 3008
   local func5_var8 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var4, func5_var5, func5_var6, func5_var7, func5_var8)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar14
   local func6_var5 = localScriptConfigVar15
   local func6_var6 = localScriptConfigVar15 + 2
   local func6_var7 = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      func6_var7 = 100
   else
      func6_var7 = 0
   end
   Approach_or_Leave_Act(ai, goal, func6_var4, func6_var5, func6_var6, func6_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3011, TARGET_ENE_0, DIST_None)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act06 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar9
   local func7_var6 = localScriptConfigVar9 + 2
   local func7_var7 = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      func7_var7 = 100
   else
      func7_var7 = 0
   end
   Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act07 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   if func8_var3 <= 40 then
      if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, 9910)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 4.5, TARGET_ENE_0, true, -1)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
      end
   elseif func8_var3 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 711, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 2.5)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3200, TARGET_ENE_0, DIST_None)
   end
   -- Tried to add an 'end' here but it's incorrect
   goal:AddSubGoal(GOAL_COMMON_If, 15, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act09 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = ai:GetRandam_Int(1, 100)
   local func9_var5 = localScriptConfigVar3
   local func9_var6 = localScriptConfigVar3 + 2
   local func9_var7 = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      func9_var7 = 100
   else
      func9_var7 = 0
   end
   Approach_Act(ai, goal, func9_var5, func9_var6, func9_var7)
   if func9_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Assassin240000_Act10 = function(ai, goal, func10_param2)
   local func10_var3 = ai:GetDist(TARGET_ENE_0)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = localScriptConfigVar11
   local func10_var6 = localScriptConfigVar11 + 2
   local func10_var7 = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      func10_var7 = 100
   else
      func10_var7 = 0
   end
   Approach_Act(ai, goal, func10_var5, func10_var6, func10_var7)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3007, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act11 = function(ai, goal, func11_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
   ai:SetTimer(1, 30)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act12 = function(ai, goal, func12_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_SELF, DIST_None)
   ai:SetTimer(1, 30)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Assassin240000_Act15 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = localScriptConfigVar3
   local func13_var6 = localScriptConfigVar3 + 2
   local func13_var7 = 100
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      func13_var7 = 100
   else
      func13_var7 = 0
   end
   Approach_Act(ai, goal, func13_var5, func13_var6, func13_var7)
   if func13_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
end

Assassin240000_ActAfter_AdjustSpace = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   local func14_var5 = ai:GetRandam_Int(1, 100)
   if func14_var4 <= 40 then
   elseif func14_var4 <= 55 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
   elseif func14_var4 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 4)
      return true
   elseif func14_var4 <= 85 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 4)
      return true
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 6, TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
   else
   end
      return true
      return false
end

Assassin240000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Assassin240000Battle_Terminate = function(ai, goal)
end

Assassin240000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func17_var2 = ai:GetRandam_Int(1, 100)
   local func17_var3 = ai:GetRandam_Int(1, 100)
   local func17_var4 = ai:GetRandam_Int(1, 100)
   local func17_var5 = ai:GetDist(TARGET_ENE_0)
   local func17_var6 = 3
   local func17_var7 = 25
   local func17_var8 = 40
   local func17_var9 = 30
   local func17_var10 = 30
   if FindAttack_Step(ai, goal, func17_var6, func17_var7, func17_var8, func17_var9, func17_var10) then
      return true
   end
   local func17_var11 = 3
   local func17_var12 = 35
   local func17_var13 = 40
   local func17_var14 = 30
   local func17_var15 = 30
   local func17_var16 = 4
   if Damaged_Step(ai, goal, func17_var11, func17_var12, func17_var13, func17_var14, func17_var15, func17_var16) then
      return true
   end
   local func17_var17 = 1.7
   local func17_var18 = 25
   if FindGuardBreak_Act(ai, goal, func17_var17, func17_var18) then
      local func17_var19 = localScriptConfigVar3
      local func17_var20 = localScriptConfigVar3 + 2
      local func17_var21 = 0
      local func17_var22 = 3002
      local func17_var23 = DIST_Middle
      Approach_and_Attack_Act(ai, goal, func17_var19, func17_var20, func17_var21, func17_var22, func17_var23)
      return true
   end
   local func17_var19 = 4.1
   local func17_var20 = 50
   local func17_var21 = ai:GetDist(TARGET_ENE_0)
   if MissSwing_Int(ai, goal, func17_var19, func17_var20) then
      if func17_var21 >= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func17_var22 = 3
   local func17_var23 = 60
   local func17_var24 = 4
   local func17_var25 = 60
   if Parry_Act(ai, goal, func17_var22, func17_var23, func17_var24, func17_var25) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   end
   local func17_var26 = 0
   local func17_var27 = 1
   local func17_var28 = 0
   local func17_var29 = 20
   if Backstab_Act(ai, goal, func17_var26, func17_var27, func17_var28, func17_var29) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
      return true
   end
   local func17_var30 = 3
   local func17_var31 = 30
   local func17_var32 = 60
   local func17_var33 = 70
   do
      if ai:IsFinishTimer(1) then
         if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
            local func17_var34 = Shoot_2dist(ai, goal, func17_var30, func17_var31, func17_var32, func17_var33)
            if func17_var34 == 1 then
               if func17_var2 <= 10 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               elseif func17_var2 <= 55 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               end
               return true
            elseif func17_var34 == 2 then
               if func17_var2 <= 10 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               elseif func17_var2 <= 55 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_SELF, DIST_None)
                  ai:SetTimer(1, 30)
               end
               return true
            end
            return true
            -- Tried to add an 'end' here but it's incorrect
         end
         return true
         -- Tried to add an 'end' here but it's incorrect
         local func17_var34 = 35
         local func17_var35 = 40
         local func17_var36 = 30
         local func17_var37 = 30
         local func17_var38 = 4
         if RebByOpGuard_Step(ai, goal, func17_var34, func17_var35, func17_var36, func17_var37, func17_var38) then
            return true
         end
         local func17_var39 = 4.1
         local func17_var40 = 60
         if SuccessGuard_Act(ai, goal, func17_var39, func17_var40) then
            if func17_var21 >= 2 then
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
            else
               goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
            end
            return true
         end
         return false
end


