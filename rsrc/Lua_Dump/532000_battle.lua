ImperialMother532000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 15)
   local func1_var7 = ai:GetNumber(0)
   local func1_var8 = 1
   if func1_var6 == 1 then
      func1_var8 = 0
   end
   if func1_var7 == 0 then
      func1_var2[6] = 100
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      if func1_var5 >= 75 then
         func1_var2[5] = 100
      elseif func1_var5 >= 25 then
         func1_var2[1] = 30
         func1_var2[2] = 35
         func1_var2[3] = 35
         func1_var2[4] = 0 * func1_var8
         func1_var2[5] = 0
      elseif func1_var5 >= 12 then
         func1_var2[1] = 40
         func1_var2[2] = 35
         func1_var2[3] = 25
         func1_var2[4] = 0 * func1_var8
         func1_var2[5] = 0
      elseif func1_var5 >= 6 then
         func1_var2[1] = 30
         func1_var2[2] = 40
         func1_var2[3] = 30
         func1_var2[4] = 0 * func1_var8
         func1_var2[5] = 0
      else
         func1_var2[1] = 5
         func1_var2[2] = 35
         func1_var2[3] = 60
         func1_var2[4] = 0 * func1_var8
         func1_var2[5] = 0
      end
   elseif func1_var5 >= 75 then
      func1_var2[5] = 100
   elseif func1_var5 >= 25 then
      func1_var2[1] = 20
      func1_var2[2] = 35
      func1_var2[3] = 35
      func1_var2[4] = 0 * func1_var8
      func1_var2[5] = 0
   elseif func1_var5 >= 12 then
      func1_var2[1] = 35
      func1_var2[2] = 45
      func1_var2[3] = 20
      func1_var2[4] = 0 * func1_var8
      func1_var2[5] = 0
   elseif func1_var5 >= 6 then
      func1_var2[1] = 15
      func1_var2[2] = 55
      func1_var2[3] = 30
      func1_var2[4] = 0 * func1_var8
      func1_var2[5] = 0
   else
      func1_var2[1] = 0
      func1_var2[2] = 40
      func1_var2[3] = 60
      func1_var2[4] = 0 * func1_var8
      func1_var2[5] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, ImperialMother532000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, ImperialMother532000_Act02)
   func1_var3[3] = REGIST_FUNC(ai, goal, ImperialMother532000_Act03)
   func1_var3[4] = REGIST_FUNC(ai, goal, ImperialMother532000_Act04)
   func1_var3[5] = REGIST_FUNC(ai, goal, ImperialMother532000_Act05)
   func1_var3[6] = REGIST_FUNC(ai, goal, ImperialMother532000_Act06)
   local func1_var9 = {0, 70, 0, 0, 30, 0, 0}
   local func1_var10 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var9)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var10, func1_var4)
end

ImperialMother532000_Act01 = function(ai, goal)
   if ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3005, TARGET_ENE_0, DIST_None, 0)
   end
   local func2_var2 = 3000
   local func2_var3 = 3001
   local func2_var4 = ai:GetRandam_Int(2, 3)
   Shoot_Act(ai, goal, func2_var2, func2_var3, func2_var4)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

ImperialMother532000_Act02 = function(ai, goal)
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_None, 1.5, 20)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

ImperialMother532000_Act03 = function(ai, goal)
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 1.5, 20)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

ImperialMother532000_Act04 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   local func5_var3 = ai:GetRandam_Int(1, 100)
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

ImperialMother532000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2), TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

ImperialMother532000_Act06 = function(ai, goal)
   ai:SetNumber(0, 1)
   if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

ImperialMother532000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ImperialMother532000Battle_Terminate = function(ai, goal)
end

ImperialMother532000Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = ai:GetEventRequest()
   if ai:IsInterupt(INTERUPT_Damaged) and func10_var5 <= 3 and func10_var6 ~= 1 then
      goal:ClearSubGoal()
      if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
      end
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, -1)
      return true
   end
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and func10_var6 ~= 1 then
      goal:ClearSubGoal()
      if ai:HasSpecialEffectId(TARGET_SELF, 5400) then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
      end
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, -1)
      return true
   end
   return false
end


