HusiHeavy_Bow255003Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   ai:AddObserveRegion(0, TARGET_ENE_0, 1812101)
   local func1_var7 = 3000
   local func1_var8 = 3001
   local func1_var9 = ai:GetRandam_Int(2, 5)
   Shoot_Act(ai, goal, func1_var7, func1_var8, func1_var9)
end

HusiHeavy_Bow255003Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusiHeavy_Bow255003Battle_Terminate = function(ai, goal)
end

HusiHeavy_Bow255003Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 1812101
   local func4_var7 = 1812102
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsInsideTargetRegion(TARGET_ENE_0, func4_var6) then
      goal:ClearSubGoal()
      ai:SetEventMoveTarget(func4_var7)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_EVENT, 1, TARGET_SELF, false, -1)
      return true
   end
   local func4_var8 = 3
   local func4_var9 = 10
   local func4_var10 = 50
   local func4_var11 = 25
   local func4_var12 = 25
   if FindAttack_Step(ai, goal, func4_var8, func4_var9, func4_var10, func4_var11, func4_var12) then
      return true
   end
   local func4_var13 = 3
   local func4_var14 = 15
   local func4_var15 = 50
   local func4_var16 = 25
   local func4_var17 = 25
   local func4_var18 = 4
   if Damaged_Step(ai, goal, func4_var13, func4_var14, func4_var15, func4_var16, func4_var17, func4_var18) then
      return true
   end
   return false
end


