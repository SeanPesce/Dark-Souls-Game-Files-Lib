local localScriptConfigVar0 = 18
local localScriptConfigVar1 = 34
local localScriptConfigVar2 = 18
local localScriptConfigVar3 = 38
local localScriptConfigVar4 = 20
local localScriptConfigVar5 = 40
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 5
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 5
local localScriptConfigVar10 = 5.5
local localScriptConfigVar11 = 13
local localScriptConfigVar12 = 8
local localScriptConfigVar13 = 13
local localScriptConfigVar14 = 3
local localScriptConfigVar15 = 16
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 0
local localScriptConfigVar18 = 5
local localScriptConfigVar19 = 25
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 5.5
OnIf_343000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   ai:SetNumber(0, 0)
end

Hellkite343000Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetDist(TARGET_ENE_0)
   local func2_var3 = ai:GetEventRequest(1)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = ai:GetRandam_Int(1, 100)
   local func2_var9 = ai:GetRandam_Int(1, 100)
   local func2_var10 = ai:GetRandam_Int(1, 100)
   local func2_var11 = ai:GetRandam_Int(1, 100)
   local func2_var12 = ai:GetRandam_Int(1, 100)
   local func2_var13 = ai:GetRandam_Int(1, 100)
   local func2_var14 = 0
   local func2_var15 = ai:GetPartsDmg(func2_var14)
   local func2_var16 = ai:GetTimer(0)
   local func2_var17 = ai:GetTimer(1)
   local func2_var18 = ai:GetTimer(2)
   local func2_var19 = 0
   local func2_var20 = 0
   local func2_var21 = 0
   local func2_var22 = 0
   local func2_var23 = 0
   local func2_var24 = 0
   local func2_var25 = 0
   local func2_var26 = 0
   local func2_var27 = 0
   local func2_var28 = 0
   local func2_var29 = 0
   local func2_var30 = 0
   local func2_var31 = 0
   local func2_var32 = 0
   local func2_var33 = 0
   local func2_var34 = 0
   local func2_var35 = 0
   ai:AddObserveChrDmySphere(0, TARGET_ENE_0, 100, 2.3)
   ai:AddObserveChrDmySphere(1, TARGET_ENE_0, 101, 2.5)
   ai:AddObserveChrDmySphere(2, TARGET_ENE_0, 102, 2.3)
   ai:SetEventMoveTarget(1012710)
   local func2_var36 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   local func2_var37 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012711)
   local func2_var38 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   local func2_var39 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   local func2_var40 = 1
   if func2_var15 == PARTS_DMG_FINAL then
      func2_var40 = 0
   end
   if func2_var16 > 0 then
      if func2_var2 <= 30 then
         func2_var30 = 100
      else
         func2_var27 = 100
      end
   elseif func2_var17 > 0 then
      if func2_var2 <= 12 then
         func2_var30 = 100
      else
         func2_var27 = 100
      end
   elseif func2_var18 > 0 then
      local func2_var41 = Find_Nearest_Point(ai, goal)
      ai:SetEventMoveTarget(func2_var41)
      if ai:GetDistAtoB(POINT_EVENT, TARGET_SELF) <= 1 or not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012760) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012761) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012762) and not ai:IsInsideTargetRegion(TARGET_ENE_0, 1012763) then
         func2_var30 = 100
      else
         func2_var27 = 100
      end
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) and func2_var2 >= 3 and func2_var2 <= 16 and func2_var4 <= 50 then
      func2_var26 = 100 * func2_var40
   elseif (ai:IsInsideTargetRegion(TARGET_ENE_0, 1012760) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1012761) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1012762) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1012763)) and func2_var13 <= 60 then
      local func2_var41 = Find_Nearest_Point(ai, goal)
      ai:SetEventMoveTarget(func2_var41)
      if ai:GetDistAtoB(POINT_EVENT, TARGET_SELF) >= 3 then
         func2_var34 = 100
      else
         func2_var33 = 100
      end
   elseif ai:IsInsideObserve(0) and func2_var5 <= 40 then
      func2_var22 = 100
   elseif ai:IsInsideObserve(1) and func2_var6 <= 40 then
      func2_var23 = 100
   elseif ai:IsInsideObserve(2) and func2_var7 <= 40 then
      func2_var24 = 100
   elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 30) and func2_var2 >= 6 and func2_var2 <= 13 and func2_var8 <= 40 then
      func2_var25 = 100
   elseif func2_var2 >= 40 then
      func2_var28 = 100
   elseif func2_var2 >= 34 then
      if (ai:IsInsideTargetRegion(TARGET_SELF, 1012716) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012717) and func2_var39 < func2_var38 then
         func2_var21 = 75
         -- Tried to add an 'end' here but it's incorrect
         func2_var28 = 25
      elseif func2_var2 >= 25 then
         if (ai:IsInsideTargetRegion(TARGET_SELF, 1012716) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012717) and func2_var39 < func2_var38 then
            func2_var21 = 60
            -- Tried to add an 'end' here but it's incorrect
            func2_var19 = 15
            func2_var20 = 15
            func2_var28 = 10
         elseif func2_var2 >= 20 then
            if (ai:IsInsideTargetRegion(TARGET_SELF, 1012716) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012717) and func2_var39 < func2_var38 then
               func2_var21 = 30
               -- Tried to add an 'end' here but it's incorrect
               if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and func2_var39 < func2_var38 then
                  func2_var32 = 40
               end
               func2_var19 = 14
               func2_var20 = 14
               func2_var29 = 2
            elseif func2_var2 >= 18 then
               if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and func2_var39 < func2_var38 then
                  func2_var32 = 60
                  -- Tried to add an 'end' here but it's incorrect
                  func2_var19 = 19
                  func2_var20 = 19
                  func2_var29 = 2
               elseif func2_var2 >= 13 then
                  if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and func2_var39 < func2_var38 then
                     func2_var32 = 90
                     -- Tried to add an 'end' here but it's incorrect
                     func2_var19 = 2
                     func2_var20 = 2
                     func2_var29 = 6
                  elseif func2_var2 >= 8 then
                     if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and func2_var39 < func2_var38 then
                        func2_var32 = 60
                        -- Tried to add an 'end' here but it's incorrect
                        if (ai:IsInsideTargetRegion(TARGET_SELF, 1012751) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012750) and func2_var39 < func2_var38 then
                           func2_var31 = 60
                        end
                        func2_var24 = 20
                        func2_var25 = 20
                     elseif func2_var2 >= 5.5 then
                        if (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and func2_var39 < func2_var38 then
                           func2_var32 = 70
                           -- Tried to add an 'end' here but it's incorrect
                           if (ai:IsInsideTargetRegion(TARGET_SELF, 1012751) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012750) and func2_var39 < func2_var38 then
                              func2_var31 = 70
                           end
                           func2_var24 = 30
                        elseif (ai:IsInsideTargetRegion(TARGET_SELF, 1012752) and func2_var37 < func2_var36) or ai:IsInsideTargetRegion(TARGET_SELF, 1012753) and func2_var39 < func2_var38 then
                           func2_var32 = 5
                           func2_var33 = 55
                           func2_var35 = 40
                        end
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        -- Tried to add an 'end' here but it's incorrect
                        local func2_var41 = ai:GetRandam_Int(1, func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 + func2_var29 + func2_var30 + func2_var31 + func2_var32 + func2_var33 + func2_var34 + func2_var35)
                        if func2_var3 >= 1 then
                           goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.1, POINT_INITIAL, true, -1)
                           ai:SetEventMoveTarget(1012711)
                           goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
                           goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3011, TARGET_ENE_0, DIST_None, 0)
                        elseif func2_var41 <= func2_var19 then
                           Hellkite343000_Act1(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 then
                           Hellkite343000_Act2(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 then
                           Hellkite343000_Act3(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 then
                           Hellkite343000_Act4(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 then
                           Hellkite343000_Act5(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 then
                           Hellkite343000_Act6(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 then
                           Hellkite343000_Act7(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 then
                           Hellkite343000_Act8(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 then
                           Hellkite343000_Act9(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 then
                           ai:SetTimer(0, 10)
                           Hellkite343000_Turn(ai, goal)
                           Hellkite343000_Act9(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 + func2_var29 then
                           ai:SetTimer(1, 10)
                           Hellkite343000_Turn(ai, goal)
                           Hellkite343000_Act9(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 + func2_var29 + func2_var30 then
                           ai:SetTimer(0, 0)
                           ai:SetTimer(1, 0)
                           ai:SetTimer(2, 0)
                           goal:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 + func2_var29 + func2_var30 + func2_var31 then
                           Hellkite343000_Act13(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 + func2_var29 + func2_var30 + func2_var31 + func2_var32 then
                           Hellkite343000_Act14(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 + func2_var29 + func2_var30 + func2_var31 + func2_var32 + func2_var33 then
                           Hellkite343000_Act15(ai, goal)
                        elseif func2_var41 <= func2_var19 + func2_var20 + func2_var21 + func2_var22 + func2_var23 + func2_var24 + func2_var25 + func2_var26 + func2_var27 + func2_var28 + func2_var29 + func2_var30 + func2_var31 + func2_var32 + func2_var33 + func2_var34 then
                           ai:SetTimer(2, 10)
                           Hellkite343000_Turn(ai, goal)
                           Hellkite343000_Act9(ai, goal)
                        else
                           Hellkite343000_Act17(ai, goal)
                        end
end

Hellkite343000_Turn = function(ai, goal)
   ai:SetEventMoveTarget(1012710)
   local func3_var2 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   local func3_var3 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   if func3_var3 <= func3_var2 then
      ai:SetEventMoveTarget(1012710)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   else
      ai:SetEventMoveTarget(1012711)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   end
end

Hellkite343000_Act1 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3000, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act2 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3001, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act3 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3002, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act4 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3003, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act5 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3004, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act6 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3005, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act7 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3006, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act8 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3007, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act9 = function(ai, goal)
   local func12_var2 = Find_Nearest_Point(ai, goal)
   ai:SetEventMoveTarget(func12_var2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, POINT_EVENT, 1, POINT_EVENT, true, -1)
end

Find_Nearest_Point = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   ai:SetEventMoveTarget(1012721)
   local func13_var3 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012722)
   local func13_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012723)
   local func13_var5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012724)
   local func13_var6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012725)
   local func13_var7 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012726)
   local func13_var8 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012727)
   local func13_var9 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012728)
   local func13_var10 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012729)
   local func13_var11 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012730)
   local func13_var12 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012731)
   local func13_var13 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012732)
   local func13_var14 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012733)
   local func13_var15 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012734)
   local func13_var16 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   ai:SetEventMoveTarget(1012735)
   local func13_var17 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
   local func13_var18 = math.min(func13_var3, func13_var4, func13_var5, func13_var6, func13_var7, func13_var8, func13_var9, func13_var10, func13_var11, func13_var12, func13_var13, func13_var14, func13_var15, func13_var16, func13_var17)
   if func13_var18 == func13_var3 then
      NearPoint = 1012721
   elseif func13_var18 == func13_var4 then
      NearPoint = 1012722
   elseif func13_var18 == func13_var5 then
      NearPoint = 1012723
   elseif func13_var18 == func13_var6 then
      NearPoint = 1012724
   elseif func13_var18 == func13_var7 then
      NearPoint = 1012725
   elseif func13_var18 == func13_var8 then
      NearPoint = 1012726
   elseif func13_var18 == func13_var9 then
      NearPoint = 1012727
   elseif func13_var18 == func13_var10 then
      NearPoint = 1012728
   elseif func13_var18 == func13_var11 then
      NearPoint = 1012729
   elseif func13_var18 == func13_var12 then
      NearPoint = 1012730
   elseif func13_var18 == func13_var13 then
      NearPoint = 1012731
   elseif func13_var18 == func13_var14 then
      NearPoint = 1012732
   elseif func13_var18 == func13_var15 then
      NearPoint = 1012733
   elseif func13_var18 == func13_var16 then
      NearPoint = 1012734
   elseif func13_var18 == func13_var17 then
      NearPoint = 1012735
   end
   return NearPoint
end

Hellkite343000_Act13 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3008, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act14 = function(ai, goal)
   Hellkite343000_Turn(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3009, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act15 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3010, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000_Act17 = function(ai, goal)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1012751) and ai:IsInsideTargetRegion(TARGET_SELF, 1012750) then
      ai:SetEventMoveTarget(1012711)
      if ai:IsInsideTarget(POINT_EVENT, AI_DIR_TYPE_F, 180) then
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
      else
         ai:SetEventMoveTarget(1012710)
         goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1012750) then
      ai:SetEventMoveTarget(1012711)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   else
      ai:SetEventMoveTarget(1012710)
      goal:AddSubGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 2, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 30, 3008, TARGET_ENE_0, DIST_None, 0)
end

Hellkite343000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Hellkite343000Battle_Terminate = function(ai, goal)
end

Hellkite343000Battle_Interupt = function(ai, goal)
   return false
end


