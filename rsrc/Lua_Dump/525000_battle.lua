Tadare525000Battle_Activate = function(ai, goal)
   local func1_var2 = ai:GetHpRate(TARGET_SELF)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetEventRequest(1)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   local func1_var7 = ai:GetRandam_Int(1, 100)
   local func1_var8 = ai:GetRandam_Int(1, 100)
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
   local func1_var47 = ai:GetNumber(0) + 1
   ai:KickLuaCall(10000, func1_var47, 0)
   if ai:HasSpecialEffectId(TARGET_SELF, 5131) then
      func1_var41 = 100
   elseif ai:GetNumber(0) == 0 then
      if func1_var4 == 1 then
         func1_var42 = 100
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412795) then
         func1_var46 = 100
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412794) then
         func1_var45 = 100
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412780) then
         func1_var20 = 100
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 27 then
         func1_var9 = 50
         func1_var10 = 50
         func1_var11 = 30
         func1_var12 = 10
         func1_var13 = 0
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 29 then
         func1_var9 = 10
         func1_var10 = 10
         func1_var11 = 50
         func1_var12 = 30
         func1_var13 = 30
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 33 then
         func1_var9 = 0
         func1_var10 = 0
         func1_var11 = 10
         func1_var12 = 50
         func1_var13 = 30
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 37 then
         func1_var9 = 0
         func1_var10 = 0
         func1_var11 = 0
         func1_var12 = 30
         func1_var13 = 50
         func1_var44 = 20
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 38.5 then
         func1_var9 = 0
         func1_var10 = 0
         func1_var11 = 0
         func1_var12 = 0
         func1_var13 = 30
         func1_var44 = 50
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 69.5 then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412796) then
            if func1_var3 <= 45 then
               func1_var13 = 30
            else
               func1_var44 = 100
            end
         else
            func1_var44 = 25
            func1_var14 = 75
         end
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) then
         func1_var44 = 100
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 26 then
         func1_var15 = 50
         func1_var16 = 50
         func1_var17 = 30
         func1_var18 = 10
         func1_var19 = 0
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 30 then
         func1_var15 = 10
         func1_var16 = 10
         func1_var17 = 50
         func1_var18 = 30
         func1_var19 = 30
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 33 then
         func1_var15 = 0
         func1_var16 = 0
         func1_var17 = 10
         func1_var18 = 50
         func1_var19 = 30
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 35 then
         func1_var15 = 0
         func1_var16 = 0
         func1_var17 = 0
         func1_var18 = 30
         func1_var19 = 50
         func1_var44 = 20
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 38 then
         func1_var15 = 0
         func1_var16 = 0
         func1_var17 = 0
         func1_var18 = 0
         func1_var19 = 30
         func1_var44 = 50
      elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 69.5 then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412780) then
            func1_var44 = 35
         else
            func1_var44 = 25
            func1_var21 = 75
         end
      else
         func1_var44 = 100
      end
   else
      if ai:GetNumber(0) == 1 then
         if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412795) then
            func1_var46 = 100
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412794) then
            func1_var45 = 100
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 22 then
            func1_var22 = 50
            func1_var23 = 60
            func1_var24 = 5
            func1_var25 = 0
            func1_var26 = 0
            func1_var27 = 5
            func1_var28 = 0
            func1_var29 = 30
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 25 then
            func1_var22 = 5
            func1_var23 = 60
            func1_var24 = 30
            func1_var25 = 10
            func1_var26 = 0
            func1_var27 = 20
            func1_var28 = 5
            func1_var29 = 20
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 27 then
            func1_var22 = 5
            func1_var23 = 60
            func1_var24 = 50
            func1_var25 = 10
            func1_var26 = 20
            func1_var27 = 50
            func1_var28 = 20
            func1_var29 = 0
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 32 then
            func1_var22 = 0
            func1_var23 = 5
            func1_var24 = 30
            func1_var25 = 30
            func1_var26 = 20
            func1_var27 = 50
            func1_var28 = 20
            func1_var29 = 0
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 36 then
            func1_var22 = 0
            func1_var23 = 0
            func1_var24 = 0
            func1_var25 = 50
            func1_var26 = 20
            func1_var27 = 0
            func1_var28 = 20
            func1_var29 = 0
            func1_var44 = 80
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 38.5 then
            func1_var22 = 0
            func1_var23 = 0
            func1_var24 = 0
            func1_var25 = 50
            func1_var26 = 0
            func1_var27 = 0
            func1_var28 = 0
            func1_var29 = 0
            func1_var44 = 80
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) and func1_var3 <= 69.5 then
            if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412796) then
               if func1_var3 <= 45 then
                  func1_var25 = 50
               else
                  func1_var44 = 100
               end
            else
               func1_var44 = 25
               func1_var30 = 75
            end
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412790) then
            func1_var44 = 100
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 27 then
            func1_var31 = 50
            func1_var32 = 0
            func1_var33 = 5
            func1_var34 = 0
            func1_var35 = 0
            func1_var36 = 10
            func1_var37 = 0
            func1_var38 = 100
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 29 then
            func1_var31 = 10
            func1_var32 = 30
            func1_var33 = 50
            func1_var34 = 5
            func1_var35 = 100
            func1_var36 = 0
            func1_var37 = 30
            func1_var38 = 0
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 33 then
            func1_var31 = 0
            func1_var32 = 50
            func1_var33 = 50
            func1_var34 = 30
            func1_var35 = 100
            func1_var36 = 30
            func1_var37 = 100
            func1_var38 = 0
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 37 then
            func1_var31 = 0
            func1_var32 = 5
            func1_var33 = 5
            func1_var34 = 50
            func1_var35 = 100
            func1_var36 = 50
            func1_var37 = 100
            func1_var38 = 0
            func1_var44 = 50
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 40 then
            func1_var31 = 0
            func1_var32 = 0
            func1_var33 = 0
            func1_var34 = 30
            func1_var35 = 50
            func1_var36 = 30
            func1_var37 = 30
            func1_var38 = 0
            func1_var44 = 100
         elseif ai:IsInsideTargetRegion(TARGET_ENE_0, 1412791) and func1_var3 <= 69.5 then
            if ai:IsInsideTargetRegion(TARGET_ENE_0, 1412780) then
               func1_var44 = 100
            else
               func1_var44 = 25
               func1_var40 = 75
            end
         else
            func1_var44 = 100
         end
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
         -- Tried to add an 'end' here but it's incorrect
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      local func1_var48 = ai:GetRandam_Int(1, func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 + func1_var40 + func1_var41 + func1_var42 + func1_var43 + func1_var44 + func1_var45 + func1_var46)
      if func1_var48 <= func1_var9 then
         Tadare525000_Act001(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 then
         Tadare525000_Act002(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 then
         Tadare525000_Act003(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 then
         Tadare525000_Act004(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 then
         Tadare525000_Act005(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 then
         Tadare525000_Act006(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 then
         Tadare525000_Act021(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 then
         Tadare525000_Act022(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 then
         Tadare525000_Act023(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 then
         Tadare525000_Act024(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 then
         Tadare525000_Act025(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 then
         Tadare525000_Act026(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 then
         Tadare525000_Act027(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 then
         Tadare525000_Act041(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 then
         Tadare525000_Act042(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 then
         Tadare525000_Act043(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 then
         Tadare525000_Act044(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 then
         Tadare525000_Act045(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 then
         Tadare525000_Act046(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 then
         Tadare525000_Act047(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 then
         Tadare525000_Act048(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 then
         Tadare525000_Act049(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 then
         Tadare525000_Act061(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 then
         Tadare525000_Act062(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 then
         Tadare525000_Act063(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 then
         Tadare525000_Act064(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 then
         Tadare525000_Act065(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 then
         Tadare525000_Act066(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 then
         Tadare525000_Act067(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 then
         Tadare525000_Act068(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 then
         Tadare525000_Act069(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 + func1_var40 then
         Tadare525000_Act070(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 + func1_var40 + func1_var41 then
         Tadare525000_Act101(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 + func1_var40 + func1_var41 + func1_var42 then
         Tadare525000_Act102(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 + func1_var40 + func1_var41 + func1_var42 + func1_var43 then
         Tadare525000_Act103(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 + func1_var40 + func1_var41 + func1_var42 + func1_var43 + func1_var44 then
         Tadare525000_Act104(ai, goal)
      elseif func1_var48 <= func1_var9 + func1_var10 + func1_var11 + func1_var12 + func1_var13 + func1_var14 + func1_var15 + func1_var16 + func1_var17 + func1_var18 + func1_var19 + func1_var20 + func1_var21 + func1_var22 + func1_var23 + func1_var24 + func1_var25 + func1_var26 + func1_var27 + func1_var28 + func1_var29 + func1_var30 + func1_var31 + func1_var32 + func1_var33 + func1_var34 + func1_var35 + func1_var36 + func1_var37 + func1_var38 + func1_var39 + func1_var40 + func1_var41 + func1_var42 + func1_var43 + func1_var44 + func1_var45 then
         Tadare525000_Act111(ai, goal)
      else
         Tadare525000_Act112(ai, goal)
      end
end

Tadare525000_Act001 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 35, 2.5, 25)
end

Tadare525000_Act002 = function(ai, goal)
   local func3_var2 = ai:GetRandam_Int(1, 100)
   if func3_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3001, TARGET_ENE_0, 40, 2.5, 25)
   elseif func3_var2 <= 95 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3001, TARGET_ENE_0, 40, 2.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3005, TARGET_ENE_0, 40, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3001, TARGET_ENE_0, 40, 2.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3005, TARGET_ENE_0, 40, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3005, TARGET_ENE_0, 40, 0)
   end
end

Tadare525000_Act003 = function(ai, goal)
   local func4_var2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3002, TARGET_ENE_0, 40, 2.5, 45)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3006, TARGET_ENE_0, 40, 0)
end

Tadare525000_Act004 = function(ai, goal)
   local func5_var2 = ai:GetRandam_Int(1, 100)
   if func5_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 43, 2.5, 5)
   elseif func5_var2 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 43, 2.5, 5)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3010, TARGET_ENE_0, 43, 2.5, 5)
   end
end

Tadare525000_Act005 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act006 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3025, TARGET_ENE_0, DIST_None, 2.5, 5)
end

Tadare525000_Act021 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3015, TARGET_ENE_0, 35, 2.5, 25)
end

Tadare525000_Act022 = function(ai, goal)
   local func9_var2 = ai:GetRandam_Int(1, 100)
   if func9_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3016, TARGET_ENE_0, 40, 2.5, 25)
   elseif func9_var2 <= 95 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3016, TARGET_ENE_0, 40, 2.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3020, TARGET_ENE_0, 40, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3016, TARGET_ENE_0, 40, 2.5, 25)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3020, TARGET_ENE_0, 40, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3020, TARGET_ENE_0, 40, 0)
   end
end

Tadare525000_Act023 = function(ai, goal)
   local func10_var2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3017, TARGET_ENE_0, 40, 2.5, 45)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3021, TARGET_ENE_0, 40, 0)
end

Tadare525000_Act024 = function(ai, goal)
   local func11_var2 = ai:GetRandam_Int(1, 100)
   if func11_var2 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3018, TARGET_ENE_0, 43, 2.5, 5)
   elseif func11_var2 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3022, TARGET_ENE_0, 43, 2.5, 5)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3023, TARGET_ENE_0, 43, 2.5, 5)
   end
end

Tadare525000_Act025 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3019, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act026 = function(ai, goal)
   local func13_var2 = ai:GetDist(TARGET_ENE_0)
   local func13_var3 = ai:GetRandam_Int(1, 100)
   ai:SetEventMoveTarget(1412720)
   local func13_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if func13_var4 >= 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 0.05, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3024, TARGET_ENE_0, DIST_None, 2.5, 5)
   end
end

Tadare525000_Act027 = function(ai, goal)
   local func14_var2 = ai:GetDist(TARGET_ENE_0)
   local func14_var3 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3024, TARGET_ENE_0, DIST_None, 2.5, 5)
end

Tadare525000_Act041 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3000, TARGET_ENE_0, 35, 2.5, 25)
end

Tadare525000_Act042 = function(ai, goal)
   local func16_var2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3002, TARGET_ENE_0, 40, 2.5, 45)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3006, TARGET_ENE_0, 40, 0)
end

Tadare525000_Act043 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 43, 2.5, 5)
end

Tadare525000_Act044 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3004, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act045 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3010, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act046 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3011, TARGET_ENE_0, 45, 2.5, 10)
end

Tadare525000_Act047 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3012, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act048 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3013, TARGET_ENE_0, 35, 2.5, 5)
end

Tadare525000_Act049 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3023, TARGET_ENE_0, DIST_None, 2.5, 5)
end

Tadare525000_Act061 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3015, TARGET_ENE_0, 35, 2.5, 25)
end

Tadare525000_Act062 = function(ai, goal)
   local func25_var2 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3017, TARGET_ENE_0, 40, 2.5, 45)
   goal:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3021, TARGET_ENE_0, 40, 0)
end

Tadare525000_Act063 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3018, TARGET_ENE_0, 43, 2.5, 5)
end

Tadare525000_Act064 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3019, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act065 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3025, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act066 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3026, TARGET_ENE_0, 45, 2.5, 10)
end

Tadare525000_Act067 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3027, TARGET_ENE_0, 45, 2.5, 5)
end

Tadare525000_Act068 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3028, TARGET_ENE_0, 30, 2.5, 5)
end

Tadare525000_Act069 = function(ai, goal)
   local func32_var2 = ai:GetDist(TARGET_ENE_0)
   local func32_var3 = ai:GetRandam_Int(1, 100)
   ai:SetEventMoveTarget(1412720)
   local func32_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if func32_var4 >= 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 0.05, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3022, TARGET_ENE_0, DIST_None, 2.5, 5)
   end
end

Tadare525000_Act070 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3022, TARGET_ENE_0, DIST_None, 2.5, 5)
end

Tadare525000_Act101 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
end

Tadare525000_Act102 = function(ai, goal)
   local func35_var2 = ai:GetNumber(0)
   ai:SetNumber(0, func35_var2 + 1)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3009, TARGET_ENE_0, DIST_None, 0)
end

Tadare525000_Act103 = function(ai, goal)
   local func36_var2 = ai:GetNumber(0)
   ai:SetNumber(0, func36_var2 + 1)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3008, TARGET_ENE_0, DIST_None, 0)
end

Tadare525000_Act104 = function(ai, goal)
   local func37_var2 = ai:GetDist_Point(POINT_EVENT)
   if func37_var2 >= 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 0.05, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Turn, 5, TARGET_ENE_0, 30)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 0.01, TARGET_ENE_0, 0, 0, 0)
   end
end

Tadare525000_Act111 = function(ai, goal)
   local func38_var2 = ai:GetDist(TARGET_ENE_0)
   local func38_var3 = ai:GetRandam_Int(1, 100)
   ai:SetEventMoveTarget(1412713)
   local func38_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if func38_var4 >= 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 0.05, TARGET_SELF, false, -1)
   elseif ai:HasSpecialEffectId(TARGET_SELF, 5133) then
      if func38_var2 >= 34 then
         if func38_var3 <= 30 then
            Tadare525000_Act065(ai, goal)
         else
            Tadare525000_Act067(ai, goal)
         end
      else
         Tadare525000_Act068(ai, goal)
      end
   elseif func38_var2 >= 38 then
      Tadare525000_Act005(ai, goal)
   elseif func38_var2 >= 32 then
      Tadare525000_Act004(ai, goal)
   else
      Tadare525000_Act001(ai, goal)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

Tadare525000_Act112 = function(ai, goal)
   local func39_var2 = ai:GetDist(TARGET_ENE_0)
   local func39_var3 = ai:GetRandam_Int(1, 100)
   ai:SetEventMoveTarget(1412711)
   local func39_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_SELF)
   if func39_var4 >= 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 0.05, TARGET_SELF, false, -1)
   else
      goal:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
   end
end

Tadare525000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Tadare525000Battle_Terminate = function(ai, goal)
end

Tadare525000Battle_Interupt = function(ai, goal)
   return false
end


