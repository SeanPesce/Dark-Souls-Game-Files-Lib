REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_AttackTunableSpin, 0, "EzStateID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_AttackTunableSpin, 1, "\141U\140\130\145\206\143\219", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_AttackTunableSpin, 2, "\144\172\140\247\139\151\151\163", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_AttackTunableSpin, 3, "\141U\140\130\145O\144\249\137\241\142\158\138\212", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_AttackTunableSpin, 4, "\144\179\150\202\148\187\146\232\138p\147x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_AttackTunableSpin, 5, "\143\227\141U\140\130\138p\147x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_AttackTunableSpin, 6, "\137\186\141U\140\130\138p\147x", 0)
AttackTunableSpin_Activate = function(ai, goal)
   local func1_var2 = goal:GetLife()
   local func1_var3 = goal:GetParam(0)
   local func1_var4 = goal:GetParam(1)
   local func1_var5 = goal:GetParam(2)
   local func1_var6 = 180
   if goal:GetParam(3) < 0 then
      local func1_var7, func1_var7, func1_var7 = 1.5, goal:GetParam(4)
   end
   --[[ DECOMPILER ERROR 874: Confused about usage of registers ]]
end

AttackTunableSpin_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

AttackTunableSpin_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_AttackTunableSpin, true)
AttackTunableSpin_Interupt = function(ai, goal)
   return false
end


