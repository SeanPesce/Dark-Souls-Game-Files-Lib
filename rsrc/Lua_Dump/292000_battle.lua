local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.1
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.4
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 5.6
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2.5
HonebutoSk_Kouhu292000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if not ai:HasSpecialEffectId(TARGET_SELF, 5401) then
      func1_var2[4] = 100
   elseif func1_var5 >= 6.6 then
      func1_var2[1] = 10
      func1_var2[2] = 0
      func1_var2[3] = 80
      func1_var2[9] = 10
   elseif func1_var5 >= 3.2 then
      func1_var2[1] = 30
      func1_var2[2] = 40
      func1_var2[3] = 0
      func1_var2[9] = 30
   else
      func1_var2[1] = 50
      func1_var2[2] = 25
      func1_var2[3] = 0
      func1_var2[9] = 25
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, HonebutoSk_Kouhu292000_Act01)
   local func1_var6 = {localScriptConfigVar1, 0, 50, 50, nil, nil, nil, nil}
   func1_var4[2] = func1_var6
   func1_var6 = {localScriptConfigVar9, 0, 3004, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, HonebutoSk_Kouhu292000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = {localScriptConfigVar5, 0, 50, 50, 3002, 3003, nil, 100}
   func1_var4[9] = func1_var6
   func1_var6 = {0, 35, 5, 30, 0, 15, 15}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

HonebutoSk_Kouhu292000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar11
   local func2_var6 = localScriptConfigVar11 + 2
   local func2_var7 = 0
   local func2_var8 = 3005
   local func2_var9 = DIST_Middle
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_Middle, 0, 180)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

HonebutoSk_Kouhu292000_Act04 = function(ai, goal, func3_param2)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_SELF, DIST_None)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

HonebutoSk_Kouhu292000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HonebutoSk_Kouhu292000Battle_Terminate = function(ai, goal)
end

HonebutoSk_Kouhu292000Battle_Interupt = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = 3
   local func6_var7 = 25
   local func6_var8 = 30
   local func6_var9 = 35
   local func6_var10 = 35
   local func6_var11 = 4
   if Damaged_Step(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10, func6_var11) then
      return true
   end
   local func6_var12 = 3.2
   local func6_var13 = 50
   if GuardBreak_Act(ai, goal, func6_var12, func6_var13) then
      if func6_var5 >= 1.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var14 = 5.6
   local func6_var15 = 30
   if MissSwing_Int(ai, goal, func6_var14, func6_var15) then
      if func6_var5 >= 3.2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var16 = 20
   local func6_var17 = 30
   local func6_var18 = 35
   local func6_var19 = 35
   local func6_var20 = 4
   if RebByOpGuard_Step(ai, goal, func6_var16, func6_var17, func6_var18, func6_var19, func6_var20) then
      return true
   end
   return false
end


