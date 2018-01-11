local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 30
Taiyoutyuu347000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   local func1_var7 = ai:GetRandam_Int(1, 4)
   if func1_var5 >= 10 then
      if ai:IsFinishTimer(0) == true then
         ai:SetTimer(0, func1_var7)
         func1_var2[1] = 0
         func1_var2[2] = 100
      else
         func1_var2[1] = 100
         func1_var2[2] = 0
      end
   elseif ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, func1_var7)
      func1_var2[1] = 0
      func1_var2[2] = 100
   else
      func1_var2[1] = 100
      func1_var2[2] = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   func1_var3[1] = REGIST_FUNC(ai, goal, Taiyoutyuu347000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Taiyoutyuu347000_Act02)
   local func1_var8 = {0, 100, 0, 0, 0, 0}
   local func1_var9 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var8)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var9, func1_var4)
end

Taiyoutyuu347000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 100, TARGET_SELF, false, -1)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Taiyoutyuu347000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, 0, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Taiyoutyuu347000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Taiyoutyuu347000Battle_Terminate = function(ai, goal)
end

Taiyoutyuu347000Battle_Interupt = function(ai, goal)
   return false
end


