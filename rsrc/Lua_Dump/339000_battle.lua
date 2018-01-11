local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.4
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 4.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4.6
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 8.6
Burrower339000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   ai:AddObserveRegion(0, TARGET_ENE_0, 1412310)
   ai:AddObserveRegion(1, TARGET_ENE_0, 1412311)
   ai:AddObserveRegion(2, TARGET_ENE_0, 1412312)
   ai:AddObserveRegion(3, TARGET_ENE_0, 1412313)
   ai:AddObserveRegion(4, TARGET_ENE_0, 1412314)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412310) then
      if func1_var2 >= 4.6 then
         func1_var7 = 30
         func1_var8 = 30
         func1_var9 = 20
         func1_var10 = 20
      else
         func1_var7 = 50
         func1_var8 = 50
      end
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412311) then
      if func1_var2 >= 4.6 then
         func1_var10 = 70
         func1_var11 = 30
      else
         func1_var9 = 70
         func1_var11 = 30
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1412314) then
      goal:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
   else
      func1_var11 = 100
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func1_var13 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11)
   if func1_var13 <= func1_var7 then
      Burrower339000_Act01(ai, goal)
      func1_var12 = 0
   elseif func1_var13 <= func1_var7 + func1_var8 then
      Burrower339000_Act02(ai, goal)
      func1_var12 = 0
   elseif func1_var13 <= func1_var7 + func1_var8 + func1_var9 then
      Burrower339000_Act03(ai, goal)
      func1_var12 = 100
   elseif func1_var13 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
      Burrower339000_Act04(ai, goal)
      func1_var12 = 100
   else
      Burrower339000_Act05(ai, goal)
      func1_var12 = 0
   end
   local func1_var14 = ai:GetRandam_Int(1, 100)
   if func1_var14 <= func1_var12 then
      Burrower339000_GetWellSpace_Act(ai, goal)
   end
end

Burrower339000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 4, 3000, TARGET_ENE_0, DIST_Middle)
end

Burrower339000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(0, 5)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 4, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle)
   ai:SetEventMoveTarget(1412314)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, func3_var4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
end

Burrower339000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle)
end

Burrower339000_Act04 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle)
end

Burrower339000_Act05 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(0, 5)
   ai:SetEventMoveTarget(1412314)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, func6_var4, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
end

Burrower339000_GetWellSpace_Act = function(ai, goal)
   local func7_var2 = ai:GetRandam_Int(1, 100)
   local func7_var3 = ai:GetRandam_Int(0, 5)
   if func7_var2 <= 30 then
   elseif func7_var2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), 0, 0, 0, 0)
   else
      ai:SetEventMoveTarget(1412314)
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, func7_var3, POINT_EVENT, 0, TARGET_ENE_0, True, -1)
   end
end

Burrower339000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Burrower339000Battle_Terminate = function(ai, goal)
end

Burrower339000Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(0, 5)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true then
      if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412310) then
         goal:ClearSubGoal()
         ai:SetTimer(0, 11)
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
         return true
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412311) then
         goal:ClearSubGoal()
         ai:SetTimer(0, 3)
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
         return true
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412312) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412313) then
         goal:ClearSubGoal()
         ai:SetTimer(0, 5)
         goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
         return true
      end
   end
   return false
end


