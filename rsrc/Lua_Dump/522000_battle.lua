Hakaoh522000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = 4
   local func1_var8 = 6
   local func1_var9 = 2
   local func1_var10 = 5
   local func1_var11 = 2
   local func1_var12 = 7
   local func1_var13 = 4
   local func1_var14 = 7
   local func1_var15 = 3
   local func1_var16 = 9.3
   local func1_var17 = 4
   local func1_var18 = 5
   local func1_var19 = -4
   local func1_var20 = 20
   local func1_var21 = -4
   local func1_var22 = 3
   local func1_var23 = 0
   local func1_var24 = 0
   local func1_var25 = 0
   local func1_var26 = 0
   local func1_var27 = 0
   local func1_var28 = 0
   local func1_var29 = 0
   local func1_var30 = 0
   if func1_var2 >= 10 then
      func1_var23 = 10
      func1_var24 = 5
      func1_var25 = 20
      func1_var26 = 20
      func1_var27 = 5
      func1_var28 = 5
      func1_var29 = 35
      func1_var30 = 0
   elseif func1_var2 >= 6 then
      func1_var23 = 10
      func1_var24 = 5
      func1_var25 = 5
      func1_var26 = 20
      func1_var27 = 20
      func1_var28 = 20
      func1_var29 = 20
      func1_var30 = 0
   elseif func1_var2 >= 3.5 then
      func1_var23 = 10
      func1_var24 = 25
      func1_var25 = 25
      func1_var26 = 10
      func1_var27 = 10
      func1_var28 = 10
      func1_var29 = 10
      func1_var30 = 0
   else
      func1_var23 = 0
      func1_var24 = 20
      func1_var25 = 20
      func1_var26 = 10
      func1_var27 = 0
      func1_var28 = 0
      func1_var29 = 0
      func1_var30 = 50
   end
   if func1_var4 <= func1_var23 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func1_var8, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func1_var4 <= func1_var23 + func1_var24 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func1_var10, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func1_var4 <= func1_var23 + func1_var24 + func1_var25 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func1_var12, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func1_var4 <= func1_var23 + func1_var24 + func1_var25 + func1_var26 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func1_var14, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   elseif func1_var4 <= func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func1_var16, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif func1_var4 <= func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, func1_var18, TARGET_SELF, true, -1)
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   elseif func1_var4 <= func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 then
      local func1_var31 = func1_var20
      local func1_var32 = func1_var20 + 2
      local func1_var33 = 0
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   else
      local func1_var31 = func1_var22
      local func1_var32 = func1_var22 + 2
      local func1_var33 = 0
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   end
   Hakaoh522000Battle_Kougeki_Noato(ai, goal)
end

Hakaoh522000Battle_Kougeki_Noato = function(ai, goal)
   local func2_var2 = ai:GetRandam_Int(1, 100)
   local func2_var3 = ai:GetRandam_Int(1, 100)
   if func2_var2 <= 70 then
   elseif func2_var2 <= 100 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   elseif func2_var2 <= 100 then
      if func2_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   else
   end
end

Hakaoh522000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hakaoh522000Battle_Terminate = function(ai, goal)
end

Hakaoh522000Battle_Interupt = function(ai, goal)
   return false
end


