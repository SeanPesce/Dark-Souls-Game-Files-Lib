local localScriptConfigVar0 = -0.2
local localScriptConfigVar1 = 2
local localScriptConfigVar2 = 6.2
local localScriptConfigVar3 = 8.9
local localScriptConfigVar4 = -2.4
local localScriptConfigVar5 = 9.1
local localScriptConfigVar6 = -2.4
local localScriptConfigVar7 = 4.6
local localScriptConfigVar8 = -2
local localScriptConfigVar9 = 5.3
local localScriptConfigVar10 = -2.4
local localScriptConfigVar11 = 9.3
local localScriptConfigVar12 = -2.4
local localScriptConfigVar13 = 4
local localScriptConfigVar14 = -2.4
local localScriptConfigVar15 = 4
local localScriptConfigVar16 = -4
local localScriptConfigVar17 = -2.9
local localScriptConfigVar18 = -4
local localScriptConfigVar19 = -0.8
local localScriptConfigVar20 = -2.4
local localScriptConfigVar21 = -2.47
WD_Seath_Muteki529001Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetEventRequest()
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 130, 3)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 131, 4)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 132, 5)
   ai:AddObserveChrDmySphere(3, TARGET_ENE_0, 133, 3)
   ai:AddObserveChrDmySphere(4, TARGET_ENE_0, 134, 4)
   ai:AddObserveChrDmySphere(5, TARGET_ENE_0, 135, 5)
   ai:AddObserveChrDmySphere(6, TARGET_ENE_0, 136, 3)
   ai:AddObserveChrDmySphere(7, TARGET_ENE_0, 137, 4)
   ai:AddObserveChrDmySphere(8, TARGET_ENE_0, 138, 5)
   ai:AddObserveChrDmySphere(9, TARGET_ENE_0, 139, 3)
   ai:AddObserveChrDmySphere(10, TARGET_ENE_0, 140, 4)
   ai:AddObserveChrDmySphere(11, TARGET_ENE_0, 141, 5)
   ai:AddObserveChrDmySphere(12, TARGET_ENE_0, 142, 3)
   ai:AddObserveChrDmySphere(13, TARGET_ENE_0, 143, 4)
   ai:AddObserveChrDmySphere(14, TARGET_ENE_0, 144, 5)
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
   local func1_var19 = 100
   if ai:IsFinishTimer(0) == true then
      ai:SetTimer(0, 9999)
      ai:SetTimer(1, 20)
   end
   if ai:IsFinishTimer(1) == true then
      func1_var12 = 100
   elseif ai:IsInsideObserve(3) or ai:IsInsideObserve(4) or ai:IsInsideObserve(6) or ai:IsInsideObserve(7) or ai:IsInsideObserve(9) or ai:IsInsideObserve(10) or ai:IsInsideObserve(12) or ai:IsInsideObserve(13) then
      func1_var7 = 100
      if ai:IsInsideObserve(2) or ai:IsInsideObserve(5) or ai:IsInsideObserve(8) or ai:IsInsideObserve(11) or ai:IsInsideObserve(14) then
         func1_var8 = 100
      end
      if ai:IsInsideObserve(6) or ai:IsInsideObserve(7) or ai:IsInsideObserve(8) then
         func1_var9 = 100
      end
      if ai:IsInsideObserve(6) or ai:IsInsideObserve(9) or ai:IsInsideObserve(12) then
         func1_var10 = 80
      end
      if ai:IsInsideObserve(3) or ai:IsInsideObserve(4) or ai:IsInsideObserve(6) or ai:IsInsideObserve(7) then
         func1_var11 = 80
      end
      if ai:IsInsideObserve(0) or ai:IsInsideObserve(3) or ai:IsInsideObserve(6) or ai:IsInsideObserve(9) or ai:IsInsideObserve(12) then
         func1_var17 = 0
      end
      if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 15) and func1_var2 <= 18.7 then
         func1_var9 = 100
      end
      if func1_var2 <= -1 then
         if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 10) then
            func1_var7 = 0
            func1_var9 = 70
            func1_var15 = 10
            func1_var16 = 10
            func1_var12 = 0
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 64) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            func1_var15 = 50
            func1_var17 = 50
         elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 54) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            func1_var16 = 50
            func1_var17 = 50
         else
            func1_var13 = 40
            func1_var14 = 40
            func1_var17 = 20
         end
      else
         func1_var18 = 0
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         local func1_var20 = ai:GetRandam_Int(1, func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18)
         if func1_var20 <= func1_var7 then
            WD_Seath_Muteki529001_Act00(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 then
            WD_Seath_Muteki529001_Act01(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 then
            WD_Seath_Muteki529001_Act02(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 then
            WD_Seath_Muteki529001_Act03(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 then
            WD_Seath_Muteki529001_Act04(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
            WD_Seath_Muteki529001_Act05(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
            WD_Seath_Muteki529001_Act06(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
            WD_Seath_Muteki529001_Act07(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
            WD_Seath_Muteki529001_Act08(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
            WD_Seath_Muteki529001_Act09(ai, goal)
         elseif func1_var20 <= func1_var7 + func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
            WD_Seath_Muteki529001_Act10(ai, goal)
         else
            WD_Seath_Muteki529001_Act11(ai, goal)
         end
         local func1_var21 = ai:GetRandam_Int(1, 100)
         if func1_var21 <= func1_var19 then
            WD_Seath_Muteki529001_GetWellSpace_Act(ai, goal)
         end
end

WD_Seath_Muteki529001_Act00 = function(ai, goal)
   local func2_var2 = localScriptConfigVar1
   local func2_var3 = localScriptConfigVar1 + 200
   local func2_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act01 = function(ai, goal)
   local func3_var2 = localScriptConfigVar3
   local func3_var3 = localScriptConfigVar3 + 200
   local func3_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act02 = function(ai, goal)
   local func4_var2 = localScriptConfigVar5
   local func4_var3 = localScriptConfigVar5 + 200
   local func4_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act03 = function(ai, goal)
   local func5_var2 = localScriptConfigVar7
   local func5_var3 = localScriptConfigVar7 + 200
   local func5_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act04 = function(ai, goal)
   local func6_var2 = localScriptConfigVar9
   local func6_var3 = localScriptConfigVar9 + 200
   local func6_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act05 = function(ai, goal)
   local func7_var2 = localScriptConfigVar11
   local func7_var3 = localScriptConfigVar11 + 200
   local func7_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act06 = function(ai, goal)
   local func8_var2 = localScriptConfigVar13
   local func8_var3 = localScriptConfigVar13 + 200
   local func8_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act07 = function(ai, goal)
   local func9_var2 = localScriptConfigVar15
   local func9_var3 = localScriptConfigVar15 + 200
   local func9_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act08 = function(ai, goal)
   local func10_var2 = localScriptConfigVar17
   local func10_var3 = localScriptConfigVar17 + 200
   local func10_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act09 = function(ai, goal)
   local func11_var2 = localScriptConfigVar19
   local func11_var3 = localScriptConfigVar19 + 200
   local func11_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act10 = function(ai, goal)
   local func12_var2 = localScriptConfigVar21
   local func12_var3 = localScriptConfigVar21 + 200
   local func12_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
end

WD_Seath_Muteki529001_Act11 = function(ai, goal)
   local func13_var2 = localScriptConfigVar21
   local func13_var3 = localScriptConfigVar21 + 200
   local func13_var4 = 0
   goal:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
end

WD_Seath_Muteki529001_GetWellSpace_Act = function(ai, goal)
   local func14_var2 = ai:GetRandam_Int(1, 100)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   if func14_var2 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
   else
   end
end

WD_Seath_Muteki529001Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

WD_Seath_Muteki529001Battle_Terminate = function(ai, goal)
end

WD_Seath_Muteki529001Battle_Interupt = function(ai, goal)
   return false
end


