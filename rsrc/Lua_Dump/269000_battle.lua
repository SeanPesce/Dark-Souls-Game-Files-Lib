local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3.5
local localScriptConfigVar6 = 10
local localScriptConfigVar7 = 11.4
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 20
HebibitoA269000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   local func1_var7 = ai:GetRandam_Int(30, 60)
   if ai:IsLadderAct(TARGET_SELF) then
      func1_var2[3] = 100
   elseif func1_var5 >= 12 then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, func1_var7)
         func1_var2[1] = 0
         func1_var2[2] = 0
         func1_var2[3] = 0
         func1_var2[4] = 100
         func1_var2[9] = 0
         func1_var2[7] = 0
      else
         func1_var2[1] = 0
         func1_var2[2] = 10
         func1_var2[3] = 20
         func1_var2[4] = 0
         func1_var2[9] = 20
         func1_var2[7] = 50
      end
   elseif func1_var5 >= 10 then
      func1_var2[1] = 0
      func1_var2[2] = 25
      func1_var2[3] = 20
      func1_var2[4] = 0
      func1_var2[9] = 30
      func1_var2[7] = 25
   elseif func1_var5 >= 3.5 then
      func1_var2[1] = 15
      func1_var2[2] = 25
      func1_var2[3] = 30
      func1_var2[4] = 0
      func1_var2[9] = 30
      func1_var2[7] = 0
   else
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[3] = 20
      func1_var2[4] = 0
      func1_var2[9] = 30
      func1_var2[7] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, HebibitoA269000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, HebibitoA269000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, HebibitoA269000_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, HebibitoA269000_Act04)
   func1_var3[7] = REGIST_FUNC(ai, goal, HebibitoA269000_Act07)
   func1_var3[9] = REGIST_FUNC(ai, goal, HebibitoA269000_Act09)
   local func1_var8 = {100, 50, 10, 10, 0, 15, 15}
   local func1_var9 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var8)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var9, func1_var4)
end

HebibitoA269000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar9
   local func2_var6 = localScriptConfigVar9 + 2
   local func2_var7 = 100
   if func2_var4 <= 20 then
      Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3007, TARGET_ENE_0, DIST_Near, 40)
   else
      Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 3, 3007, TARGET_ENE_0, DIST_Middle, 40)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 2
   local func3_var7 = 100
   if func3_var4 <= 20 then
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3000, TARGET_ENE_0, DIST_Near, 0, 30)
   elseif func3_var4 <= 60 then
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0, 30)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, DIST_Middle, 0, 30)
   else
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0, 30)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3001, TARGET_ENE_0, DIST_Middle, 0, 30)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar5
   local func4_var6 = localScriptConfigVar5 + 2
   local func4_var7 = 100
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3005, TARGET_ENE_0, DIST_Middle, 0, 10)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HebibitoA269000_Act07 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar7
   local func6_var5 = localScriptConfigVar7 + 2
   local func6_var6 = 100
   Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_None, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000_Act09 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar3
   local func7_var6 = localScriptConfigVar3 + 2
   local func7_var7 = 100
   Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7)
   if func7_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 30, 0, 10)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, -1, 30, 0, 10)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HebibitoA269000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HebibitoA269000Battle_Terminate = function(ai, goal)
end

HebibitoA269000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = 3.5
   local func10_var5 = 15
   local func10_var6 = 50
   local func10_var7 = 40
   local func10_var8 = 30
   local func10_var9 = 30
   local func10_var10 = 3.5
   local func10_var11 = 50
   local func10_var12 = 4
   local func10_var13 = 3.5
   if FindAttack_Step_or_Guard(ai, goal, func10_var4, func10_var5, func10_var6, func10_var7, func10_var8, func10_var9, func10_var10, func10_var11, func10_var12, func10_var13) then
      return true
   end
   local func10_var14 = 3.5
   local func10_var15 = 15
   local func10_var16 = 50
   local func10_var17 = 40
   local func10_var18 = 30
   local func10_var19 = 30
   local func10_var20 = 3.5
   local func10_var21 = 50
   local func10_var22 = 4.5
   local func10_var23 = 3.5
   if Damaged_Step_or_Guard(ai, goal, func10_var14, func10_var15, func10_var16, func10_var17, func10_var18, func10_var19, func10_var20, func10_var21, func10_var22, func10_var23) then
      return true
   end
   local func10_var24 = 6.5
   local func10_var25 = 18
   local func10_var26 = 0
   local func10_var27 = 25
   local func10_var28 = ai:GetRandam_Int(1, 100)
   local func10_var29 = ai:GetRandam_Int(1, 100)
   local func10_var30 = Shoot_2dist(ai, goal, func10_var24, func10_var25, func10_var26, func10_var27)
   if func10_var30 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func10_var30 == 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   end
   local func10_var31 = 20
   local func10_var32 = 40
   local func10_var33 = 30
   local func10_var34 = 30
   local func10_var35 = 3.5
   if RebByOpGuard_Step(ai, goal, func10_var31, func10_var32, func10_var33, func10_var34, func10_var35) then
      return true
   end
   local func10_var36 = 3.5
   local func10_var37 = 100
   local func10_var38 = ai:GetRandam_Int(1, 100)
   if SuccessGuard_Act(ai, goal, func10_var36, func10_var37) then
      if func10_var38 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


