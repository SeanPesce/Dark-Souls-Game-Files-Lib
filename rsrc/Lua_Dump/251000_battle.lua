local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.3
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.3
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.6
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.2
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 3.8
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 0
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 0
HusibitoKojiki251000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var5 >= 3.8 then
      func1_var2[1] = 5
      func1_var2[2] = 5
      func1_var2[3] = 10
      func1_var2[7] = 80
   else
      func1_var2[1] = 30
      func1_var2[2] = 40
      func1_var2[3] = 30
      func1_var2[7] = 0
   end
   local func1_var7 = {localScriptConfigVar5, 0, 3002, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = {localScriptConfigVar1, 0, 30, 70, nil, nil, nil, nil}
   func1_var4[2] = func1_var7
   func1_var7 = {localScriptConfigVar7, 0, 3003, DIST_Middle}
   func1_var4[3] = func1_var7
   func1_var7 = {localScriptConfigVar9, 0, 3004, DIST_Middle}
   func1_var4[7] = func1_var7
   func1_var7 = {0, 45, 20, 20, 0, 8, 7}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

HusibitoKojiki251000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

HusibitoKojiki251000Battle_Terminate = function(ai, goal)
end

HusibitoKojiki251000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func4_var2 = 3
   local func4_var3 = 15
   local func4_var4 = 30
   local func4_var5 = 35
   local func4_var6 = 35
   local func4_var7 = 4
   if Damaged_Step(ai, goal, func4_var2, func4_var3, func4_var4, func4_var5, func4_var6, func4_var7) then
      return true
   end
   local func4_var8 = 5.8
   local func4_var9 = 30
   local func4_var10 = ai:GetDist(TARGET_ENE_0)
   if MissSwing_Int(ai, goal, func4_var8, func4_var9) then
      if func4_var10 >= 2.4 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func4_var11 = 20
   local func4_var12 = 30
   local func4_var13 = 35
   local func4_var14 = 35
   local func4_var15 = 4
   if RebByOpGuard_Step(ai, goal, func4_var11, func4_var12, func4_var13, func4_var14, func4_var15) then
      return true
   end
   return false
end


