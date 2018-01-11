local localScriptConfigVar0 = 4.6
local localScriptConfigVar1 = 19
local localScriptConfigVar2 = -4.7
local localScriptConfigVar3 = 3.5
local localScriptConfigVar4 = 4.4
local localScriptConfigVar5 = 27
local localScriptConfigVar6 = 3.2
local localScriptConfigVar7 = 19.5
local localScriptConfigVar8 = 6.4
local localScriptConfigVar9 = 26.1
OnIf_523100 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         local func1_var3 = localScriptConfigVar7
         local func1_var4 = localScriptConfigVar7 + 2
         local func1_var5 = 0
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
end

KingIzalis_Second523100Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   if func2_var2 >= 26.1 then
      local func2_var5 = localScriptConfigVar9
      local func2_var6 = localScriptConfigVar9 + 0
      local func2_var7 = 0
      Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var2 >= 19.5 then
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func2_var2 >= 10 then
      if func2_var3 <= 20 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      elseif func2_var3 <= 40 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 140) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
         end
      elseif func2_var3 <= 70 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif func2_var3 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

KingIzalis_Second523100Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

KingIzalis_Second523100Battle_Terminate = function(ai, goal)
end

KingIzalis_Second523100Battle_Interupt = function(ai, goal)
   return false
end


