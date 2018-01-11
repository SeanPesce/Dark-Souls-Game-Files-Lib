REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 0, "\147G\130\201\148\189\137\158\130\183\130\233\139\151\151\163\129ym\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 1, "\147G\130\162\130\189\130\231\143I\151\185\129H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 2, "\145\150\130\233\129H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 3, "\144\249\137\241\129yTYPE\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 4, "\145\131\130\204\147\158\146\133\139\151\151\163\129ym\129z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 5, "\145\210\139@\142\158\131S\129[\131\139", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_NonBattleAct, 0.1, 0.2)
NonBattleAct_Activate = function(ai, goal)
   local func1_var2 = ai:GetMovePointNumber()
   if func1_var2 >= 0 then
      if goal:GetParam(2) == 0 then
         local func1_var3, func1_var3, func1_var3 = true
      else
         goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, goal:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, false)
      end
   else
      local func1_var3 = ai:GetMovePointEffectRange()
      local func1_var4 = goal:GetParam(3)
      if goal:GetParam(4) == 0 then
         local func1_var5, func1_var5, func1_var5 = 5
      end
      --[[ DECOMPILER ERROR 874: Confused about usage of registers ]]
end

NonBattleAct_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

NonBattleAct_Terminate = function(ai, goal)
end

NonBattleAct_Interupt = function(ai, goal)
   if false or not ai:IsInterupt(INTERUPT_Damaged_Stranger) then
      local func4_var2 = ai:IsInterupt(INTERUPT_Damaged)
   end
   --[[ DECOMPILER ERROR 874: Confused about usage of registers ]]
end


