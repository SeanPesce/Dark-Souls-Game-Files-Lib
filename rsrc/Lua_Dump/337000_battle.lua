local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.3
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.35
local localScriptConfigVar4 = 1.9
local localScriptConfigVar5 = 4.7
local localScriptConfigVar6 = 1.9
local localScriptConfigVar7 = 5.55
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 10
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 10
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 10
Kinobori337000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   ai:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 95, 2)
   if ai:HasSpecialEffectId(TARGET_SELF, 5111) then
      if func1_var2 <= 7.5 and func1_var3 <= -2.5 then
         goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3002, TARGET_ENE_0, DIST_None, 0, -1)
      elseif func1_var2 <= 2.5 then
         if func1_var4 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3000, TARGET_ENE_0, DIST_None, 0, -1)
         else
            goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3001, TARGET_ENE_0, DIST_None, 0, -1)
         end
      else
         goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
      end
   else
      local func1_var7 = 0
      local func1_var8 = 0
      local func1_var9 = 0
      local func1_var10 = 0
      local func1_var11 = 0
      local func1_var12 = 0
      local func1_var13 = 0
      local func1_var14 = 0
      local func1_var15 = 0
      if func1_var2 >= 4.7 then
         func1_var7 = 5
         func1_var8 = 5
         func1_var9 = 45
         func1_var10 = 45
      elseif func1_var2 >= 3.3 then
         func1_var7 = 35
         func1_var8 = 35
         func1_var9 = 15
         func1_var10 = 15
      elseif func1_var2 >= 1.9 then
         func1_var7 = 45
         func1_var8 = 45
         func1_var9 = 5
         func1_var10 = 5
      elseif func1_var2 >= 1 then
         if ai:IsFinishTimer(1) == true then
            func1_var7 = 45
            func1_var8 = 46
            func1_var11 = 3
            func1_var14 = 3
            func1_var15 = 3
         else
            func1_var7 = 50
            func1_var8 = 50
         end
      elseif func1_var2 >= 0.6 then
         if ai:IsFinishTimer(1) == true then
            func1_var7 = 20
            func1_var8 = 20
            func1_var11 = 20
            func1_var14 = 20
            func1_var15 = 20
         else
            func1_var7 = 50
            func1_var8 = 50
         end
      elseif ai:IsFinishTimer(1) == true then
         func1_var7 = 15
         func1_var8 = 15
         func1_var11 = 20
         func1_var13 = 30
         func1_var14 = 10
         func1_var15 = 10
      else
         func1_var7 = 25
         func1_var8 = 25
         func1_var13 = 50
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local func1_var16 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15)
      if func1_var16 <= func1_var7 then
         local func1_var17 = localScriptConfigVar1
         local func1_var18 = localScriptConfigVar1 + 3
         local func1_var19 = 0
         local func1_var20 = 3000
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         GetWellSpace_Odds = 100
      elseif func1_var16 <= func1_var7 + func1_var8 then
         local func1_var17 = localScriptConfigVar3
         local func1_var18 = localScriptConfigVar3 + 3
         local func1_var19 = 0
         local func1_var20 = 3001
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         GetWellSpace_Odds = 100
      elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 then
         local func1_var17 = localScriptConfigVar5
         local func1_var18 = localScriptConfigVar5 + 3
         local func1_var19 = 0
         local func1_var20 = 3002
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         GetWellSpace_Odds = 100
      elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
         local func1_var17 = localScriptConfigVar7
         local func1_var18 = localScriptConfigVar7 + 3
         local func1_var19 = 0
         local func1_var20 = 3003
         local func1_var21 = DIST_Middle
         Approach_and_Attack_Act(ai, goal, func1_var17, func1_var18, func1_var19, func1_var20, func1_var21)
         GetWellSpace_Odds = 100
      elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
         GetWellSpace_Odds = 0
      elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2.5)
         GetWellSpace_Odds = 0
      elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle)
         GetWellSpace_Odds = 0
      elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
         GetWellSpace_Odds = 0
      elseif func1_var16 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         ai:SetTimer(1, 3)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
         GetWellSpace_Odds = 0
      end
      local func1_var17 = ai:GetRandam_Int(1, 100)
      if func1_var17 <= GetWellSpace_Odds then
         if func1_var5 <= 60 then
         elseif func1_var5 <= 65 then
            goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
         elseif func1_var5 <= 85 then
            if func1_var6 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
            elseif func1_var6 <= 75 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
            end
         else
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 3, TARGET_ENE_0, true, -1)
         end
         -- Tried to add an 'end' here but it's incorrect
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

Kinobori337000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kinobori337000Battle_Terminate = function(ai, goal)
end

Kinobori337000Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, 6)
         if func4_var3 <= 15 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2.5)
         elseif func4_var3 <= 30 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2.5)
         elseif func4_var3 <= 45 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
         elseif func4_var3 <= 60 then
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
         else
            goal:ClearSubGoal()
            goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 5, 3004, TARGET_ENE_0, DIST_None)
         end
         -- Tried to add an 'end' here but it's incorrect
         return true
         -- Tried to add an 'end' here but it's incorrect
         local func4_var5 = 5
         local func4_var6 = 25
         local func4_var7 = 30
         local func4_var8 = 35
         local func4_var9 = 35
         local func4_var10 = 2.5
         if Damaged_Step(ai, goal, func4_var5, func4_var6, func4_var7, func4_var8, func4_var9, func4_var10) then
            return true
         end
         local func4_var11 = 6
         local func4_var12 = 15
         local func4_var13 = 0
         local func4_var14 = 15
         local func4_var15 = Shoot_2dist(ai, goal, func4_var11, func4_var12, func4_var13, func4_var14)
         if func4_var15 == 1 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
            return true
         elseif func4_var15 == 2 then
            if func4_var4 <= 50 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2.5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2.5)
            end
            return true
         end
         local func4_var16 = 35
         local func4_var17 = 50
         local func4_var18 = 25
         local func4_var19 = 25
         local func4_var20 = 2.5
         if RebByOpGuard_Step(ai, goal, func4_var16, func4_var17, func4_var18, func4_var19, func4_var20) then
            return true
         end
         return false
end


