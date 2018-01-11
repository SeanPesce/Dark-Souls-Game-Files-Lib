local localScriptConfigVar0 = 7
local localScriptConfigVar1 = 12
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 5
local localScriptConfigVar4 = -5
local localScriptConfigVar5 = 0.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.8
local localScriptConfigVar8 = 8
local localScriptConfigVar9 = 16
DraZonbiLegs342100Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   local func1_var16 = 100
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 3, 2.7)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 4, 2.7)
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 50) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and func1_var3 <= 75 and func1_var2 <= 7 then
      func1_var7 = 100
   elseif (func1_var3 <= 80 and ai:IsInsideObserve(0)) or ai:IsInsideObserve(1) then
      func1_var8 = 50
      func1_var11 = 50
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 85) and func1_var3 <= 75 and func1_var2 <= 2.5 and func1_var2 >= 0.1 then
      func1_var9 = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) and func1_var3 <= 80 and func1_var2 <= 2.3 and func1_var2 >= 0.1 then
      func1_var10 = 100
   elseif func1_var2 >= 10 then
      func1_var6 = 25
      func1_var8 = 0
      func1_var11 = 0
      func1_var12 = 60
      func1_var13 = 10
      func1_var14 = 5
      func1_var15 = 0
   elseif func1_var2 >= 7 then
      func1_var6 = 55
      func1_var8 = 0
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 30
      func1_var14 = 10
      func1_var15 = 5
   elseif func1_var2 >= 4 then
      func1_var6 = 5
      func1_var8 = 0
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 50
      func1_var14 = 25
      func1_var15 = 20
   else
      func1_var6 = 0
      func1_var8 = 0
      func1_var11 = 40
      func1_var12 = 0
      func1_var13 = 15
      func1_var14 = 30
      func1_var15 = 15
   end
   local func1_var17 = ai:GetRandam_Int(1, func1_var6 + func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15)
   if func1_var17 <= func1_var6 then
      DraZonbiLegs342100_Act00(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 then
      DraZonbiLegs342100_Act01(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 + func1_var8 then
      DraZonbiLegs342100_Act02(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 + func1_var8 + func1_var9 then
      DraZonbiLegs342100_Act03(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 + func1_var8 + func1_var9 + func1_var10 then
      DraZonbiLegs342100_Act04(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      DraZonbiLegs342100_Act05(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      DraZonbiLegs342100_Act06(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      DraZonbiLegs342100_Act07(ai, goal)
   elseif func1_var17 <= func1_var6 + func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      DraZonbiLegs342100_Act08(ai, goal)
   else
      DraZonbiLegs342100_Act09(ai, goal)
   end
   local func1_var18 = ai:GetRandam_Int(1, 100)
   if func1_var18 <= func1_var16 and func1_var18 <= func1_var16 then
      DraZonbiLegs342100_GetWellSpace_Act(ai, goal)
   end
end

DraZonbiLegs342100_Act00 = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = localScriptConfigVar1
   local func2_var4 = localScriptConfigVar1 + 2
   local func2_var5 = 0
   Approach_Act(ai, goal, func2_var3, func2_var4, func2_var5)
   if func2_var2 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act01 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act04 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act06 = function(ai, goal)
   local func8_var2 = localScriptConfigVar9
   local func8_var3 = localScriptConfigVar9 + 2
   local func8_var4 = 0
   Approach_Act(ai, goal, func8_var2, func8_var3, func8_var4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3007, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act07 = function(ai, goal)
   local func9_var2 = ai:GetDist(TARGET_ENE_0)
   local func9_var3 = localScriptConfigVar3
   local func9_var4 = localScriptConfigVar3 + 2
   local func9_var5 = 0
   Approach_Act(ai, goal, func9_var3, func9_var4, func9_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act08 = function(ai, goal)
   local func10_var2 = ai:GetDist(TARGET_ENE_0)
   local func10_var3 = localScriptConfigVar5
   local func10_var4 = localScriptConfigVar5 + 2
   local func10_var5 = 0
   Approach_Act(ai, goal, func10_var3, func10_var4, func10_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_Act09 = function(ai, goal)
   local func11_var2 = ai:GetDist(TARGET_ENE_0)
   local func11_var3 = localScriptConfigVar7
   local func11_var4 = localScriptConfigVar7 + 2
   local func11_var5 = 0
   Approach_Act(ai, goal, func11_var3, func11_var4, func11_var5)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3006, TARGET_ENE_0, DIST_Middle)
   return GetWellSpace_Odds
end

DraZonbiLegs342100_GetWellSpace_Act = function(ai, goal)
   local func12_var2 = ai:GetRandam_Int(1, 100)
   local func12_var3 = ai:GetRandam_Int(2, 3)
   if func12_var2 <= 70 then
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, func12_var3, TARGET_SELF, 0, 0, 0)
   end
end

DraZonbiLegs342100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DraZonbiLegs342100Battle_Terminate = function(ai, goal)
end

DraZonbiLegs342100Battle_Interupt = function(ai, goal)
   return false
end


