local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 50
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 50
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 6.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 10
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 10
ThreeHaori_nomal332002Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetHpRate(TARGET_SELF)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   if func1_var2 >= 8 then
      func1_var8 = 60
      func1_var9 = 40
   elseif func1_var2 >= 6.5 then
      func1_var8 = 50
      func1_var9 = 50
   elseif func1_var2 >= 4 then
      func1_var8 = 20
      func1_var9 = 40
      func1_var10 = 40
   else
      func1_var8 = 15
      func1_var9 = 30
      func1_var10 = 55
   end
   local func1_var13 = ai:GetNpcThinkParamID()
   if func1_var13 == 332003 then
      func1_var10 = 0
   end
   local func1_var14 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12)
   if func1_var14 <= func1_var8 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_None, 0)
      func1_var7 = 100
   elseif func1_var14 <= func1_var8 + func1_var9 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_None, 0)
      func1_var7 = 100
   elseif func1_var14 <= func1_var8 + func1_var9 + func1_var10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_None, 0)
      func1_var7 = 100
   elseif func1_var14 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_None, 1, 90)
      func1_var7 = 0
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_None, 1, 90)
      func1_var7 = 0
   end
   local func1_var15 = ai:GetRandam_Int(1, 100)
   if func1_var15 <= func1_var7 then
      ThreeHaori_nomal332002_ActAfter_AdjustSpace(ai, goal)
   end
end

ThreeHaori_nomal332002_ActAfter_AdjustSpace = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   if func2_var3 <= 20 then
   elseif func2_var3 <= 100 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 3), 0, 0, 0, 0)
   elseif func2_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 4)
   elseif func2_var4 <= 75 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   end
end

ThreeHaori_nomal332002Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

ThreeHaori_nomal332002Battle_Terminate = function(ai, goal)
end

ThreeHaori_nomal332002Battle_Interupt = function(ai, goal)
   return false
end


