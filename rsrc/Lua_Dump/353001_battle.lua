LakeBeast_m12_353001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   local func1_var9 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   local func1_var16 = 0
   local func1_var17 = 0
   local func1_var18 = 0
   local func1_var19 = 0
   if func1_var8 >= 44.6 and func1_var8 <= 61.3 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 38.4) then
      func1_var15 = 100
   end
   if func1_var8 <= 44.6 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 32.6) then
      func1_var10 = 100
   end
   if func1_var8 >= 45.1 and func1_var8 <= 56.1 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 34.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      func1_var16 = 100
   end
   if func1_var8 <= 45.1 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 50) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
      func1_var11 = 100
   end
   if func1_var8 >= 46.4 and func1_var8 <= 60.7 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 38.6) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      func1_var17 = 100
   end
   if func1_var8 <= 46.4 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 47.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
      func1_var12 = 100
   end
   if func1_var8 >= 53.4 and func1_var8 <= 65 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 38.4) then
      func1_var13 = 100
   end
   if func1_var8 >= 65 and func1_var8 <= 90 and func1_var9 <= 10 then
      func1_var18 = 100
   end
   if func1_var8 >= 80 and func1_var8 <= 120 and func1_var9 <= 17 then
      func1_var14 = 100
   end
   local func1_var20 = ai:GetRandam_Int(1, func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19)
   if func1_var20 <= func1_var10 then
      LakeBeast_m12_353001_Act01(ai, goal)
      func1_var7 = 100
   elseif func1_var20 <= func1_var10 + func1_var11 then
      LakeBeast_m12_353001_Act02(ai, goal)
      func1_var7 = 100
   elseif func1_var20 <= func1_var10 + func1_var11 + func1_var12 then
      LakeBeast_m12_353001_Act03(ai, goal)
      func1_var7 = 0
   elseif func1_var20 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      LakeBeast_m12_353001_Act04(ai, goal)
      func1_var7 = 0
   elseif func1_var20 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      LakeBeast_m12_353001_Act05(ai, goal)
      func1_var7 = 0
   elseif func1_var20 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      LakeBeast_m12_353001_Act06(ai, goal)
      func1_var7 = 0
   elseif func1_var20 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      LakeBeast_m12_353001_Act07(ai, goal)
      func1_var7 = 0
   elseif func1_var20 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      LakeBeast_m12_353001_Act08(ai, goal)
      func1_var7 = 0
   elseif func1_var20 <= func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
      LakeBeast_m12_353001_Act09(ai, goal)
      func1_var7 = 0
   else
      LakeBeast_m12_353001_Act10(ai, goal)
      func1_var7 = 0
   end
end

LakeBeast_m12_353001_Act01 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 40, -1, 20)
end

LakeBeast_m12_353001_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
end

LakeBeast_m12_353001_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

LakeBeast_m12_353001_Act04 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 60, -1, 20)
end

LakeBeast_m12_353001_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast_m12_353001_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 45, -1, 20)
end

LakeBeast_m12_353001_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 45)
end

LakeBeast_m12_353001_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, 45)
end

LakeBeast_m12_353001_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast_m12_353001_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0, 0, 0)
end

LakeBeast_m12_353001_ActAfter_AdjustSpace = function(ai, goal)
end

LakeBeast_m12_353001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LakeBeast_m12_353001Battle_Terminate = function(ai, goal)
end

LakeBeast_m12_353001Battle_Interupt = function(ai, goal)
   return false
end


