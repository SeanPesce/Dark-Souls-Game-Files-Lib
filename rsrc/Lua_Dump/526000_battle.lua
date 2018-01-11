local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 4
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 6
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 8
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 8
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 5
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 25
local localScriptConfigVar16 = 8
local localScriptConfigVar17 = 14
local localScriptConfigVar18 = -6
local localScriptConfigVar19 = -3
Donsyoku526000Battle_Activate = function(ai, goal)
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
   local func1_var19 = 0
   local func1_var20 = 0
   local func1_var21 = 0
   local func1_var22 = 0
   local func1_var23 = 0
   local func1_var24 = 0
   local func1_var25 = 0
   local func1_var26 = 0
   local func1_var27 = 0
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) and func1_var3 <= -0.5 then
      func1_var18 = 3
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and func1_var3 <= -3 then
      func1_var23 = 3
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and func1_var3 >= 0 and func1_var3 <= 2 then
      func1_var19 = 1
   else
      func1_var19 = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 200) and func1_var3 >= 0 and func1_var3 <= 5 then
      func1_var20 = 1.5
   else
      func1_var20 = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and func1_var3 >= 0 and func1_var3 <= 5 then
      func1_var21 = 1.5
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 220) then
      func1_var21 = 0
   else
      func1_var21 = 0.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 240) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 330) and func1_var3 >= 0 and func1_var3 <= 10 then
      func1_var22 = 2.5
   end
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 170) then
      if func1_var3 >= 2 then
         func1_var24 = 2.5
      else
         func1_var24 = 5
      end
   elseif func1_var3 <= 3 then
      func1_var24 = 1
   end
   -- Tried to add an 'end' here but it's incorrect
   if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and func1_var3 >= 8 and func1_var3 <= 14 then
      func1_var26 = 1
   elseif func1_var3 >= 8 and func1_var3 <= 14 then
      func1_var26 = 0.75
   elseif func1_var3 >= 4 and func1_var3 <= 8 then
      func1_var26 = 0.25
   end
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 120, 16)
   if ai:IsInsideObserve(0) and func1_var2 <= 0.6 and ai:IsFinishTimer(1) == true then
      func1_var25 = 1
   end
   if func1_var3 >= 10 and func1_var3 <= 25 then
      func1_var27 = 1.5
   elseif func1_var3 >= 10 then
      func1_var27 = 1
   end
   if func1_var3 >= 10 then
      func1_var8 = 0 * func1_var18
      func1_var9 = 5 * func1_var19
      func1_var10 = 5 * func1_var20
      func1_var11 = 5 * func1_var21
      func1_var12 = 0 * func1_var22
      func1_var13 = 0 * func1_var23
      func1_var14 = 0 * func1_var24
      func1_var15 = 15 * func1_var25
      func1_var16 = 15 * func1_var26
      func1_var17 = 30 * func1_var27
   elseif func1_var3 >= 2 then
      func1_var8 = 0 * func1_var18
      func1_var9 = 30 * func1_var19
      func1_var10 = 30 * func1_var20
      func1_var11 = 30 * func1_var21
      func1_var12 = 15 * func1_var22
      func1_var13 = 0 * func1_var23
      func1_var14 = 15 * func1_var24
      func1_var15 = 15 * func1_var25
      func1_var16 = 15 * func1_var26
      func1_var17 = 0 * func1_var27
   else
      func1_var8 = 30 * func1_var18
      func1_var9 = 30 * func1_var19
      func1_var10 = 30 * func1_var20
      func1_var11 = 30 * func1_var21
      func1_var12 = 15 * func1_var22
      func1_var13 = 30 * func1_var23
      func1_var14 = 15 * func1_var24
      func1_var15 = 15 * func1_var25
      func1_var16 = 0 * func1_var26
      func1_var17 = 0 * func1_var27
   end
   local func1_var28 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17)
   if func1_var28 <= func1_var8 then
      Donsyoku_Act1(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 then
      Donsyoku_Act2(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 then
      Donsyoku_Act3(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      Donsyoku_Act4(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      Donsyoku_Act5(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      Donsyoku_Act6(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      Donsyoku_Act7(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      Donsyoku_Act8(ai, goal)
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      Donsyoku_Act9(ai, goal)
   else
      Donsyoku_Act10(ai, goal)
   end
end

Donsyoku_Act1 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3000, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act2 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3001, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act3 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act4 = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, true, -1)
   if func5_var2 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 30, 3003, TARGET_ENE_0, 15, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3004, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Donsyoku_Act5 = function(ai, goal)
   local func6_var2 = 0
   local func6_var3 = ai:GetPartsDmg(func6_var2)
   if func6_var3 == PARTS_DMG_FINAL then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3006, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Donsyoku_Act6 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3010, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku_Act7 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 30, 3007, TARGET_ENE_0, DIST_Middle, 0, -1)
end

Donsyoku_Act8 = function(ai, goal)
   ai:SetTimer(1, 30)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3008, TARGET_ENE_0, DIST_None, 0)
end

Donsyoku_Act9 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, TARGET_ENE_0, localScriptConfigVar17, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 30, 3009, TARGET_ENE_0, DIST_Middle, -1, 20)
end

Donsyoku_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 20, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 25, TARGET_SELF, true, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 30, 3003, TARGET_ENE_0, DIST_None, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3004, TARGET_ENE_0, DIST_Middle, 0)
end

Donsyoku526000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Donsyoku526000Battle_Terminate = function(ai, goal)
end

Donsyoku526000Battle_Interupt = function(ai, goal)
   local func14_var2 = ai:GetDist(TARGET_ENE_0)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   local func14_var4 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_SuccessThrow) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, 0, 0, 0, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_Damaged) then
      local func14_var5 = ai:GetEventRequest(0)
      if func14_var5 == 1 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 45) and func14_var2 <= 5 and ai:IsFinishTimer(0) == true and func14_var3 <= 100 then
         ai:SetTimer(0, 30)
         goal:ClearSubGoal()
         if func14_var4 <= 25 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 30, 3003, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_ComboAttack_SuccessAngle180, 30, 3003, TARGET_ENE_0, DIST_None, 0)
            goal:AddSubGoal(GOAL_COMMON_ComboFinal, 30, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
   end
   return false
end


