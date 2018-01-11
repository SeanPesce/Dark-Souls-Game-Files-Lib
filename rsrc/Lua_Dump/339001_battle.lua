local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.7
local localScriptConfigVar2 = 1.2
local localScriptConfigVar3 = 5.2
local localScriptConfigVar4 = 1.3
local localScriptConfigVar5 = 3.4
local localScriptConfigVar6 = 4.5
local localScriptConfigVar7 = 7.8
local localScriptConfigVar8 = 2.8
local localScriptConfigVar9 = 6.4
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 5
Burrower_A339001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   if func1_var2 >= 7.9 then
      func1_var12 = 100
   elseif func1_var2 >= 6.5 then
      func1_var10 = 75
      func1_var12 = 25
   elseif func1_var2 >= 5.1 then
      func1_var10 = 50
      func1_var11 = 50
   elseif func1_var2 >= 4.5 then
      func1_var8 = 25
      func1_var10 = 25
      func1_var11 = 25
      func1_var13 = 25
   elseif func1_var2 >= 3.4 then
      func1_var8 = 40
      func1_var11 = 30
      func1_var13 = 30
   elseif func1_var2 >= 2.8 then
      func1_var7 = 20
      func1_var8 = 20
      func1_var9 = 20
      func1_var11 = 20
      func1_var13 = 20
   elseif func1_var2 >= 1.3 then
      func1_var7 = 25
      func1_var8 = 25
      func1_var9 = 25
      func1_var13 = 25
   else
      func1_var7 = 50
      func1_var13 = 50
   end
   if func1_var4 <= func1_var7 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle)
   elseif func1_var4 <= func1_var7 + func1_var8 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle)
   elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle)
   elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle)
   elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle)
   elseif func1_var4 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), TARGET_NONE, 0, 0, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle)
   end
   Burrower_A339001_ActAfter_AdjustSpace(ai, goal)
end

Burrower_A339001_ActAfter_AdjustSpace = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 30 then
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1.5), TARGET_NONE, 0, 0, 0)
   end
end

Burrower_A339001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Burrower_A339001Battle_Terminate = function(ai, goal)
end

Burrower_A339001Battle_Interupt = function(ai, goal)
   return false
end


