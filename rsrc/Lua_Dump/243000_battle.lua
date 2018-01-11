local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2.2
MovingStatue243000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   if func1_var5 >= 8 then
      func1_var2[1] = 100
      func1_var2[2] = 0
   elseif func1_var5 >= 2.5 then
      func1_var2[1] = 60
      func1_var2[2] = 40
   else
      func1_var2[1] = 30
      func1_var2[2] = 70
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, MovingStatue243000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, MovingStatue243000_Act02)
   local func1_var7 = {0, 70, 0, 0, 30, 0}
   local func1_var8 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var7)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var8, func1_var4)
end

MovingStatue243000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = localScriptConfigVar1
   local func2_var4 = localScriptConfigVar1 + 2
   local func2_var5 = 0
   local func2_var6 = 3000
   local func2_var7 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func2_var3, func2_var4, func2_var5, func2_var6, func2_var7)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MovingStatue243000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = localScriptConfigVar3
   local func3_var4 = localScriptConfigVar3 + 2
   local func3_var5 = 0
   local func3_var6 = 3001
   local func3_var7 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func3_var3, func3_var4, func3_var5, func3_var6, func3_var7)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

MovingStatue243000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

MovingStatue243000Battle_Terminate = function(ai, goal)
end

MovingStatue243000Battle_Interupt = function(ai, goal)
   return false
end


