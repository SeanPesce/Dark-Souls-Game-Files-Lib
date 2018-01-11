local localScriptConfigVar0 = 20
Common_Clear_Param = function(ai, goal, func1_param2)
   local func1_var3 = 1
   for func1_var4 = 1, localScriptConfigVar0 do
      ai[func1_var4] = 0
      goal[func1_var4] = nil
      func1_param2[func1_var4] = {}
   end
end

Common_Battle_Activate = function(ai, goal, func2_param2, func2_param3, func2_param4, func2_param5)
   local func2_var6 = {}
   local func2_var7 = {}
   local func2_var8 = 0
   local func2_var9 = {function()
      return defAct01(ai, goal, func2_param5[1])
   end, function()
      return defAct02(ai, goal, func2_param5[2])
   end, function()
      return defAct03(ai, goal, func2_param5[3])
   end, function()
      return defAct04(ai, goal, func2_param5[4])
   end, function()
      return defAct05(ai, goal, func2_param5[5])
   end, function()
      return defAct06(ai, goal, func2_param5[6])
   end, function()
      return defAct07(ai, goal, func2_param5[7])
   end, function()
      return defAct08(ai, goal, func2_param5[8])
   end, function()
      return defAct09(ai, goal, func2_param5[9])
   end, function()
      return defAct10(ai, goal, func2_param5[10])
   end, function()
      return defAct11(ai, goal, func2_param5[11])
   end, function()
      return defAct12(ai, goal, func2_param5[12])
   end, function()
      return defAct12(ai, goal, func2_param5[13])
   end, function()
      return defAct12(ai, goal, func2_param5[14])
   end, function()
      return defAct12(ai, goal, func2_param5[15])
   end, function()
      return defAct12(ai, goal, func2_param5[16])
   end, function()
      return defAct12(ai, goal, func2_param5[17])
   end, function()
      return defAct12(ai, goal, func2_param5[18])
   end, function()
      return defAct12(ai, goal, func2_param5[19])
   end, function()
      return defAct12(ai, goal, func2_param5[20])
   end}
   local func2_var10 = 1
   for func2_var11 = 1, localScriptConfigVar0 do
      if func2_param3[func2_var11] ~= nil then
         func2_var6[func2_var11] = func2_param3[func2_var11]
      else
         func2_var6[func2_var11] = func2_var9[func2_var11]
      end
      func2_var7[func2_var11] = func2_param2[func2_var11]
      func2_var8 = func2_var8 + func2_var7[func2_var11]
   end
   local func2_var11 = nil
   if func2_param4 ~= nil then
      func2_var11 = func2_param4
   else
      func2_var11 = function()
      HumanCommon_ActAfter_AdjustSpace(ai, goal, atkAfterOddsTbl)
   end
   end
   local func2_var12 = 0
   local func2_var13 = ai:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
   local func2_var14 = ai:GetTeamOrder(ORDER_TYPE_Role)
   local func2_var15 = 0
   if func2_var13 == 1 and func2_var14 == ROLE_TYPE_Torimaki then
      Torimaki_Act(ai, goal, func2_var15)
   elseif func2_var13 == 1 and func2_var14 == ROLE_TYPE_Kankyaku then
      Kankyaku_Act(ai, goal, func2_var15)
   else
      local func2_var16 = ai:DbgGetForceActIdx()
      if func2_var16 > 0 and func2_var16 <= localScriptConfigVar0 then
         func2_var12 = func2_var6[func2_var16]()
         ai:DbgSetLastActIdx(func2_var16)
      else
         local func2_var17 = ai:GetRandam_Int(1, func2_var8)
         local func2_var18 = 0
         local func2_var19 = 1
         for func2_var20 = 1, localScriptConfigVar0 do
            func2_var18 = func2_var18 + func2_var7[func2_var20]
            if func2_var17 <= func2_var18 then
               func2_var12 = func2_var6[func2_var20]()
               ai:DbgSetLastActIdx(func2_var20)
               func2_var20 = localScriptConfigVar0
            end
         end
      end
   end
   local func2_var16 = ai:GetRandam_Int(1, 100)
   if func2_var16 <= func2_var12 then
      func2_var11()
   end
end

defAct01 = function(ai, goal, func3_param2)
   local func3_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func3_param2[1] ~= nil then
      func3_var3 = func3_param2
   end
   local func3_var4 = func3_var3[1]
   local func3_var5 = func3_var3[1] + 2
   local func3_var6 = func3_var3[2]
   local func3_var7 = func3_var3[3]
   local func3_var8 = func3_var3[4]
   local func3_var9 = GET_PARAM_IF_NIL_DEF(func3_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func3_var4, func3_var5, func3_var6, func3_var7, func3_var8)
   return func3_var9
end

defAct02 = function(ai, goal, func4_param2)
   local func4_var3 = {1.5, 0, 10, 40, nil, nil, nil, nil}
   if func4_param2[1] ~= nil then
      func4_var3 = func4_param2
   end
   return HumanCommon_Approach_and_ComboAtk(ai, goal, func4_var3)
end

defAct03 = function(ai, goal, func5_param2)
   local func5_var3 = {1.5, 0, 3005, DIST_Middle, nil}
   if func5_param2[1] ~= nil then
      func5_var3 = func5_param2
   end
   local func5_var4 = func5_var3[1]
   local func5_var5 = func5_var3[1] + 2
   local func5_var6 = func5_var3[2]
   local func5_var7 = func5_var3[3]
   local func5_var8 = func5_var3[4]
   local func5_var9 = GET_PARAM_IF_NIL_DEF(func5_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func5_var4, func5_var5, func5_var6, func5_var7, func5_var8)
   return func5_var9
end

defAct04 = function(ai, goal, func6_param2)
   local func6_var3 = {5, 0, 3007, DIST_Middle, 3005, DIST_Middle, nil}
   if func6_param2[1] ~= nil then
      func6_var3 = func6_param2
   end
   local func6_var4 = func6_var3[1]
   local func6_var5 = func6_var3[1] + 2
   local func6_var6 = func6_var3[2]
   local func6_var7 = func6_var3[3]
   local func6_var8 = func6_var3[4]
   local func6_var9 = func6_var3[5]
   local func6_var10 = func6_var3[6]
   local func6_var11 = GET_PARAM_IF_NIL_DEF(func6_var3[7], 100)
   Approach_and_GuardBreak_Act(ai, goal, func6_var4, func6_var5, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10)
   return func6_var11
end

defAct05 = function(ai, goal, func7_param2)
   local func7_var3 = {4, 6, 0, 3008, DIST_None, nil}
   if func7_param2[1] ~= nil then
      func7_var3 = func7_param2
   end
   return HumanCommon_KeepDist_and_ThrowSomething(ai, goal, func7_var3)
end

defAct06 = function(ai, goal, func8_param2)
   local func8_var3 = {3000, DIST_Far, nil}
   if func8_param2[1] ~= nil then
      func8_var3 = func8_param2
   end
   local func8_var4 = GET_PARAM_IF_NIL_DEF(func8_var3[3], 0)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, func8_var3[1], TARGET_ENE_0, func8_var3[2], 0)
   return func8_var4
end

defAct07 = function(ai, goal, func9_param2)
   local func9_var3 = {1.5, 0, 3001, DIST_Middle}
   if func9_param2[1] ~= nil then
      func9_var3 = func9_param2
   end
   local func9_var4 = func9_var3[1]
   local func9_var5 = func9_var3[1] + 2
   local func9_var6 = func9_var3[2]
   local func9_var7 = func9_var3[3]
   local func9_var8 = func9_var3[4]
   Approach_and_Attack_Act(ai, goal, func9_var4, func9_var5, func9_var6, func9_var7, func9_var8)
   return 100
end

defAct08 = function(ai, goal, func10_param2)
   local func10_var3 = {nil}
   if func10_param2[1] ~= nil then
      func10_var3 = func10_param2
   end
   local func10_var4 = GET_PARAM_IF_NIL_DEF(func10_var3[1], 0)
   Watching_Parry_Chance_Act(ai, goal)
   return func10_var4
end

defAct09 = function(ai, goal, func11_param2)
   local func11_var3 = {1.5, 0, 10, 40, nil, nil, nil, nil}
   if func11_param2[1] ~= nil then
      func11_var3 = func11_param2
   end
   return HumanCommon_Approach_and_ComboAtk(ai, goal, func11_var3)
end

defAct10 = function(ai, goal, func12_param2)
   local func12_var3 = {3000, 3001, 2, 4, 0}
   if func12_param2[1] ~= nil then
      func12_var3 = func12_param2
   end
   return HumanCommon_Shooting_Act(ai, goal, Tbl)
end

defAct11 = function(ai, goal, func13_param2)
   local func13_var3 = {3002, 3003, 2, 4, 0}
   if func13_param2[1] ~= nil then
      func13_var3 = func13_param2
   end
   return HumanCommon_Shooting_Act(ai, goal, Tbl)
end

defAct12 = function(ai, goal, func14_param2)
   local func14_var3 = {1.5, 0, 3001, DIST_Middle}
   if func14_param2[1] ~= nil then
      func14_var3 = func14_param2
   end
   local func14_var4 = func14_var3[1]
   local func14_var5 = func14_var3[1] + 2
   local func14_var6 = func14_var3[2]
   local func14_var7 = func14_var3[3]
   local func14_var8 = func14_var3[4]
   Approach_and_Attack_Act(ai, goal, func14_var4, func14_var5, func14_var6, func14_var7, func14_var8)
   return 100
end

defAct13 = function(ai, goal, func15_param2)
   local func15_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func15_param2[1] ~= nil then
      func15_var3 = func15_param2
   end
   local func15_var4 = func15_var3[1]
   local func15_var5 = func15_var3[1] + 2
   local func15_var6 = func15_var3[2]
   local func15_var7 = func15_var3[3]
   local func15_var8 = func15_var3[4]
   local func15_var9 = GET_PARAM_IF_NIL_DEF(func15_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func15_var4, func15_var5, func15_var6, func15_var7, func15_var8)
   return func15_var9
end

defAct14 = function(ai, goal, func16_param2)
   local func16_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func16_param2[1] ~= nil then
      func16_var3 = func16_param2
   end
   local func16_var4 = func16_var3[1]
   local func16_var5 = func16_var3[1] + 2
   local func16_var6 = func16_var3[2]
   local func16_var7 = func16_var3[3]
   local func16_var8 = func16_var3[4]
   local func16_var9 = GET_PARAM_IF_NIL_DEF(func16_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func16_var4, func16_var5, func16_var6, func16_var7, func16_var8)
   return func16_var9
end

defAct15 = function(ai, goal, func17_param2)
   local func17_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func17_param2[1] ~= nil then
      func17_var3 = func17_param2
   end
   local func17_var4 = func17_var3[1]
   local func17_var5 = func17_var3[1] + 2
   local func17_var6 = func17_var3[2]
   local func17_var7 = func17_var3[3]
   local func17_var8 = func17_var3[4]
   local func17_var9 = GET_PARAM_IF_NIL_DEF(func17_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func17_var4, func17_var5, func17_var6, func17_var7, func17_var8)
   return func17_var9
end

defAct16 = function(ai, goal, func18_param2)
   local func18_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func18_param2[1] ~= nil then
      func18_var3 = func18_param2
   end
   local func18_var4 = func18_var3[1]
   local func18_var5 = func18_var3[1] + 2
   local func18_var6 = func18_var3[2]
   local func18_var7 = func18_var3[3]
   local func18_var8 = func18_var3[4]
   local func18_var9 = GET_PARAM_IF_NIL_DEF(func18_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func18_var4, func18_var5, func18_var6, func18_var7, func18_var8)
   return func18_var9
end

defAct17 = function(ai, goal, func19_param2)
   local func19_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func19_param2[1] ~= nil then
      func19_var3 = func19_param2
   end
   local func19_var4 = func19_var3[1]
   local func19_var5 = func19_var3[1] + 2
   local func19_var6 = func19_var3[2]
   local func19_var7 = func19_var3[3]
   local func19_var8 = func19_var3[4]
   local func19_var9 = GET_PARAM_IF_NIL_DEF(func19_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func19_var4, func19_var5, func19_var6, func19_var7, func19_var8)
   return func19_var9
end

defAct18 = function(ai, goal, func20_param2)
   local func20_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func20_param2[1] ~= nil then
      func20_var3 = func20_param2
   end
   local func20_var4 = func20_var3[1]
   local func20_var5 = func20_var3[1] + 2
   local func20_var6 = func20_var3[2]
   local func20_var7 = func20_var3[3]
   local func20_var8 = func20_var3[4]
   local func20_var9 = GET_PARAM_IF_NIL_DEF(func20_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func20_var4, func20_var5, func20_var6, func20_var7, func20_var8)
   return func20_var9
end

defAct19 = function(ai, goal, func21_param2)
   local func21_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func21_param2[1] ~= nil then
      func21_var3 = func21_param2
   end
   local func21_var4 = func21_var3[1]
   local func21_var5 = func21_var3[1] + 2
   local func21_var6 = func21_var3[2]
   local func21_var7 = func21_var3[3]
   local func21_var8 = func21_var3[4]
   local func21_var9 = GET_PARAM_IF_NIL_DEF(func21_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func21_var4, func21_var5, func21_var6, func21_var7, func21_var8)
   return func21_var9
end

defAct20 = function(ai, goal, func22_param2)
   local func22_var3 = {1.5, 0, 3000, DIST_Middle, nil}
   if func22_param2[1] ~= nil then
      func22_var3 = func22_param2
   end
   local func22_var4 = func22_var3[1]
   local func22_var5 = func22_var3[1] + 2
   local func22_var6 = func22_var3[2]
   local func22_var7 = func22_var3[3]
   local func22_var8 = func22_var3[4]
   local func22_var9 = GET_PARAM_IF_NIL_DEF(func22_var3[5], 100)
   Approach_and_Attack_Act(ai, goal, func22_var4, func22_var5, func22_var6, func22_var7, func22_var8)
   return func22_var9
end

HumanCommon_KeepDist_and_ThrowSomething = function(ai, goal, func23_param2)
   local func23_var3 = func23_param2[1]
   local func23_var4 = func23_param2[2]
   local func23_var5 = func23_param2[2] + 2
   local func23_var6 = func23_param2[3]
   local func23_var7 = func23_param2[4]
   local func23_var8 = func23_param2[5]
   KeepDist_and_Attack_Act(ai, goal, func23_var3, func23_var4, func23_var5, func23_var6, func23_var7, func23_var8)
   return GET_PARAM_IF_NIL_DEF(func23_param2[6], 0)
end

HumanCommon_ActAfter_AdjustSpace = function(ai, goal, func24_param2)
   local func24_var3 = func24_param2[1]
   local func24_var4 = func24_param2[2]
   local func24_var5 = func24_param2[3]
   local func24_var6 = func24_param2[4]
   local func24_var7 = func24_param2[5]
   local func24_var8 = func24_param2[6]
   GetWellSpace_Act(ai, goal, func24_var3, func24_var4, func24_var5, func24_var6, func24_var7, func24_var8)
end

HumanCommon_ActAfter_AdjustSpace_IncludeSidestep = function(ai, goal, func25_param2)
   local func25_var3 = func25_param2[1]
   local func25_var4 = func25_param2[2]
   local func25_var5 = func25_param2[3]
   local func25_var6 = func25_param2[4]
   local func25_var7 = func25_param2[5]
   local func25_var8 = func25_param2[6]
   local func25_var9 = func25_param2[7]
   GetWellSpace_Act_IncludeSidestep(ai, goal, func25_var3, func25_var4, func25_var5, func25_var6, func25_var7, func25_var8, func25_var9)
end

HumanCommon_Approach_and_ComboAtk = function(ai, goal, func26_param2)
   local func26_var3 = func26_param2[1]
   local func26_var4 = func26_param2[1] + 2
   local func26_var5 = func26_param2[2]
   Approach_Act(ai, goal, func26_var3, func26_var4, func26_var5)
   local func26_var6 = GET_PARAM_IF_NIL_DEF(func26_param2[5], 3000)
   local func26_var7 = GET_PARAM_IF_NIL_DEF(func26_param2[6], 3001)
   local func26_var8 = GET_PARAM_IF_NIL_DEF(func26_param2[7], 3002)
   local func26_var9 = ai:GetRandam_Int(1, 100)
   if func26_var9 <= func26_param2[3] then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, func26_var6, TARGET_ENE_0, DIST_Middle, 0)
   elseif func26_var9 <= func26_param2[3] + func26_param2[4] then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, func26_var6, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func26_var7, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, func26_var6, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, func26_var7, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, func26_var8, TARGET_ENE_0, DIST_Middle, 0)
   end
   return GET_PARAM_IF_NIL_DEF(func26_param2[8], 100)
end

HumanCommon_Watching_Parry_Chance_Act = function(ai, goal, func27_param2)
   Watching_Parry_Chance_Act(ai, goal)
   return GET_PARAM_IF_NIL_DEF(func27_param2[1], 100)
end

HumanCommon_Shooting_Act = function(ai, goal, func28_param2)
   local func28_var3 = func28_param2[1]
   local func28_var4 = func28_param2[2]
   local func28_var5 = ai:GetRandam_Int(func28_param2[3], func28_param2[4])
   local func28_var6 = func28_param2[5]
   Shoot_Act(ai, goal, func28_var3, func28_var4, func28_var5)
   if func28_var6 == 0 then
   elseif func28_var6 == 1 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
   elseif func28_var6 == 2 then
      goal:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
   else
      ai:PrintText("\129\154logical error, get the manager!\129\154 ")
   end
   return 0
end

GET_PARAM_IF_NIL_DEF = function(ai, goal)
   if ai ~= nil then
      return ai
   end
   return goal
end

REGIST_FUNC = function(ai, goal, func30_param2, func30_param3)
   return function()
      return func30_param2(ai, goal, func30_param3)
   end
end


