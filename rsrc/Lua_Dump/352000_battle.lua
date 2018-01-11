local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 10
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 12
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 16
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 12
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 16
wyvern352000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   local func1_var9 = ai:GetDistXZ(TARGET_ENE_0)
   local func1_var10 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var11 = ai:GetDistY(TARGET_ENE_0)
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
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1512700) then
      func1_var21 = 1
   end
   local func1_var22 = 0
   if func1_var10 <= -4 and func1_var10 >= -7 then
      func1_var22 = 1
   end
   local func1_var23 = 0
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1512701) and ai:IsInsideTargetRegion(TARGET_SELF, 1512701) then
      func1_var23 = 1
   end
   if func1_var21 == 0 then
      func1_var20 = 100
   elseif func1_var22 == 0 then
      func1_var19 = 100
   elseif func1_var11 * 2 <= func1_var9 then
      func1_var12 = 0
      func1_var13 = 5
      func1_var14 = 25
      func1_var15 = 70
      func1_var18 = 0
   elseif func1_var11 <= func1_var9 then
      func1_var12 = 5
      func1_var13 = 20
      func1_var14 = 75
      func1_var15 = 0
      func1_var18 = 0
   elseif func1_var11 * 0.5 <= func1_var9 then
      func1_var12 = 15
      func1_var13 = 75
      func1_var14 = 0
      func1_var15 = 0
      func1_var18 = 10
   else
      func1_var12 = 65
      func1_var13 = 5
      func1_var14 = 0
      func1_var15 = 0
      func1_var18 = 30
   end
   local func1_var24 = ai:GetRandam_Int(1, func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20)
   if func1_var24 <= func1_var12 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 2, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Far, -1, -1)
      func1_var7 = 90
   elseif func1_var24 <= func1_var12 + func1_var13 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 3, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, DIST_Far, -1, -1)
      func1_var7 = 80
   elseif func1_var24 <= func1_var12 + func1_var13 + func1_var14 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 6.5, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Far, -1, -1)
      func1_var7 = 60
   elseif func1_var24 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 12, TARGET_SELF, true, 5)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Far, -1, -1)
      func1_var7 = 40
   elseif func1_var24 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 10, TARGET_SELF, true, 8)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Far, -1, -1)
      func1_var7 = 0
   elseif func1_var24 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_Top, 10, TARGET_SELF, true, 8)
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Far, -1, -1)
      func1_var7 = 0
   elseif func1_var24 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 3, TARGET_SELF, true)
      func1_var7 = 0
   elseif func1_var24 <= func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
      goal:AddSubGoal(GOAL_COMMON_KeepDistYAxis, 10, TARGET_ENE_0, 4, 7, TARGET_ENE_0)
      func1_var7 = 0
   else
      goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 3, TARGET_SELF, true)
      func1_var7 = 0
   end
   local func1_var25 = ai:GetRandam_Int(1, 100)
   if func1_var25 <= func1_var7 then
      wyvern352000_ActAfter_AdjustSpace(ai, goal)
   end
end

wyvern352000_ActAfter_AdjustSpace = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   if func2_var3 <= 0 then
   elseif func2_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, -1, 0)
   elseif func2_var4 <= 60 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, -1, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, -1, 0)
   end
end

wyvern352000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

wyvern352000Battle_Terminate = function(ai, goal)
end

wyvern352000Battle_Interupt = function(ai, goal)
   return false
end


