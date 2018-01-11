Normal_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = 2
   local func1_var6 = 4
   local func1_var7 = 0
   local func1_var8 = 3000
   local func1_var9 = 3000
   local func1_var10 = 3000
   local func1_var11 = 3
   local func1_var12 = 1
   local func1_var13 = 3
   local func1_var14 = 20
   local func1_var15 = 30
   local func1_var16 = 40
   local func1_var17 = 1.5
   local func1_var18 = 3.5
   local func1_var19 = 5.5
   local func1_var20 = 40
   local func1_var21 = 30
   local func1_var22 = 20
   local func1_var23 = 6
   local func1_var24 = 0
   local func1_var25 = 9
   local func1_var26 = 7
   local func1_var27 = 3
   if func1_var2 <= func1_var23 then
      if func1_var2 < func1_var5 then
         if func1_var3 <= func1_var14 then
            goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var11, TARGET_ENE_0, true)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, func1_var8, TARGET_ENE_0, DIST_Near, 0)
            if func1_var4 <= func1_var20 then
               goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var17, TARGET_ENE_0, true)
            elseif func1_var2 < func1_var6 then
               if func1_var3 <= func1_var15 then
                  goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var12, TARGET_ENE_0, true)
               else
                  goal:AddSubGoal(GOAL_COMMON_Attack, 10, func1_var9, TARGET_ENE_0, DIST_Near, 0)
                  if func1_var4 <= func1_var21 then
                     goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var18, TARGET_ENE_0, true)
                  elseif func1_var3 <= func1_var16 then
                     goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var13, TARGET_ENE_0, true)
                  else
                     goal:AddSubGoal(GOAL_COMMON_Attack, 10, func1_var10, TARGET_ENE_0, DIST_Near, 0)
                     if func1_var4 <= func1_var22 then
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var19, TARGET_ENE_0, true)
                     elseif func1_var2 <= func1_var25 then
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var27, TARGET_ENE_0, true)
                     else
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var26, TARGET_ENE_0, false)
                        goal:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, func1_var27, TARGET_ENE_0, true)
                     end
                     -- Tried to add an 'end' here but it's incorrect
                  end
                  -- Tried to add an 'end' here but it's incorrect
               end
            end
         end
end

Normal_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Normal_Terminate = function(ai, goal)
end

Normal_Interupt = function(ai, goal)
   local func4_var2 = ai:GetDist(TARGET_ENE_0)
   local func4_var3 = ai:GetRandam_Int(1, 100)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = 3
   local func4_var6 = 50
   local func4_var7 = 9910
   local func4_var8 = 3
   local func4_var9 = 50
   local func4_var10 = 3300
   local func4_var11 = 3
   local func4_var12 = 75
   local func4_var13 = 3300
   local func4_var14 = 3
   local func4_var15 = 40
   local func4_var16 = 3000
   if ai:IsInterupt(INTERUPT_FindAttack) and func4_var2 <= func4_var5 and func4_var3 <= func4_var6 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Guard, 5, func4_var7, TARGET_ENE_0, 0, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_MissSwing) and func4_var2 < func4_var8 and func4_var3 <= func4_var9 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, func4_var10, TARGET_ENE_0, DIST_Near, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_GuardBreak) and func4_var2 < func4_var11 and func4_var3 <= func4_var12 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, func4_var13, TARGET_ENE_0, DIST_Near, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_GuardFinish) and func4_var2 < func4_var14 and func4_var3 <= func4_var15 then
      goal:ClearSubGoal()
      goal:AddSubGoal(GOAL_COMMON_Attack, 5, func4_var16, TARGET_ENE_0, DIST_Near, 0)
      return true
   end
   return false
end


