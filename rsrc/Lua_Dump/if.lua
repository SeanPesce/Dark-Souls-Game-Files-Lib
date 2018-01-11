REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_If, 0.5, 1)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_If, 1, "\142\175\149\202\151p\131R\129[\131hNo", 0)
If_Activate = function(ai, goal)
   local func1_var2 = goal:GetBattleGoalId()
   local func1_var3 = goal:GetParam(0)
   local func1_var4 = "OnIf_"
   _loadstring = function(ai)
      local func2_var1, func2_var2 = loadstring("return function (arg) " .. ai .. " end", ai)
      if func2_var1 then
         return func2_var1()
      else
         return func2_var1, func2_var2
      end
   end
   local func1_var5 = _loadstring(func1_var4 .. func1_var2 .. "(arg.ai, arg.goal, arg.codeNo)")
   local func1_var6
   class, func1_var6 = func1_var6, {ai = ai, goal = goal, codeNo = func1_var3}
   func1_var6 = func1_var5
   func1_var6(class)
end

If_Update = function(ai, goal)
   if goal:GetSubGoalNum() <= 0 then
      return GOAL_RESULT_Success
   end
   return GOAL_RESULT_Continue
end

If_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_If, true)
If_Interupt = function(ai, goal)
   return false
end


