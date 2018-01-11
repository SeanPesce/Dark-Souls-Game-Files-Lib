Boss_Izalis540000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetDist(TARGET_ENE_0)
   local func1_var3 = ai:GetRandam_Int(1, 100)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetEventRequest(0)
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
   local func1_var28 = 0
   local func1_var29 = 0
   local func1_var30 = 0
   local func1_var31 = 0
   local func1_var32 = 0
   local func1_var33 = 0
   local func1_var34 = 0
   local func1_var35 = 0
   local func1_var36 = 0
   local func1_var37 = 0
   local func1_var38 = 0
   local func1_var39 = 0
   local func1_var40 = 0
   local func1_var41 = 0
   local func1_var42 = 0
   local func1_var43 = 0
   local func1_var44 = 0
   local func1_var45 = 0
   local func1_var46 = 0
   local func1_var47 = 0
   local func1_var48 = 0
   local func1_var49 = 0
   local func1_var50 = 0
   local func1_var51 = 0
   local func1_var52 = 0
   local func1_var53 = 0
   local func1_var54 = 0
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412570) then
      func1_var37 = 1
      func1_var49 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412572) then
      func1_var38 = 1
      func1_var50 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412576) then
      func1_var39 = 1
      func1_var51 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412580) then
      func1_var40 = 1
      func1_var52 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412584) then
      func1_var41 = 1
      func1_var53 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412588) then
      func1_var42 = 1
      func1_var54 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412609) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412610) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412614) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412615) then
      func1_var32 = 1
      func1_var43 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412612) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412613) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412617) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412618) then
      func1_var33 = 1
      func1_var44 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412619) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412620) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412624) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412625) then
      func1_var35 = 1
      func1_var47 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412622) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412623) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412627) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412628) then
      func1_var36 = 1
      func1_var48 = 1
   end
   if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412611) or ai:IsInsideTargetRegion(TARGET_ENE_0, 1412616) then
      func1_var34 = 1
      func1_var45 = 1
   end
   if ai:IsFinishTimer(0) == true then
      func1_var46 = 1
   end
   if ai:HasSpecialEffectId(TARGET_SELF, 5130) then
      if func1_var49 == 1 then
         func1_var25 = 100
         -- Tried to add an 'end' here but it's incorrect
         if func1_var50 == 1 then
            func1_var26 = 100
         end
         if func1_var51 == 1 then
            func1_var27 = 100
         end
         if func1_var52 == 1 then
            func1_var28 = 100
         end
         if func1_var53 == 1 then
            func1_var29 = 100
         end
         if func1_var54 == 1 then
            func1_var30 = 100
         end
         if func1_var45 == 1 then
            func1_var21 = 100
         end
         if func1_var43 == 1 then
            func1_var19 = 2
         end
         if func1_var44 == 1 then
            func1_var20 = 2
         end
         if func1_var46 == 1 then
            func1_var22 = 20
         end
         if func1_var47 == 1 then
            func1_var23 = 2
         end
         if func1_var48 == 1 then
            func1_var24 = 2
         end
         func1_var31 = 10
      elseif func1_var37 == 1 then
         func1_var13 = 100
      end
      if func1_var38 == 1 then
         func1_var14 = 100
      end
      if func1_var39 == 1 then
         func1_var15 = 100
      end
      if func1_var40 == 1 then
         func1_var16 = 100
      end
      if func1_var41 == 1 then
         func1_var17 = 100
      end
      if func1_var42 == 1 then
         func1_var18 = 100
      end
      if func1_var34 == 1 then
         func1_var10 = 100
      end
      if func1_var32 == 1 then
         func1_var8 = 2
      end
      if func1_var33 == 1 then
         func1_var9 = 2
      end
      if func1_var35 == 1 then
         func1_var11 = 2
      end
      if func1_var36 == 1 then
         func1_var12 = 2
      end
      func1_var31 = 10
      goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2.5, 4), TARGET_NONE, 0, 0, 0)
      local func1_var55 = ai:GetRandam_Int(1, func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31)
      if func1_var55 <= func1_var8 then
         Boss_Izalis540000_Act01(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 then
         Boss_Izalis540000_Act02(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 then
         Boss_Izalis540000_Act03(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 then
         Boss_Izalis540000_Act04(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 then
         Boss_Izalis540000_Act05(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
         Boss_Izalis540000_Act11(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         Boss_Izalis540000_Act12(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         Boss_Izalis540000_Act13(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
         Boss_Izalis540000_Act14(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
         Boss_Izalis540000_Act15(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
         Boss_Izalis540000_Act16(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
         Boss_Izalis540000_Act21(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
         Boss_Izalis540000_Act22(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 then
         Boss_Izalis540000_Act23(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 then
         Boss_Izalis540000_Act24(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 then
         Boss_Izalis540000_Act25(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 then
         Boss_Izalis540000_Act26(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 then
         Boss_Izalis540000_Act31(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 then
         Boss_Izalis540000_Act32(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 then
         Boss_Izalis540000_Act33(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 then
         Boss_Izalis540000_Act34(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 then
         Boss_Izalis540000_Act35(ai, goal)
      elseif func1_var55 <= func1_var8 + func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 then
         Boss_Izalis540000_Act36(ai, goal)
      else
         Boss_Izalis540000_Act40(ai, goal)
      end
end

Boss_Izalis540000_Act01 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3000, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3001, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3002, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act04 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3003, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3006, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act12 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3007, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act13 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3008, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act14 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3009, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act15 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act16 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3011, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act21 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3000, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act22 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3001, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act23 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3002, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act24 = function(ai, goal)
   ai:SetTimer(0, 30)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3003, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act25 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3004, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act26 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3005, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act31 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3006, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act32 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3007, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act33 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3008, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act34 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3009, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act35 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act36 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3011, TARGET_ENE_0, DIST_None, 0)
end

Boss_Izalis540000_Act40 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(1, 3), TARGET_NONE, 0, 0, 0)
end

Boss_Izalis540000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Boss_Izalis540000Battle_Terminate = function(ai, goal)
end

Boss_Izalis540000Battle_Interupt = function(ai, goal)
   return false
end


