_COMMON_GetEzStateAnimId = function(ai, goal)
   ret = {}
   local func1_var2 = 1
   for func1_var3 = 1, 30 do
      ret[func1_var3] = ai:GetEzStateAnimId(goal, func1_var3 - 1)
   end
   return ret
end

_COMMON_GetMinDist = function(ai, goal)
   ret = {}
   local func2_var2 = 1
   for func2_var3 = 1, 30 do
      ret[func2_var3] = ai:GetMinDist(goal, func2_var3 - 1)
   end
   return ret
end

_COMMON_GetMaxDist = function(ai, goal)
   ret = {}
   local func3_var2 = 0
   for func3_var3 = 0, 29 do
      ret[func3_var3] = ai:GetMaxDist(goal, func3_var3 - 1)
   end
   return ret
end

_COMMON_GetAtkDistType = function(ai, goal)
   ret = {}
   local func4_var2 = 1
   for func4_var3 = 1, 30 do
      ret[func4_var3] = ai:GetAtkDistType(goal, func4_var3 - 1)
      if ret[func4_var3] == 0 then
         ret[func4_var3] = DIST_Near
         for func4_var3 = func4_var3, func4_var4, func4_var5 do
            -- Tried to add an 'end' here but it's incorrect
            if ret[func4_var3] == 1 then
               ret[func4_var3] = DIST_Middle
               for func4_var3 = func4_var3, func4_var4, func4_var5 do
                  -- Tried to add an 'end' here but it's incorrect
                  if ret[func4_var3] == 2 then
                     ret[func4_var3] = DIST_Far
                     for func4_var3 = func4_var3, func4_var4, func4_var5 do
                        -- Tried to add an 'end' here but it's incorrect
                        if ret[func4_var3] == 3 then
                           ret[func4_var3] = DIST_Out
                           for func4_var3 = func4_var3, func4_var4, func4_var5 do
                              -- Tried to add an 'end' here but it's incorrect
                              if ret[func4_var3] == 4 then
                                 ret[func4_var3] = DIST_None
                              end
                           end
                           return ret
end

_COMMON_GetOddsParam = function(ai, goal)
   ret = {}
   local func5_var2 = ai:GetOddsParamIdOffset(100)
   local func5_var3 = 0
   for func5_var4 = 0, 99 do
      ret[func5_var4] = ai:GetOddsParam(func5_var2 + goal, func5_var4)
   end
   return ret
end

_COMMON_MulOddsXWeight = function(ai, goal)
   local func6_var2 = 0
   local func6_var3 = true
   if table.getn(goal) == 0 then
      func6_var3 = false
   end
   local func6_var4 = 0
   local func6_var5 = 0
   for func6_var6 = 0, 99 do
      if func6_var3 == false then
         goal[func6_var6] = 1
      end
      ai[func6_var6] = ai[func6_var6] * goal[func6_var6]
      if ai[func6_var6] < 0 then
         ai[func6_var6] = 0
      end
      ai[func6_var6] = ai[func6_var6] + func6_var4
      func6_var4 = ai[func6_var6]
      if func6_var5 < ai[func6_var6] then
         func6_var5 = ai[func6_var6]
      end
   end
   return func6_var5
end

_COMMON_MulWeightParam = function(ai, goal, func7_param2)
   local func7_var3 = false
   if table.getn(goal) == 0 then
      func7_var3 = true
   end
   local func7_var4 = ai:GetOddsParamIdOffset(100)
   local func7_var5 = 0
   for func7_var6 = 0, 99 do
      if func7_var3 then
         goal[func7_var6] = 1
      end
      goal[func7_var6] = goal[func7_var6] * ai:GetOddsParam(func7_var4 + func7_param2, func7_var6)
   end
end


