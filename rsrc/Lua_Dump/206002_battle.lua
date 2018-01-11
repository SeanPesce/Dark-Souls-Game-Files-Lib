local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.8
local localScriptConfigVar10 = 4
local localScriptConfigVar11 = 6
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 3
Ghoul_Human206002Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var6 == 10 then
      func1_var2[8] = 100
   elseif ai:IsLadderAct(TARGET_SELF) then
      func1_var2[10] = 100
   elseif func1_var5 >= 8 then
      func1_var2[1] = 10
      func1_var2[2] = 10
      func1_var2[3] = 10
      func1_var2[4] = 10
      func1_var2[5] = 50
      func1_var2[6] = 10
   elseif func1_var5 >= 4 then
      func1_var2[1] = 10
      func1_var2[2] = 10
      func1_var2[3] = 10
      func1_var2[4] = 20
      func1_var2[5] = 30
      func1_var2[6] = 20
   elseif func1_var5 >= 3 then
      func1_var2[1] = 10
      func1_var2[2] = 20
      func1_var2[3] = 20
      func1_var2[4] = 30
      func1_var2[5] = 10
      func1_var2[6] = 10
   else
      func1_var2[1] = 0
      func1_var2[2] = 40
      func1_var2[3] = 20
      func1_var2[4] = 10
      func1_var2[5] = 0
      func1_var2[6] = 30
   end
   local func1_var7 = {localScriptConfigVar3, 0, 3001, DIST_Middle}
   func1_var4[1] = func1_var7
   func1_var7 = {localScriptConfigVar1, 0, 40, 100, nil, nil, nil, nil}
   func1_var4[2] = func1_var7
   func1_var7 = {localScriptConfigVar5, 0, 3002, DIST_Middle}
   func1_var4[3] = func1_var7
   func1_var7 = {localScriptConfigVar9, 0, 3004, DIST_Near, 3002, DIST_Middle, nil}
   func1_var4[4] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ghoul_Human206002_Act05)
   func1_var3[5] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ghoul_Human206002_Act06)
   func1_var3[6] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ghoul_Human206002_Act08)
   func1_var3[8] = func1_var7
   func1_var7 = REGIST_FUNC
   func1_var7 = func1_var7(ai, goal, Ghoul_Human206002_Act10)
   func1_var3[10] = func1_var7
   func1_var7 = {0, 60, 10, 10, 10, 6, 4}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

Ghoul_Human206002_Act05 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar7
   local func2_var6 = localScriptConfigVar7 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghoul_Human206002_Act06 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar13
   local func3_var6 = localScriptConfigVar13 + 2
   local func3_var7 = 0
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghoul_Human206002_Act08 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghoul_Human206002_Act10 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = ai:GetRandam_Int(1, 100)
   local func5_var6 = localScriptConfigVar5
   local func5_var7 = localScriptConfigVar5 + 2
   local func5_var8 = 0
   local func5_var9 = 3002
   local func5_var10 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var6, func5_var7, func5_var8, func5_var9, func5_var10)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghoul_Human206002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ghoul_Human206002Battle_Terminate = function(ai, goal)
end

Ghoul_Human206002Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
   local func8_var2 = ai:GetRandam_Int(1, 100)
   local func8_var3 = ai:GetRandam_Int(1, 100)
   local func8_var4 = ai:GetRandam_Int(1, 100)
   local func8_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 2)
      local func8_var6, func8_var6, func8_var6 = ai:GetRandam_Int(1, 100)
   end
   local func8_var7 = 3
   local func8_var8 = 15
   local func8_var9 = 40
   local func8_var10 = 30
   if FindAttack_Step(ai, goal, func8_var7, func8_var8, func8_var9, func8_var10, 30) then
      return true
   end
   --[[ DECOMPILER ERROR 1093: Confused at declaration of local variable ]]
end


