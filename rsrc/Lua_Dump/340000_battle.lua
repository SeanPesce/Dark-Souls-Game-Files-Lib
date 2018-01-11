local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 1.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 1.6
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 4.5
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 4.5
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 3
KuraguSpider_Child340000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetEventRequest()
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = 0
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   if func1_var2 >= 7.7 then
      func1_var6 = 5
      func1_var7 = 10
      func1_var8 = 80
      func1_var9 = 0
      func1_var10 = 5
   elseif func1_var2 >= 5.6 then
      func1_var6 = 10
      func1_var7 = 0
      func1_var8 = 80
      func1_var9 = 0
      func1_var10 = 10
   elseif func1_var2 >= 2.1 then
      func1_var6 = 25
      func1_var7 = 50
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 25
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
      func1_var6 = 8
      func1_var7 = 14
      func1_var8 = 0
      func1_var9 = 70
      func1_var10 = 8
   else
      func1_var6 = 25
      func1_var7 = 50
      func1_var8 = 0
      func1_var9 = 0
      func1_var10 = 25
   end
   local func1_var12 = ai:GetRandam_Int(1, func1_var6 + func1_var7 + func1_var8 + func1_var9 + func1_var10)
   if func1_var12 <= func1_var6 then
      KuraguSpider_Child340000_Act01(ai, goal)
      func1_var11 = 100
   elseif func1_var12 <= func1_var6 + func1_var7 then
      KuraguSpider_Child340000_Act02(ai, goal)
      func1_var11 = 0
   elseif func1_var12 <= func1_var6 + func1_var7 + func1_var8 then
      KuraguSpider_Child340000_Act03(ai, goal)
      func1_var11 = 0
   elseif func1_var12 <= func1_var6 + func1_var7 + func1_var8 + func1_var9 then
      KuraguSpider_Child340000_Act04(ai, goal)
      func1_var11 = 0
   else
      KuraguSpider_Child340000_Act05(ai, goal)
      func1_var11 = 100
   end
   local func1_var13 = ai:GetRandam_Int(1, 100)
   if func1_var13 <= func1_var11 then
      KuraguSpider_Child340000_ActAfter_AdjustSpace(ai, goal, paramTbl)
   end
end

KuraguSpider_Child340000_Act01 = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 2
   local func2_var6 = 0
   if func2_var2 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar3, 0)
      Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3000, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act02 = function(ai, goal)
   local func3_var2 = ai:GetDist(TARGET_ENE_0)
   local func3_var3 = ai:GetRandam_Int(1, 100)
   local func3_var4 = localScriptConfigVar7
   local func3_var5 = localScriptConfigVar7 + 2
   local func3_var6 = 0
   if func3_var2 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar7, 0)
      if func3_var3 <= 50 then
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func3_var3 <= 50 then
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act03 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = localScriptConfigVar11
   local func4_var5 = localScriptConfigVar11 + 2
   local func4_var6 = 0
   if func4_var2 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar11, 0)
      if func4_var3 <= 50 then
         Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      else
         Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func4_var3 <= 50 then
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func4_var4, func4_var5, func4_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act04 = function(ai, goal)
   local func5_var2 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_Act05 = function(ai, goal)
   local func6_var2 = ai:GetDist(TARGET_ENE_0)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = localScriptConfigVar3
   local func6_var5 = localScriptConfigVar3 + 2
   local func6_var6 = 0
   if func6_var2 >= 3 then
      goal:AddSubGoal(GOAL_COMMON_ApproachStep, 5, 700, TARGET_ENE_0, localScriptConfigVar3, 0)
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3001, TARGET_ENE_0, DIST_Middle, 0)
   else
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
      goal:AddSubGoal(GOAL_COMMON_Attack, 3, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

KuraguSpider_Child340000_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetRandam_Int(1, 100)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   if func7_var3 <= 20 then
      if func7_var4 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 1.8)
      elseif func7_var4 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 3.6)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 5.4)
      end
   elseif func7_var3 <= 30 then
      if func7_var4 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 1.8)
      elseif func7_var4 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 3.6)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 3.6)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, -1, AI_DIR_TYPE_L, 5.4)
      end
   elseif func7_var3 <= 40 then
      if func7_var4 <= 33 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 1.8)
      elseif func7_var4 <= 66 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 3.6)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 3.6)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5.4)
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, -1, AI_DIR_TYPE_R, 5.4)
      end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   else
   end
end

KuraguSpider_Child340000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

KuraguSpider_Child340000Battle_Terminate = function(ai, goal)
end

KuraguSpider_Child340000Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = ai:GetDist(TARGET_ENE_0)
   local func10_var6 = 20
   local func10_var7 = 100
   local func10_var8 = 0
   local func10_var9 = 0
   local func10_var10 = 3.5
   if RebByOpGuard_Step(ai, goal, func10_var6, func10_var7, func10_var8, func10_var9, func10_var10) then
      return true
   end
   return false
end


