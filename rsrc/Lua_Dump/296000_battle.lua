local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 3
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 1.5
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 3
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 1.5
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 2.5
totem296000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetHpRate(TARGET_SELF)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   local func1_var16 = 0
   local func1_var17 = 0
   local func1_var18 = 0
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 20) and func1_var3 <= 1.5 then
      func1_var8 = 55
      func1_var9 = 30
      func1_var16 = 10
      func1_var17 = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 15) and func1_var3 <= 3 then
      func1_var9 = 60
      func1_var17 = 20
      func1_var18 = 20
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 20) and func1_var3 <= 1.5 then
      func1_var10 = 55
      func1_var11 = 30
      func1_var16 = 10
      func1_var17 = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 15) and func1_var3 <= 3 then
      func1_var11 = 60
      func1_var17 = 20
      func1_var18 = 20
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 20) and func1_var3 <= 1.5 then
      func1_var12 = 55
      func1_var13 = 30
      func1_var16 = 10
      func1_var17 = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 15) and func1_var3 <= 3 then
      func1_var13 = 60
      func1_var17 = 20
      func1_var18 = 20
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 20) and func1_var3 <= 1.5 then
      func1_var14 = 55
      func1_var15 = 30
      func1_var16 = 10
      func1_var17 = 5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 15) and func1_var3 <= 3 then
      func1_var15 = 60
      func1_var17 = 20
      func1_var18 = 20
   elseif func1_var3 <= 1.5 then
      func1_var16 = 80
      func1_var17 = 20
   elseif func1_var3 <= 2.5 then
      func1_var17 = 80
      func1_var18 = 20
   else
      func1_var18 = 100
   end
   local func1_var19 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18)
   if func1_var19 <= func1_var8 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   elseif func1_var19 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, ai:GetRandam_Float(1.3, 2.8), TARGET_None, true, -1)
   end
end

totem296000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

totem296000Battle_Terminate = function(ai, goal)
end

totem296000Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Damaged) and func4_var2 >= 7 and func4_var3 <= 75 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 2, TARGET_None, false, -1)
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_SELF, 0, 0, 0)
      return true
   end
   return false
end


