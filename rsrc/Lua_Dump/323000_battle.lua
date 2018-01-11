OnIf_323000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   if func1_param2 == 0 then
      ai:SetTimer(0, 60)
      ai:SetTimer(1, 30)
      local func1_var6 = ai:GetHpRate(TARGET_SELF)
      ai:SetNumber(1, func1_var6)
      ai:SetNumber(0, 1)
   end
end

Kagerou323000Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetHpRate(TARGET_SELF)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = 0
   local func2_var8 = 0
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   local func2_var14 = 0
   local func2_var15 = 0
   local func2_var16 = 0
   local func2_var17 = 0
   local func2_var18 = ai:GetNumber(0)
   local func2_var19 = ai:GetTimer(0)
   local func2_var20 = ai:GetTimer(1)
   local func2_var21 = ai:GetNumber(0)
   local func2_var22 = ai:GetNumber(1)
   local func2_var23 = ai:GetNumber(1) - func2_var3
   if func2_var18 == 0 then
      goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_NONE, 0, 0, 0)
   end
   if ai:IsInsideTargetRegion(TARGET_SELF, 1202210) then
      func2_var10 = 100
   elseif (ai:IsFinishTimer(0) and func2_var18 == 1 and not ai:IsInsideTargetRegion(TARGET_SELF, 1202226)) or func2_var3 <= ai:GetNumber(1) - 0.2 and ai:IsFinishTimer(1) and func2_var18 == 1 and not ai:IsInsideTargetRegion(TARGET_SELF, 1202226) then
      func2_var9 = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202245) and (ai:IsInsideTargetRegion(TARGET_SELF, 1202225) or ai:IsInsideTargetRegion(TARGET_SELF, 1202226)) then
      func2_var11 = 100
   elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202245) and (ai:IsInsideTargetRegion(TARGET_SELF, 1202227) or ai:IsInsideTargetRegion(TARGET_SELF, 1202228) or ai:IsInsideTargetRegion(TARGET_SELF, 1202228)) then
      func2_var12 = 100
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202220) then
      if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
         func2_var8 = 5
         func2_var12 = 35
         func2_var13 = 60
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
         func2_var8 = 60
         func2_var12 = 35
         func2_var13 = 5
      else
         func2_var8 = 95
         func2_var12 = 5
      end
   else
      if ai:IsInsideTargetRegion(TARGET_SELF, 1202221) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            func2_var7 = 60
            func2_var11 = 15
            func2_var13 = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            func2_var7 = 20
            func2_var8 = 20
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            func2_var8 = 60
            func2_var12 = 15
            func2_var13 = 25
         else
            func2_var8 = 95
            func2_var12 = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202222) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            func2_var7 = 85
            func2_var11 = 15
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            func2_var7 = 60
            func2_var11 = 15
            func2_var13 = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            func2_var7 = 20
            func2_var8 = 20
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            func2_var8 = 60
            func2_var12 = 15
            func2_var13 = 25
         else
            func2_var8 = 85
            func2_var12 = 15
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202223) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            func2_var8 = 60
            func2_var12 = 15
            func2_var13 = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            func2_var7 = 20
            func2_var8 = 20
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            func2_var7 = 60
            func2_var11 = 15
            func2_var13 = 25
         else
            func2_var7 = 95
            func2_var11 = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202224) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            func2_var7 = 5
            func2_var11 = 35
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            func2_var7 = 60
            func2_var11 = 35
            func2_var13 = 5
         else
            func2_var7 = 95
            func2_var11 = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202225) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            func2_var7 = 5
            func2_var11 = 35
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            func2_var7 = 60
            func2_var11 = 35
            func2_var13 = 5
         else
            func2_var7 = 95
            func2_var11 = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202226) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            func2_var8 = 60
            func2_var12 = 15
            func2_var13 = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            func2_var7 = 20
            func2_var8 = 20
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            func2_var7 = 60
            func2_var11 = 15
            func2_var13 = 25
         else
            func2_var7 = 95
            func2_var11 = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202227) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202240) then
            func2_var8 = 85
            func2_var12 = 15
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202241) then
            func2_var8 = 60
            func2_var12 = 15
            func2_var13 = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            func2_var7 = 20
            func2_var8 = 20
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            func2_var7 = 60
            func2_var11 = 15
            func2_var13 = 25
         else
            func2_var7 = 85
            func2_var11 = 15
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202228) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            func2_var7 = 60
            func2_var11 = 15
            func2_var13 = 25
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            func2_var7 = 20
            func2_var8 = 20
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202242) then
            func2_var8 = 60
            func2_var12 = 15
            func2_var13 = 25
         else
            func2_var8 = 95
            func2_var12 = 5
         end
      elseif ai:IsInsideTargetRegion(TARGET_SELF, 1202229) then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1202244) then
            func2_var8 = 5
            func2_var12 = 35
            func2_var13 = 60
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1202243) then
            func2_var8 = 60
            func2_var12 = 35
            func2_var13 = 5
         else
            func2_var8 = 95
            func2_var12 = 5
         end
      else
         ai:PrintText("ERROR Area Over")
         func2_var13 = 100
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local func2_var24 = ai:GetRandam_Int(1, func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 + func2_var13)
      local func2_var25 = ai:GetRandam_Int(1, func2_var14 + func2_var15 + func2_var16 + func2_var17)
      if func2_var24 <= func2_var7 then
         local func2_var26 = 3010
         if func2_var4 <= 50 then
            func2_var26 = 3010
         elseif func2_var4 <= 80 then
            func2_var26 = 3001
         else
            func2_var26 = 3002
         end
         ai:PrintText("Do RightMove")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, func2_var26, TARGET_ENE_0, DIST_None, 0)
      elseif func2_var24 <= func2_var7 + func2_var8 then
         local func2_var26 = 3011
         if func2_var4 <= 50 then
            func2_var26 = 3011
         elseif func2_var4 <= 80 then
            func2_var26 = 3004
         else
            func2_var26 = 3005
         end
         ai:PrintText("Do LeftMove")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, func2_var26, TARGET_ENE_0, DIST_None, 0)
      elseif func2_var24 <= func2_var7 + func2_var8 + func2_var9 then
         ai:PrintText("Do Landing")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3020, TARGET_ENE_0, DIST_None, 0)
      elseif func2_var24 <= func2_var7 + func2_var8 + func2_var9 + func2_var10 then
         ai:PrintText("Do TakeOff")
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(4, 8), TARGET_NONE, 0, 0, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3001, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3000, TARGET_ENE_0, DIST_None, 0)
         goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
      elseif func2_var24 <= func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 then
         local func2_var26 = 3013
         if func2_var4 <= 80 and func2_var3 <= 0.5 then
            func2_var26 = 3013
         else
            func2_var26 = 3024
         end
         ai:PrintText("Do Turnaround Right")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, func2_var26, TARGET_ENE_0, DIST_None, 0)
      elseif func2_var24 <= func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var11 + func2_var12 then
         local func2_var26 = 3012
         if func2_var4 <= 80 and func2_var3 <= 0.5 then
            func2_var26 = 3012
         else
            func2_var26 = 3022
         end
         ai:PrintText("Do Turnaround Left")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, func2_var26, TARGET_ENE_0, DIST_None, 0)
      else
         local func2_var26 = 3014
         if func2_var3 <= 0.5 then
            if func2_var4 <= 15 then
               func2_var26 = 3014
            elseif func2_var4 <= 30 then
               func2_var26 = 3007
            elseif func2_var4 <= 100 then
               func2_var26 = 3015
            else
               func2_var26 = 3008
            end
         elseif func2_var4 <= 35 then
            func2_var26 = 3014
         elseif func2_var4 <= 75 then
            func2_var26 = 3007
         elseif func2_var4 <= 90 then
            func2_var26 = 3015
         else
            func2_var26 = 3008
         end
         -- Tried to add an 'end' here but it's incorrect
         ai:PrintText("Do Hover")
         goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, func2_var26, TARGET_ENE_0, DIST_None, 0)
      end
end

Kagerou323000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kagerou323000Battle_Terminate = function(ai, goal)
end

Kagerou323000Battle_Interupt = function(ai, goal)
   return false
end


