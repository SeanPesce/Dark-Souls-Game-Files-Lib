local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 1.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.4
local localScriptConfigVar4 = 1
local localScriptConfigVar5 = 3.2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.2
Inunezumi120000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   if func1_var2 >= 5 then
      func1_var7 = 15
      func1_var8 = 15
      func1_var9 = 55
      func1_var10 = 15
   elseif func1_var2 >= 1 then
      func1_var7 = 25
      func1_var8 = 25
      func1_var9 = 25
      func1_var10 = 25
   else
      func1_var7 = 35
      func1_var8 = 35
      func1_var9 = 0
      func1_var10 = 30
   end
   local func1_var11 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10)
   if func1_var11 <= func1_var7 then
      local func1_var12 = localScriptConfigVar1
      local func1_var13 = localScriptConfigVar1 + 1.5
      local func1_var14 = 0
      Approach_Act(ai, goal, func1_var12, func1_var13, func1_var14)
      if func1_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      end
      func1_var6 = 100
   elseif func1_var11 <= func1_var7 + func1_var8 then
      local func1_var12 = localScriptConfigVar3
      local func1_var13 = localScriptConfigVar3 + 1.5
      local func1_var14 = 0
      Approach_Act(ai, goal, func1_var12, func1_var13, func1_var14)
      if func1_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      end
      func1_var6 = 100
   elseif func1_var11 <= func1_var7 + func1_var8 + func1_var9 then
      local func1_var12 = localScriptConfigVar5
      local func1_var13 = localScriptConfigVar5 + 1.5
      local func1_var14 = 0
      Approach_Act(ai, goal, func1_var12, func1_var13, func1_var14)
      if func1_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      end
      func1_var6 = 100
   else
      local func1_var12 = localScriptConfigVar7
      local func1_var13 = localScriptConfigVar7 + 1.5
      local func1_var14 = 0
      Approach_Act(ai, goal, func1_var12, func1_var13, func1_var14)
      if func1_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, DIST_Near, 0)
      end
      func1_var6 = 100
   end
   local func1_var12 = ai:GetRandam_Int(1, 100)
   if func1_var12 <= func1_var6 then
      if func1_var4 <= 35 then
      elseif func1_var4 <= 80 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.8, 1.4), TARGET_ENE_0, 0, 0, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, 2, TARGET_ENE_0, true, -1)
      end
   end
end

Inunezumi120000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Inunezumi120000Battle_Terminate = function(ai, goal)
end

Inunezumi120000Battle_Interupt = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = ai:GetDist(TARGET_ENE_0)
   local func4_var6 = 4
   local func4_var7 = 15
   local func4_var8 = 100
   local func4_var9 = 0
   local func4_var10 = 0
   local func4_var11 = 3.5
   if FindAttack_Step(ai, goal, func4_var6, func4_var7, func4_var8, func4_var9, func4_var10, func4_var11) then
      return true
   end
   local func4_var12 = 20
   local func4_var13 = 100
   local func4_var14 = 0
   local func4_var15 = 0
   local func4_var16 = 3.5
   if RebByOpGuard_Step(ai, goal, func4_var12, func4_var13, func4_var14, func4_var15, func4_var16) then
      return true
   end
   return false
end


