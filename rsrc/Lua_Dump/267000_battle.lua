local localScriptConfigVar0 = 3.2
local localScriptConfigVar1 = 4.1
local localScriptConfigVar2 = 3.2
local localScriptConfigVar3 = 4.4
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.5
local localScriptConfigVar6 = 2.6
local localScriptConfigVar7 = 4
local localScriptConfigVar8 = 5
local localScriptConfigVar9 = 10
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 2
Ghost_Male267000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetNpcThinkParamID()
   local func1_var3 = 0
   local func1_var4 = 0
   local func1_var5 = 0
   if func1_var2 == 267010 or func1_var2 == 267011 then
      func1_var4 = 1602850
      func1_var5 = 1602850
      func1_var3 = 1
   elseif func1_var2 == 267020 or func1_var2 == 267021 then
      func1_var4 = 1602851
      func1_var5 = 1602851
      func1_var3 = 1
   elseif func1_var2 == 267030 or func1_var2 == 267031 then
      func1_var4 = 1602852
      func1_var5 = 1602852
      func1_var3 = 1
   elseif func1_var2 == 267040 or func1_var2 == 267041 then
      func1_var4 = 1602853
      func1_var5 = 1602853
      func1_var3 = 1
   elseif func1_var2 == 267050 then
      func1_var4 = 1602854
      func1_var5 = 1602854
      func1_var3 = 1
   end
   local func1_var6 = {}
   local func1_var7 = {}
   local func1_var8 = {}
   Common_Clear_Param(func1_var6, func1_var7, func1_var8)
   local func1_var9 = ai:GetDist(TARGET_ENE_0)
   local func1_var10 = 0
   if func1_var3 == 1 then
      if not ai:IsInsideTargetRegion(TARGET_SELF, func1_var4) and not ai:IsInsideTargetRegion(TARGET_SELF, func1_var5) then
         func1_var6[8] = 100
         func1_var10 = 1
      elseif not ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var4) and not ai:IsInsideTargetRegion(TARGET_ENE_0, func1_var5) then
         func1_var6[8] = 100
         func1_var10 = 1
      end
   end
   if func1_var10 == 0 then
      if func1_var9 >= 8 then
         func1_var6[1] = 20
         func1_var6[2] = 40
         func1_var6[3] = 30
         func1_var6[7] = 10
      elseif func1_var9 >= 5 then
         if ai:IsTargetGuard(TARGET_ENE_0) == true then
            func1_var6[1] = 30
            func1_var6[2] = 35
            func1_var6[3] = 25
            func1_var6[7] = 10
         else
            func1_var6[1] = 30
            func1_var6[2] = 35
            func1_var6[3] = 25
            func1_var6[7] = 10
         end
      elseif func1_var9 >= 2.6 then
         if ai:IsTargetGuard(TARGET_ENE_0) == true then
            func1_var6[1] = 15
            func1_var6[2] = 15
            func1_var6[3] = 60
            func1_var6[7] = 10
         else
            func1_var6[1] = 0
            func1_var6[2] = 35
            func1_var6[3] = 30
            func1_var6[7] = 35
         end
      else
         func1_var6[1] = 0
         func1_var6[2] = 50
         func1_var6[7] = 50
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   func1_var7[1] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act01)
   func1_var7[2] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act02)
   func1_var7[3] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act03)
   func1_var7[7] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act07)
   func1_var7[8] = REGIST_FUNC(ai, goal, Ghost_Male267000_Act08)
   local func1_var11 = {0, 60, 20, 10, 10, 0}
   local func1_var12 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var11)
   Common_Battle_Activate(ai, goal, func1_var6, func1_var7, func1_var12, func1_var8)
end

Ghost_Male267000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar5, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3002, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Male267000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, 0)
   if func3_var4 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3000, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Male267000_Act03 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar7, TARGET_SELF, true, 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3003, TARGET_ENE_0, DIST_Middle)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Male267000_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, true, 0)
   if func5_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, 3008, TARGET_ENE_0, DIST_Middle)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Ghost_Male267000_Act08 = function(ai, goal, func6_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_INITIAL, 2, TARGET_SELF, false, -1)
   goal:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Ghost_Male267000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ghost_Male267000Battle_Terminate = function(ai, goal)
end

Ghost_Male267000Battle_Interupt = function(ai, goal)
   return false
end


