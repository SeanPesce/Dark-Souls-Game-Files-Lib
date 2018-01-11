local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 50
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 50
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 6.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 10
OnIf_332001 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   if func1_var3 >= 10 then
      func1_var7 = 0
      func1_var8 = 20
      func1_var9 = 80
   elseif func1_var3 >= 4 then
      func1_var7 = 0
      func1_var8 = 20
      func1_var9 = 80
   else
      func1_var7 = 0
      func1_var8 = 20
      func1_var9 = 80
   end
   if func1_var4 <= func1_var7 then
   elseif func1_var4 <= func1_var7 + func1_var8 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 1.5), 0, 0, 0, 0)
   elseif func1_var5 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
   elseif func1_var5 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
   end
end

ThreeHaoriBunsin332001Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetEventRequest(0)
   local func2_var9 = ai:GetEventRequest(1)
   local func2_var10 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   local func2_var14 = 0
   local func2_var15 = 0
   local func2_var16 = 0
   local func2_var17 = 0
   local func2_var18 = 0
   local func2_var19 = 0
   if func2_var9 == 1 then
      func2_var18 = 100
   elseif func2_var10 == ROLE_TYPE_Kankyaku and func2_var3 <= 100 then
      func2_var17 = 30
      func2_var19 = 70
   elseif func2_var10 == ROLE_TYPE_Torimaki and func2_var4 <= 100 then
      func2_var17 = 70
      func2_var19 = 30
   elseif func2_var2 >= 8 then
      func2_var12 = 30
      func2_var13 = 20
      func2_var17 = 30
      func2_var19 = 20
   elseif func2_var2 >= 6.5 then
      func2_var12 = 20
      func2_var13 = 20
      func2_var14 = 20
      func2_var17 = 25
      func2_var19 = 15
   elseif func2_var2 >= 4 then
      func2_var12 = 10
      func2_var13 = 20
      func2_var14 = 20
      func2_var15 = 10
      func2_var16 = 10
      func2_var17 = 25
      func2_var19 = 5
   else
      func2_var12 = 0
      func2_var13 = 0
      func2_var14 = 10
      func2_var15 = 15
      func2_var16 = 15
      func2_var17 = 60
   end
   local func2_var20 = ai:GetRandam_Int(1, func2_var12 + func2_var13 + func2_var14 + func2_var15 + func2_var16 + func2_var17 + func2_var18 + func2_var19)
   if func2_var20 <= func2_var12 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
      func2_var11 = 100
   elseif func2_var20 <= func2_var12 + func2_var13 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_None, 0)
      func2_var11 = 100
   elseif func2_var20 <= func2_var12 + func2_var13 + func2_var14 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
      func2_var11 = 100
   elseif func2_var20 <= func2_var12 + func2_var13 + func2_var14 + func2_var15 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 1, 90)
      func2_var11 = 100
   elseif func2_var20 <= func2_var12 + func2_var13 + func2_var14 + func2_var15 + func2_var16 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 1, 90)
      func2_var11 = 100
   elseif func2_var20 <= func2_var12 + func2_var13 + func2_var14 + func2_var15 + func2_var16 + func2_var17 then
      ThreeHaoriBunsin332001StepForLeave(ai, goal)
      func2_var11 = 0
   elseif func2_var20 <= func2_var12 + func2_var13 + func2_var14 + func2_var15 + func2_var16 + func2_var17 + func2_var18 then
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3009, TARGET_ENE_0, DIST_None, 0)
      func2_var11 = 0
   else
      func2_var11 = 100
   end
   local func2_var21 = ai:GetRandam_Int(1, 100)
   if func2_var21 <= func2_var11 then
      ThreeHaoriBunsin332001_ActAfter_AdjustSpace(ai, goal)
   end
end

ThreeHaoriBunsin332001_ActAfter_AdjustSpace = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 2.5), TARGET_NONE, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

ThreeHaoriBunsin332001StepForLeave = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetRandam_Int(1, 100)
   if ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 720, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 722, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 723, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 8, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 721, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 6)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 710, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 712, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 713, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 5, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 711, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_B, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_L, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_R, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
   elseif ai:IsInsideMsbRegion(TARGET_SELF, AI_DIR_TYPE_F, 3, 1302500) then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 700, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 1, 90)
   end
end

ThreeHaoriBunsin332001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ThreeHaoriBunsin332001Battle_Terminate = function(ai, goal)
end

ThreeHaoriBunsin332001Battle_Interupt = function(ai, goal)
   local func7_var2 = ai:GetHpRate(TARGET_SELF)
   if ai:IsInterupt(INTERUPT_Damaged) then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3009, TARGET_ENE_0, DIST_None, 0)
      return true
   end
   return false
end


