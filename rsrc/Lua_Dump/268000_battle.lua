local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3.2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 10
Ghost_Female268000Battle_Activate = function(ai, goal)
   local func1_var2 = 0
   local func1_var3 = 0
   local func1_var4 = 0
   func1_var3 = 1602860
   func1_var4 = 1602860
   func1_var2 = 1
   local func1_var5 = {}
   local func1_var6 = {}
   local func1_var7 = {}
   Common_Clear_Param(func1_var5, func1_var6, func1_var7)
   local func1_var8 = ai:GetDist(TARGET_ENE_0)
   local func1_var9 = ai:GetEventRequest(0)
   local func1_var10 = ai:GetDist(TARGET_ENE_0)
   local func1_var11 = 0
   if func1_var2 == 1 then
      if not ai:IsInsideTargetRegion(TARGET_SELF, func1_var3) and not ai:IsInsideTargetRegion(TARGET_SELF, func1_var4) then
         func1_var5[8] = 100
         func1_var11 = 1
      elseif not ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var3) and not ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var4) then
         func1_var5[8] = 100
         func1_var11 = 1
      end
   end
   if func1_var11 == 0 then
      if ai:IsFinishTimer(0) == true then
         func1_var5[9] = 100
      elseif func1_var10 >= 8 then
         func1_var5[1] = 0
         func1_var5[7] = 0
         func1_var5[3] = 5
         func1_var5[6] = 95
      elseif func1_var10 >= 5 then
         func1_var5[1] = 5
         func1_var5[7] = 5
         func1_var5[3] = 25
         func1_var5[6] = 65
      elseif func1_var10 >= 2.5 then
         func1_var5[1] = 15
         func1_var5[7] = 15
         func1_var5[3] = 30
         func1_var5[6] = 40
      else
         func1_var5[1] = 40
         func1_var5[7] = 40
         func1_var5[3] = 10
         func1_var5[6] = 10
      end
   end
   func1_var6[1] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act01)
   func1_var6[3] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act03)
   func1_var6[6] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act06)
   func1_var6[7] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act07)
   func1_var6[8] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act08)
   func1_var6[9] = REGIST_FUNC(ai, goal, Ghost_Female268000_Act09)
   local func1_var12 = {0, 60, 10, 30, 0, 0}
   local func1_var13 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var12)
   Common_Battle_Activate(ai, goal, func1_var5, func1_var6, func1_var13, func1_var7)
end

Ghost_Female268000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Female268000_Act03 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Female268000_Act06 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_Middle)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 3), TARGET_ENE_0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Female268000_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Female268000_Act08 = function(ai, goal, func6_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Female268000_Act09 = function(ai, goal, func7_param2)
   ai:SetTimer(0, 9999)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_SELF, DIST_Middle, 0, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Female268000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ghost_Female268000Battle_Terminate = function(ai, goal)
end

Ghost_Female268000Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 5
   local func10_var7 = 30
   if Damaged_Act(ai, goal, func10_var6, func10_var7) then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, func10_var6, TARGET_ENE_0, false, -1)
      return true
   end
   return false
end


