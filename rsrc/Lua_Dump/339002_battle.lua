local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 0
local localScriptConfigVar4 = 0.5
local localScriptConfigVar5 = 2.7
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 0
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 4.3
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4.4
Burrower_B339002Battle_Activate = function(ai, goal)
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
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412315) then
      func1_var7 = 100
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412316) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412317) then
      func1_var8 = 100
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412318) then
      func1_var10 = 250
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 100) and func1_var2 <= 2.7 and func1_var2 >= 0.3 then
      func1_var9 = 250
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 130) and func1_var2 <= 4.4 then
      func1_var11 = 200
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 100) and func1_var2 <= 4.4 then
      func1_var12 = 200
   end
   if func1_var2 >= 2.7 then
      func1_var13 = 100
   elseif func1_var2 >= 0.8 then
      func1_var8 = 100
      func1_var9 = 250
   else
      func1_var7 = 100
      func1_var8 = 100
      func1_var9 = 250
   end
   local func1_var14 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13)
   if func1_var14 <= func1_var7 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var14 <= func1_var7 + func1_var8 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var14 <= func1_var7 + func1_var8 + func1_var9 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var14 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var14 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, -1)
   elseif func1_var14 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 0, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), TARGET_NONE, 0, 0, 0)
   end
   Burrower_B339002_ActAfter_AdjustSpace(ai, goal)
end

Burrower_B339002_ActAfter_AdjustSpace = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 30 then
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_NONE, 0, 0, 0)
   end
end

Burrower_B339002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Burrower_B339002Battle_Terminate = function(ai, goal)
end

Burrower_B339002Battle_Interupt = function(ai, goal)
   return false
end


