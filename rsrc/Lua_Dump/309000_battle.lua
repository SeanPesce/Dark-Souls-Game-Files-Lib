local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 0.75
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 0.9
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3
Ooka309000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[1] = 5
      func1_var2[3] = 40
      func1_var2[5] = 55
   elseif func1_var5 >= 3 then
      func1_var2[1] = 10
      func1_var2[3] = 40
      func1_var2[5] = 50
   else
      func1_var2[1] = 40
      func1_var2[3] = 30
      func1_var2[5] = 30
   end
   local func1_var6 = {localScriptConfigVar1, 0, 3000, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = {localScriptConfigVar3, 0, 3001, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = {localScriptConfigVar4, localScriptConfigVar5, 0, 3002, DIST_Far}
   func1_var4[5] = func1_var6
   func1_var6 = {0, 60, 10, 10, 20, 0}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Ooka309000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ooka309000Battle_Terminate = function(ai, goal)
end

Ooka309000Battle_Interupt = function(ai, goal)
   return false
end


