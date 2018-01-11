local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 0
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 6.3
local localScriptConfigVar6 = 5.7
local localScriptConfigVar7 = 7.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 6.15
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 0
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 0
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 6.6
Burrower_C339003Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 60, 1.8)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 61, 1.8)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 62, 1.8)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 63, 1.8)
   ai:AddObserveChrDmySphere(4, TARGET_ENE_0, 64, 1.8)
   ai:AddObserveChrDmySphere(5, TARGET_ENE_0, 65, 1.8)
   ai:AddObserveChrDmySphere(6, TARGET_ENE_0, 66, 1.8)
   ai:AddObserveChrDmySphere(7, TARGET_ENE_0, 67, 1.8)
   if ai:IsInsideObserve(0) or ai:IsInsideObserve(4) then
      func1_var7 = 100
      func1_var10 = 100
   end
   if ai:IsInsideObserve(1) or ai:IsInsideObserve(5) then
      func1_var8 = 100
   end
   if ai:IsInsideObserve(2) or ai:IsInsideObserve(6) then
      func1_var13 = 100
   end
   if ai:IsInsideObserve(3) or ai:IsInsideObserve(7) then
      func1_var12 = 100
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 110) and func1_var2 <= 6.3 then
      func1_var9 = 200
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 130) and func1_var2 <= 6.6 then
      func1_var14 = 200
   end
   if func1_var2 >= 6.15 then
      func1_var15 = 100
   else
      func1_var11 = 100
   end
   local func1_var16 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15)
   if func1_var16 <= func1_var7 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var16 <= func1_var7 + func1_var8 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), TARGET_NONE, 0, 0, 0)
   end
   Burrower_C339003_ActAfter_AdjustSpace(ai, goal)
end

Burrower_C339003_ActAfter_AdjustSpace = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 30 then
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_NONE, 0, 0, 0)
   end
end

Burrower_C339003Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Burrower_C339003Battle_Terminate = function(ai, goal)
end

Burrower_C339003Battle_Interupt = function(ai, goal)
   return false
end


