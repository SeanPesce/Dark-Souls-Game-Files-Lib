local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 12.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 10.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 0
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 10.4
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 11.3
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 8
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 10
local localScriptConfigVar14 = 22
local localScriptConfigVar15 = 29
local localScriptConfigVar16 = 10
local localScriptConfigVar17 = 15
Ja_yearl_demon539000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetEventRequest(0)
   local func1_var6 = ai:GetRandam_Float(0.5, 2)
   local func1_var7 = ai:GetTeamOrder(ORDER_TYPE_Role)
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
   local func1_var19 = 0
   local func1_var20 = 0
   local func1_var21 = 0
   local func1_var22 = 0
   local func1_var23 = 0
   local func1_var24 = 0
   local func1_var25 = 0
   local func1_var26 = 0
   local func1_var27 = 0
   if ai:IsFinishTimer(1) == true then
      ai:SetTimer(1, 9999)
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0, 3), TARGET_ENE_0, 0, 0, 0)
   end
   if func1_var7 == ROLE_TYPE_Attack then
      if func1_var5 == 1 and ai:IsFinishTimer(0) == true then
         if func1_var2 >= 22 then
            func1_var8 = 8
            func1_var9 = 8
            func1_var11 = 8
            func1_var12 = 8
            func1_var13 = 3
            func1_var14 = 0
            func1_var15 = 25
            func1_var16 = 40
         elseif func1_var2 >= 12.5 then
            func1_var8 = 15
            func1_var9 = 15
            func1_var11 = 15
            func1_var12 = 15
            func1_var13 = 5
            func1_var14 = 0
            func1_var16 = 35
         elseif func1_var2 >= 8 then
            func1_var8 = 18
            func1_var9 = 18
            func1_var11 = 18
            func1_var12 = 18
            func1_var13 = 5
            func1_var14 = 5
            func1_var16 = 18
         elseif func1_var2 >= 4 then
            func1_var8 = 20
            func1_var9 = 20
            func1_var11 = 20
            func1_var12 = 20
            func1_var13 = 5
            func1_var14 = 5
            func1_var16 = 10
         else
            func1_var8 = 21
            func1_var9 = 21
            func1_var11 = 21
            func1_var12 = 21
            func1_var13 = 5
            func1_var14 = 11
         end
      elseif func1_var2 >= 22 then
         func1_var8 = 25
         func1_var9 = 25
         func1_var11 = 25
         func1_var12 = 20
         func1_var13 = 5
         func1_var14 = 0
      elseif func1_var2 >= 13.4 then
         func1_var8 = 24
         func1_var9 = 24
         func1_var11 = 24
         func1_var12 = 24
         func1_var13 = 4
         func1_var14 = 0
      elseif func1_var2 >= 8 then
         func1_var8 = 23
         func1_var9 = 23
         func1_var11 = 23
         func1_var12 = 19
         func1_var13 = 6
         func1_var14 = 6
      elseif func1_var2 >= 4 then
         func1_var8 = 22
         func1_var9 = 22
         func1_var11 = 22
         func1_var12 = 22
         func1_var13 = 5
         func1_var14 = 7
      else
         func1_var8 = 21
         func1_var9 = 21
         func1_var11 = 21
         func1_var12 = 21
         func1_var13 = 5
         func1_var14 = 11
      end
   elseif func1_var7 == ROLE_TYPE_Torimaki then
      if func1_var5 == 1 and ai:IsFinishTimer(0) == true then
         func1_var15 = 4
         func1_var16 = 4
         func1_var17 = 84
         func1_var19 = 2
         func1_var20 = 2
         func1_var21 = 2
         func1_var22 = 2
      else
         func1_var17 = 84
         func1_var19 = 2
         func1_var20 = 2
         func1_var21 = 2
         func1_var22 = 2
      end
   elseif func1_var2 >= 22 then
      func1_var17 = 20
      func1_var18 = 80
   elseif func1_var2 >= 15 then
      if func1_var5 == 1 and ai:IsFinishTimer(0) == true then
         func1_var15 = 25
         func1_var16 = 25
         func1_var17 = 10
         func1_var23 = 10
         func1_var24 = 10
         func1_var25 = 10
         func1_var26 = 10
      else
         func1_var17 = 20
         func1_var23 = 20
         func1_var24 = 20
         func1_var25 = 20
         func1_var26 = 20
      end
   else
      func1_var17 = 50
      func1_var23 = 13
      func1_var24 = 13
      func1_var25 = 12
      func1_var26 = 12
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func1_var28 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26)
   if func1_var28 <= func1_var8 then
      Ja_yearl_demon539000_Act01(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 then
      Ja_yearl_demon539000_Act02(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 then
      Ja_yearl_demon539000_Act03(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 then
      Ja_yearl_demon539000_Act04(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
      Ja_yearl_demon539000_Act05(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
      Ja_yearl_demon539000_Act06(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
      Ja_yearl_demon539000_Act07(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
      Ja_yearl_demon539000_Act08(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
      Ja_yearl_demon539000_Act09(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
      Ja_yearl_demon539000_Act10(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
      Ja_yearl_demon539000_Act11(ai, goal)
      func1_var27 = 0
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
      Ja_yearl_demon539000_Act12(ai, goal)
      func1_var27 = 100
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
      Ja_yearl_demon539000_Act13(ai, goal)
      func1_var27 = 100
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 then
      Ja_yearl_demon539000_Act14(ai, goal)
      func1_var27 = 100
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 then
      Ja_yearl_demon539000_Act15(ai, goal)
      func1_var27 = 100
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 then
      Ja_yearl_demon539000_Act16(ai, goal)
      func1_var27 = 100
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 then
      Ja_yearl_demon539000_Act17(ai, goal)
      func1_var27 = 100
   elseif func1_var28 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 then
      Ja_yearl_demon539000_Act18(ai, goal)
      func1_var27 = 100
   else
      Ja_yearl_demon539000_Act19(ai, goal)
      func1_var27 = 100
   end
   local func1_var29 = ai:GetRandam_Int(1, 100)
   if func1_var29 <= func1_var27 then
      Ja_yearl_demon539000_GetWellSpace_Act(ai, goal)
   end
end

Ja_yearl_demon539000_Act01 = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = localScriptConfigVar1
   local func2_var5 = localScriptConfigVar1 + 10
   local func2_var6 = 0
   local func2_var7 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 60 then
      func2_var3 = ai:GetDist(TARGET_ENE_0)
      func2_var4 = localScriptConfigVar1
      func2_var5 = localScriptConfigVar1 + 9999
      func2_var6 = 0
      func2_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func2_var4, func2_var5, func2_var6)
   if func2_var7 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act02 = function(ai, goal)
   local func3_var2 = ai:GetRandam_Int(1, 100)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = localScriptConfigVar3
   local func3_var5 = localScriptConfigVar3 + 10
   local func3_var6 = 0
   local func3_var7 = ai:GetRandam_Int(1, 100)
   if func3_var2 <= 60 then
      func3_var3 = ai:GetDist(TARGET_ENE_0)
      func3_var4 = localScriptConfigVar3
      func3_var5 = localScriptConfigVar3 + 9999
      func3_var6 = 0
      func3_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func3_var4, func3_var5, func3_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1.5, 10)
end

Ja_yearl_demon539000_Act03 = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = localScriptConfigVar5
   local func4_var4 = localScriptConfigVar5 + 0
   local func4_var5 = 0
   local func4_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func4_var3, func4_var4, func4_var5)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act04 = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar7
   local func5_var5 = localScriptConfigVar7 + 10
   local func5_var6 = 0
   local func5_var7 = ai:GetRandam_Int(1, 100)
   if func5_var2 <= 60 then
      func5_var3 = ai:GetDist(TARGET_ENE_0)
      func5_var4 = localScriptConfigVar7
      func5_var5 = localScriptConfigVar1 + 9999
      func5_var6 = 0
      func5_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func5_var4, func5_var5, func5_var6)
   if func5_var7 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 8)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 8)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act05 = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar9
   local func6_var5 = localScriptConfigVar9 + 10
   local func6_var6 = 0
   local func6_var7 = ai:GetRandam_Int(1, 100)
   if func6_var2 <= 60 then
      func6_var3 = ai:GetDist(TARGET_ENE_0)
      func6_var4 = localScriptConfigVar9
      func6_var5 = localScriptConfigVar9 + 9999
      func6_var6 = 0
      func6_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act06 = function(ai, goal)
   local func7_var2 = ai:GetRandam_Int(1, 100)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = localScriptConfigVar11
   local func7_var5 = localScriptConfigVar11 + 10
   local func7_var6 = 0
   local func7_var7 = ai:GetRandam_Int(1, 100)
   if func7_var2 <= 60 then
      func7_var3 = ai:GetDist(TARGET_ENE_0)
      func7_var4 = localScriptConfigVar11
      func7_var5 = localScriptConfigVar11 + 9999
      func7_var6 = 0
      func7_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func7_var4, func7_var5, func7_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act07 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle)
end

Ja_yearl_demon539000_Act08 = function(ai, goal)
   local func9_var2 = ai:GetDist(TARGET_ENE_0)
   local func9_var3 = ai:GetRandam_Int(30, 60)
   ai:SetTimer(0, func9_var3)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 15, 22, TARGET_ENE_0, true, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, DIST_None, -1, -1)
end

Ja_yearl_demon539000_Act09 = function(ai, goal)
   local func10_var2 = ai:GetDist(TARGET_ENE_0)
   local func10_var3 = ai:GetRandam_Int(30, 60)
   ai:SetTimer(0, func10_var3)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 15, 22, TARGET_ENE_0, true, -1)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, DIST_None, -1, -1)
end

Ja_yearl_demon539000_Act10 = function(ai, goal)
   local func11_var2 = ai:GetRandam_Int(0, 100)
   local func11_var3 = ai:GetRandam_Int(0, 1)
   local func11_var4 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func11_var3, TARGET_ENE_0, 2)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func11_var3, ai:GetRandam_Int(50, 110), true, true, -1)
end

Ja_yearl_demon539000_Act11 = function(ai, goal)
   local func12_var2 = ai:GetDist(TARGET_ENE_0)
   local func12_var3 = 22
   local func12_var4 = 32
   local func12_var5 = 0
   local func12_var6 = ai:GetRandam_Int(1, 100)
   Approach_Act(ai, goal, func12_var3, func12_var4, func12_var5)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 10, TARGET_ENE_0, 15, 22, TARGET_ENE_0, true, -1)
end

Ja_yearl_demon539000_Act12 = function(ai, goal)
   local func13_var2 = ai:GetRandam_Int(1, 100)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = localScriptConfigVar1 + 2
   local func13_var5 = localScriptConfigVar1 + 12
   local func13_var6 = 0
   local func13_var7 = ai:GetRandam_Int(1, 100)
   if func13_var2 <= 60 then
      func13_var3 = ai:GetDist(TARGET_ENE_0)
      func13_var4 = localScriptConfigVar1 + 2
      func13_var5 = localScriptConfigVar1 + 9999
      func13_var6 = 0
      func13_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func13_var4, func13_var5, func13_var6)
   if func13_var7 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act13 = function(ai, goal)
   local func14_var2 = ai:GetRandam_Int(1, 100)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = localScriptConfigVar3 + 2
   local func14_var5 = localScriptConfigVar3 + 12
   local func14_var6 = 0
   local func14_var7 = ai:GetRandam_Int(1, 100)
   if func14_var2 <= 60 then
      func14_var3 = ai:GetDist(TARGET_ENE_0)
      func14_var4 = localScriptConfigVar3 + 2
      func14_var5 = localScriptConfigVar3 + 9999
      func14_var6 = 0
      func14_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func14_var4, func14_var5, func14_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1.5, 10)
end

Ja_yearl_demon539000_Act14 = function(ai, goal)
   local func15_var2 = ai:GetRandam_Int(1, 100)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = localScriptConfigVar7 + 2
   local func15_var5 = localScriptConfigVar7 + 12
   local func15_var6 = 0
   local func15_var7 = ai:GetRandam_Int(1, 100)
   if func15_var2 <= 60 then
      func15_var3 = ai:GetDist(TARGET_ENE_0)
      func15_var4 = localScriptConfigVar7 + 2
      func15_var5 = localScriptConfigVar7 + 9999
      func15_var6 = 0
      func15_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func15_var4, func15_var5, func15_var6)
   if func15_var7 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act15 = function(ai, goal)
   local func16_var2 = ai:GetRandam_Int(1, 100)
   local func16_var3 = ai:GetDist(TARGET_ENE_0)
   local func16_var4 = localScriptConfigVar9 + 2
   local func16_var5 = localScriptConfigVar9 + 12
   local func16_var6 = 0
   local func16_var7 = ai:GetRandam_Int(1, 100)
   if func16_var2 <= 60 then
      func16_var3 = ai:GetDist(TARGET_ENE_0)
      func16_var4 = localScriptConfigVar1 + 2
      func16_var5 = localScriptConfigVar9 + 9999
      func16_var6 = 0
      func16_var7 = ai:GetRandam_Int(1, 100)
   end
   Approach_Act(ai, goal, func16_var4, func16_var5, func16_var6)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_Act16 = function(ai, goal)
   local func17_var2 = ai:GetDist(TARGET_ENE_0)
   local func17_var3 = localScriptConfigVar1 + 2
   local func17_var4 = localScriptConfigVar1 + 12
   local func17_var5 = 0
   local func17_var6 = ai:GetRandam_Int(1, 100)
   if func17_var6 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act17 = function(ai, goal)
   local func18_var2 = ai:GetDist(TARGET_ENE_0)
   local func18_var3 = localScriptConfigVar3 + 2
   local func18_var4 = localScriptConfigVar3 + 12
   local func18_var5 = 0
   local func18_var6 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, DIST_Middle, 1.5, 10)
end

Ja_yearl_demon539000_Act18 = function(ai, goal)
   local func19_var2 = ai:GetDist(TARGET_ENE_0)
   local func19_var3 = localScriptConfigVar7 + 2
   local func19_var4 = localScriptConfigVar7 + 12
   local func19_var5 = 0
   local func19_var6 = ai:GetRandam_Int(1, 100)
   if func19_var6 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, DIST_Middle, 1.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Ja_yearl_demon539000_Act19 = function(ai, goal)
   local func20_var2 = ai:GetDist(TARGET_ENE_0)
   local func20_var3 = localScriptConfigVar9 + 2
   local func20_var4 = localScriptConfigVar9 + 12
   local func20_var5 = 0
   local func20_var6 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, DIST_Middle, 1.5, 25)
end

Ja_yearl_demon539000_GetWellSpace_Act = function(ai, goal)
   local func21_var2 = ai:GetRandam_Int(0, 100)
   local func21_var3 = ai:GetRandam_Int(0, 1)
   local func21_var4 = ai:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L + func21_var3, TARGET_ENE_0, 2)
   if func21_var2 <= 50 then
   elseif func21_var2 <= 75 and func21_var4 < 2 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, func21_var3, ai:GetRandam_Int(50, 110), true, true, -1)
   else
      local func21_var5 = ai:GetRandam_Int(1, 100)
      if func21_var5 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
   end
end

Ja_yearl_demon539000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Ja_yearl_demon539000Battle_Terminate = function(ai, goal)
end

Ja_yearl_demon539000Battle_Interupt = function(ai, goal)
   return false
end


