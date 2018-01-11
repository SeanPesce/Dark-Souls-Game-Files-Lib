local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 4.2
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 6.1
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 4.5
local localScriptConfigVar6 = 5
local localScriptConfigVar7 = 9.8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 2.7
Mimic278000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetRandam_Int(1, 100)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   local func1_var6 = ai:GetEventRequest()
   local func1_var7 = 0
   local func1_var8 = 0
   local func1_var9 = 0
   local func1_var10 = 0
   local func1_var11 = 0
   local func1_var12 = 0
   local func1_var13 = 0
   local func1_var14 = 0
   local func1_var15 = 0
   local func1_var16 = 0
   local func1_var17 = 0
   local func1_var18 = 0
   if ai:HasSpecialEffectId(TARGET_SELF, 5420) then
      if func1_var6 == 210 then
         func1_var12 = 100
      elseif func1_var5 >= 10 then
         func1_var7 = 10
         func1_var8 = 10
         func1_var9 = 20
         func1_var10 = 50
         func1_var11 = 10
         func1_var18 = 100
      elseif func1_var5 >= 5 then
         func1_var7 = 20
         func1_var8 = 20
         func1_var9 = 20
         func1_var10 = 30
         func1_var11 = 10
         func1_var18 = 100
      elseif func1_var5 >= 2.5 then
         func1_var7 = 20
         func1_var8 = 40
         func1_var9 = 20
         func1_var10 = 0
         func1_var11 = 20
         func1_var18 = 100
      else
         func1_var7 = 40
         func1_var8 = 20
         func1_var9 = 10
         func1_var10 = 0
         func1_var11 = 30
         func1_var18 = 100
      end
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5421) then
      if func1_var6 == 200 then
         func1_var16 = 100
      elseif func1_var6 == 10 then
         func1_var13 = 100
      elseif func1_var6 == 100 then
         func1_var17 = 100
      else
         func1_var14 = 100
      end
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5422) then
      if func1_var6 == 100 then
         func1_var17 = 100
      elseif func1_var6 == 201 then
         func1_var15 = 100
      else
         func1_var14 = 100
      end
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5423) then
      if func1_var6 == 100 then
         func1_var17 = 100
      elseif func1_var6 == 211 then
         func1_var15 = 100
      else
         func1_var14 = 100
      end
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 10000, TARGET_SELF, 0, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func1_var19 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16)
   if func1_var19 <= func1_var7 then
      Mimic278000_Act00(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 then
      Mimic278000_Act01(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 then
      Mimic278000_Act02(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
      Mimic278000_Act03(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      Mimic278000_Act04(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      Mimic278000_Act05(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      Mimic278000_Act06(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      Mimic278000_Act07(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      Mimic278000_Act08(ai, goal)
   elseif func1_var19 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      Mimic278000_Act09(ai, goal)
   else
      Mimic278000_Act10(ai, goal)
   end
   local func1_var20 = ai:GetRandam_Int(1, 100)
   if func1_var20 <= func1_var18 then
      local func1_var21 = 0
      local func1_var22 = 60
      local func1_var23 = 5
      local func1_var24 = 5
      local func1_var25 = 0
      local func1_var26 = 30
      GetWellSpace_Act(ai, goal, func1_var21, func1_var22, func1_var23, func1_var24, func1_var25, func1_var26)
   end
end

Mimic278000_Act00 = function(ai, goal)
   local func2_var2 = localScriptConfigVar1
   local func2_var3 = localScriptConfigVar1 + 2
   local func2_var4 = 0
   local func2_var5 = 3000
   local func2_var6 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func2_var2, func2_var3, func2_var4, func2_var5, func2_var6)
end

Mimic278000_Act01 = function(ai, goal)
   local func3_var2 = localScriptConfigVar3
   local func3_var3 = localScriptConfigVar3 + 2
   local func3_var4 = 0
   local func3_var5 = 3001
   local func3_var6 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func3_var2, func3_var3, func3_var4, func3_var5, func3_var6)
end

Mimic278000_Act02 = function(ai, goal)
   local func4_var2 = localScriptConfigVar5
   local func4_var3 = localScriptConfigVar5 + 2
   local func4_var4 = 0
   local func4_var5 = 3002
   local func4_var6 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func4_var2, func4_var3, func4_var4, func4_var5, func4_var6)
end

Mimic278000_Act03 = function(ai, goal)
   local func5_var2 = localScriptConfigVar7
   local func5_var3 = localScriptConfigVar7 + 2
   local func5_var4 = 0
   local func5_var5 = 3003
   local func5_var6 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var2, func5_var3, func5_var4, func5_var5, func5_var6)
end

Mimic278000_Act04 = function(ai, goal)
   local func6_var2 = localScriptConfigVar9
   local func6_var3 = localScriptConfigVar9 + 2
   local func6_var4 = 0
   local func6_var5 = 3004
   local func6_var6 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func6_var2, func6_var3, func6_var4, func6_var5, func6_var6)
end

Mimic278000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3005, TARGET_SELF, DIST_None, 0)
end

Mimic278000_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_None, 0, -1)
end

Mimic278000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 300, TARGET_SELF, 0, 0, 0)
end

Mimic278000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None, 0)
end

Mimic278000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_SELF, DIST_None, 0)
end

Mimic278000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3001, TARGET_SELF, DIST_None, 0)
end

Mimic278000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Mimic278000Battle_Terminate = function(ai, goal)
end

Mimic278000Battle_Interupt = function(ai, goal)
   local func15_var2 = ai:GetRandam_Int(1, 100)
   local func15_var3 = ai:GetRandam_Int(1, 100)
   local func15_var4 = ai:GetRandam_Int(1, 100)
   local func15_var5 = ai:GetDist(TARGET_ENE_0)
   if ai:HasSpecialEffectId(TARGET_SELF, 5420) then
      local func15_var6 = 3
      local func15_var7 = 10
      local func15_var8 = 50
      local func15_var9 = 25
      local func15_var10 = 25
      local func15_var11 = 3
      if Damaged_Step(ai, goal, func15_var6, func15_var7, func15_var8, func15_var9, func15_var10, func15_var11) then
         return true
      end
      local func15_var12 = 4.2
      local func15_var13 = 50
      if GuardBreak_Act(ai, goal, func15_var12, func15_var13) then
         if func15_var2 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      end
   end
   return false
end


