REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LiftOff, true)
LiftOff_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
end

LiftOff_Update = function(ai, goal)
   local func2_var2 = 5
   local func2_var3 = ai:GetDistY(TARGET_ENE_0)
   local func2_var4 = goal:GetLastSubGoalResult()
   if (func2_var4 == GOAL_RESULT_Success or func2_var4 == GOAL_RESULT_Failed) and (ai:IsLanding() or func2_var3 < func2_var2) then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 9520, TARGET_NONE, DIST_None)
   end
   if not ai:IsLanding() and func2_var2 <= func2_var3 then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

LiftOff_Terminate = function(ai, goal)
end

LiftOff_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_Landing, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing, true)
Landing_Activate = function(ai, goal)
   local func5_var2 = goal:GetParam(0)
   ai:SetAIFixedMoveTarget(func5_var2, TARGET_SELF, 0)
   local func5_var3 = goal:GetParam(1)
   goal:AddSubGoal(GOAL_COMMON_Landing_Move, 10, func5_var3)
   if ai:GetDistYSigned(TARGET_ENE_0) > 0 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, 0.1, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Landing_Landing, 10)
   end
end

Landing_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Landing_Terminate = function(ai, goal)
end

Landing_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Move, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Move, true)
Landing_Move_Activate = function(ai, goal)
   local func9_var2 = goal:GetParam(0)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_AI_FIXED_POS, func9_var2, TARGET_SELF, false, -1)
end

Landing_Move_Update = function(ai, goal)
   if ai:GetDistXZ(POINT_AI_FIXED_POS) < 1 then
      return GOAL_RESULT_Success
   end
   if ai:IsLanding() then
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

Landing_Move_Terminate = function(ai, goal)
end

Landing_Move_Interupt = function(ai, goal)
   return false
end

REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Landing_Landing, 0.5, 0.5)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Landing_Landing, true)
Landing_Landing_Activate = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), 9510, TARGET_NONE, DIST_None)
end

Landing_Landing_Update = function(ai, goal)
   if ai:IsLanding() then
      if goal:GetNumber(0) > 10 then
         return GOAL_RESULT_Success
      else
         local func14_var2 = goal:GetNumber(0) + 1
         goal:SetNumber(0, func14_var2)
      end
   end
   local func14_var2 = goal:GetLastSubGoalResult()
   if (func14_var2 == GOAL_RESULT_Success or func14_var2 == GOAL_RESULT_Failed) and not ai:IsLanding() then
      goal:AddSubGoal(GOAL_COMMON_Attack, goal:GetLife(), 9510, TARGET_NONE, DIST_None)
   end
   if ai:GetDistYSigned(POINT_AI_FIXED_POS) > 1 then
      ai:PrintText("[Landing_Landing_Update]\131^\129[\131Q\131b\131g\130\230\130\232\141\130\130\179\130\170\137\186\130\201\130\200\130\232\130\220\130\181\130\189\129B\142\184\148s\130\240\149\212\130\181\130\220\130\183\129B")
      return GOAL_RESULT_Failed
   end
   return GOAL_RESULT_Continue
end

Landing_Landing_Terminate = function(ai, goal)
end

Landing_Landing_Interupt = function(ai, goal)
   return false
end


