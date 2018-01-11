DragonZombi_m16_342002Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetDistY(TARGET_ENE_0)
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
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1602761) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1602764) then
      func1_var8 = 80
      func1_var9 = 0
      func1_var10 = 0
      func1_var11 = 20
      func1_var12 = 0
      func1_var13 = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602762) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1602765) then
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 80
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 20
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602760) then
      func1_var8 = 0
      func1_var9 = 100
      func1_var10 = 0
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602761) then
      func1_var8 = 100
      func1_var9 = 0
      func1_var10 = 0
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602762) then
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 100
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602763) then
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 0
      func1_var11 = 0
      func1_var12 = 100
      func1_var13 = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602764) then
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 0
      func1_var11 = 100
      func1_var12 = 0
      func1_var13 = 0
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1602765) then
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 0
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 100
   else
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 0
      func1_var11 = 0
      func1_var12 = 0
      func1_var13 = 0
   end
   if func1_var5 <= func1_var8 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3000, TARGET_ENE_0, DIST_None, 0)
   elseif func1_var5 <= func1_var8 + func1_var9 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3001, TARGET_ENE_0, DIST_None, 0)
   elseif func1_var5 <= func1_var8 + func1_var9 + func1_var10 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3002, TARGET_ENE_0, DIST_None, 0)
   elseif func1_var5 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3003, TARGET_ENE_0, DIST_None, 0)
   elseif func1_var5 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3004, TARGET_ENE_0, DIST_None, 0)
   elseif func1_var5 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3005, TARGET_ENE_0, DIST_None, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), TARGET_NONE, 0, 0, 0)
   end
end

DragonZombi_m16_342002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

DragonZombi_m16_342002Battle_Terminate = function(ai, goal)
end

DragonZombi_m16_342002Battle_Interupt = function(ai, goal)
   return false
end


