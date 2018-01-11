local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 2
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 2.5
local localScriptConfigVar8 = 4
local localScriptConfigVar9 = 9
local localScriptConfigVar10 = 0
local localScriptConfigVar11 = 3
local localScriptConfigVar12 = 0
local localScriptConfigVar13 = 100
local localScriptConfigVar14 = 0
local localScriptConfigVar15 = 2.5
local localScriptConfigVar16 = 0
local localScriptConfigVar17 = 2
local localScriptConfigVar18 = 0
local localScriptConfigVar19 = 2
local localScriptConfigVar20 = 0
local localScriptConfigVar21 = 1
local localScriptConfigVar22 = 2
local localScriptConfigVar23 = 4
local localScriptConfigVar24 = 0
local localScriptConfigVar25 = 2
local localScriptConfigVar26 = 0
local localScriptConfigVar27 = 2
local localScriptConfigVar28 = 0
local localScriptConfigVar29 = 100
OnIf_413000 = function(ai, goal, func1_param2)
   if func1_param2 == 0 then
      Kyu_Jujin413000_ActAfter_RealTime(ai, goal)
   end
end

Kyu_Jujin413000Battle_Activate = function(ai, goal)
   local func2_var2 = {}
   local func2_var3 = {}
   local func2_var4 = {}
   Common_Clear_Param(func2_var2, func2_var3, func2_var4)
   local func2_var5 = 0
   local func2_var6 = 0
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
   local func2_var18 = 0
   local func2_var19 = 0
   local func2_var20 = 0
   local func2_var21 = ai:GetDist(TARGET_ENE_0)
   local func2_var22 = ai:GetDistY(TARGET_ENE_0)
   local func2_var23 = ai:GetEventRequest()
   if func2_var23 == 10 then
      func2_var14 = 100
   elseif func2_var22 >= 20 then
      func2_var20 = 100
   elseif ai:GetNpcThinkParamID() <= 413009 then
      if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
         if ai:GetNumber(0) == 0 then
            ai:SetTimer(0, ai:GetRandam_Int(8, 12))
            ai:SetNumber(0, 1)
            if func2_var21 >= 4 then
               func2_var5 = 20
               func2_var6 = 0
               func2_var7 = 0
               func2_var8 = 10
               func2_var9 = 40
               func2_var10 = 10
               func2_var11 = 20
               if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
                  func2_var9 = 0
               elseif func2_var21 >= 2 then
                  func2_var5 = 25
                  func2_var6 = 0
                  func2_var7 = 0
                  func2_var8 = 25
                  func2_var9 = 0
                  func2_var10 = 25
                  func2_var11 = 25
               elseif func2_var21 >= 1 then
                  func2_var5 = 20
                  func2_var6 = 30
                  func2_var7 = 30
                  func2_var8 = 0
                  func2_var9 = 0
                  func2_var10 = 0
                  func2_var11 = 20
               else
                  func2_var5 = 20
                  func2_var6 = 30
                  func2_var7 = 50
                  func2_var8 = 0
                  func2_var9 = 0
                  func2_var10 = 0
                  func2_var11 = 0
               end
            elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
               if ai:GetNumber(0) == 0 then
                  ai:SetTimer(0, ai:GetRandam_Int(18, 22))
                  ai:SetNumber(0, 1)
                  func2_var5 = 3
                  func2_var8 = 2
                  func2_var9 = 3
                  func2_var10 = 2
                  func2_var12 = 45
                  func2_var13 = 45
                  func2_var11 = 0
               elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                  if ai:GetNumber(0) == 0 then
                     ai:SetTimer(0, ai:GetRandam_Int(38, 42))
                     ai:SetNumber(0, 1)
                     func2_var12 = 50
                     func2_var13 = 50
                  elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
                     if ai:GetNumber(0) == 0 then
                        ai:SetTimer(0, ai:GetRandam_Int(8, 12))
                        ai:SetNumber(0, 1)
                        if func2_var21 >= 6 then
                           func2_var15 = 25
                           func2_var16 = 25
                           func2_var17 = 50
                           func2_var18 = 0
                           func2_var19 = 0
                           if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
                              func2_var17 = 0
                           elseif func2_var21 >= 4 then
                              func2_var15 = 33
                              func2_var16 = 33
                              func2_var17 = 34
                              func2_var18 = 0
                              func2_var19 = 0
                              if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
                                 func2_var17 = 0
                              elseif func2_var21 >= 2 then
                                 func2_var15 = 50
                                 func2_var16 = 50
                                 func2_var17 = 0
                                 func2_var18 = 0
                                 func2_var19 = 0
                              elseif func2_var21 >= 1 then
                                 func2_var15 = 50
                                 func2_var16 = 50
                                 func2_var17 = 0
                                 func2_var18 = 0
                                 func2_var19 = 0
                                 if ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 150) then
                                    func2_var18 = 50
                                 elseif ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 150) then
                                    func2_var19 = 50
                                 else
                                    func2_var15 = 50
                                    func2_var16 = 50
                                    func2_var17 = 0
                                    func2_var18 = 0
                                    func2_var19 = 0
                                 end
                              elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                                 if ai:GetNumber(0) == 0 then
                                    ai:SetTimer(0, ai:GetRandam_Int(18, 22))
                                    ai:SetNumber(0, 1)
                                    func2_var15 = 20
                                    func2_var12 = 40
                                    func2_var13 = 40
                                 elseif ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                                    if ai:GetNumber(0) == 0 then
                                       ai:SetTimer(0, ai:GetRandam_Int(38, 42))
                                       ai:SetNumber(0, 1)
                                       func2_var12 = 50
                                       func2_var13 = 50
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       -- Tried to add an 'end' here but it's incorrect
                                       if ai:GetNpcThinkParamID() <= 413009 then
                                          local func2_var24 = ai:GetRandam_Int(1, func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var12 + func2_var13 + func2_var11 + func2_var14)
                                          if func2_var24 <= func2_var5 then
                                             Kyu_Jujin413000_Act01(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 then
                                             Kyu_Jujin413000_Act02(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 then
                                             Kyu_Jujin413000_Act03(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 then
                                             Kyu_Jujin413000_Act04(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 then
                                             Kyu_Jujin413000_Act05(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 then
                                             Kyu_Jujin413000_Act06(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var12 then
                                             Kyu_Jujin413000_Act07(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var12 + func2_var13 then
                                             Kyu_Jujin413000_Act08(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var12 + func2_var13 + func2_var11 then
                                             Kyu_Jujin413000_Act09(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var5 + func2_var6 + func2_var7 + func2_var8 + func2_var9 + func2_var10 + func2_var12 + func2_var13 + func2_var11 + func2_var14 then
                                             Kyu_Jujin413000_Act10(ai, goal)
                                             GetWellSpace_Odds = 0
                                          else
                                             Kyu_Jujin413000_Act20(ai, goal)
                                             GetWellSpace_Odds = 0
                                          end
                                       else
                                          local func2_var24 = ai:GetRandam_Int(1, func2_var15 + func2_var16 + func2_var17 + func2_var18 + func2_var19 + func2_var12 + func2_var13)
                                          if func2_var24 <= func2_var15 then
                                             Kyu_Jujin413000_Act11(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var15 + func2_var16 then
                                             Kyu_Jujin413000_Act13(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var15 + func2_var16 + func2_var17 then
                                             Kyu_Jujin413000_Act14(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var15 + func2_var16 + func2_var17 + func2_var18 then
                                             Kyu_Jujin413000_Act15(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var15 + func2_var16 + func2_var17 + func2_var18 + func2_var19 then
                                             Kyu_Jujin413000_Act16(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var15 + func2_var16 + func2_var17 + func2_var18 + func2_var19 + func2_var12 then
                                             Kyu_Jujin413000_Act07(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var15 + func2_var16 + func2_var17 + func2_var18 + func2_var19 + func2_var12 + func2_var13 then
                                             Kyu_Jujin413000_Act08(ai, goal)
                                             GetWellSpace_Odds = 100
                                          elseif func2_var24 <= func2_var15 + func2_var16 + func2_var17 + func2_var18 + func2_var19 + func2_var12 + func2_var13 + func2_var14 then
                                             Kyu_Jujin413000_Act10(ai, goal)
                                             GetWellSpace_Odds = 0
                                          else
                                             Kyu_Jujin413000_Act20(ai, goal)
                                             GetWellSpace_Odds = 0
                                          end
                                          -- Tried to add an 'end' here but it's incorrect
                                          -- Tried to add an 'end' here but it's incorrect
                                          local func2_var24 = ai:GetRandam_Int(1, 100)
                                          if func2_var24 <= GetWellSpace_Odds then
                                             Kyu_Jujin413000_ActAfter_AdjustSpace(ai, goal)
                                          end
end

Kyu_Jujin413000_Act01 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar1
   local func3_var6 = localScriptConfigVar1 + 4
   local func3_var7 = 0
   if func3_var5 <= func3_var3 then
      Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7, 3)
   end
   if func3_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var5, 1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func3_var5, 1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, func3_var5, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act02 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = localScriptConfigVar3
   local func4_var5 = localScriptConfigVar3 + 4
   local func4_var6 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, func4_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act03 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = localScriptConfigVar5
   local func5_var5 = localScriptConfigVar5 + 4
   local func5_var6 = 0
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func5_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act04 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = localScriptConfigVar7
   local func6_var5 = localScriptConfigVar7 + 2
   local func6_var6 = 0
   if func6_var4 <= func6_var3 then
      Approach_Act(ai, goal, func6_var4, func6_var5, func6_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, func6_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act05 = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = localScriptConfigVar9
   local func7_var6 = localScriptConfigVar9
   local func7_var7 = 0
   if func7_var5 <= func7_var3 then
      Approach_Act(ai, goal, func7_var5, func7_var6, func7_var7, 3)
   end
   if func7_var4 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3004, TARGET_ENE_0, 0, AI_DIR_TYPE_F, localScriptConfigVar8)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 3008, TARGET_ENE_0, 0, AI_DIR_TYPE_F, localScriptConfigVar8)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act06 = function(ai, goal, func8_param2)
   local func8_var3 = ai:GetDist(TARGET_ENE_0)
   local func8_var4 = localScriptConfigVar11
   local func8_var5 = localScriptConfigVar11 + 2
   local func8_var6 = 0
   if func8_var4 <= func8_var3 then
      Approach_Act(ai, goal, func8_var4, func8_var5, func8_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, func8_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act07 = function(ai, goal, func9_param2)
   local func9_var3 = ai:GetDist(TARGET_ENE_0)
   local func9_var4 = 10
   local func9_var5 = 12
   local func9_var6 = 0
   Approach_Act(ai, goal, func9_var4, func9_var5, func9_var6, 3)
   goal:AddSubGoal(GOAL_COMMON_KeepDist, 3, TARGET_ENE_0, 8, 12, TARGET_ENE_0, true, -1)
end

Kyu_Jujin413000_Act08 = function(ai, goal, func10_param2)
   goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, -1)
end

Kyu_Jujin413000_Act09 = function(ai, goal, func11_param2)
   local func11_var3 = ai:GetDist(TARGET_ENE_0)
   local func11_var4 = ai:GetRandam_Int(1, 100)
   local func11_var5 = localScriptConfigVar15
   local func11_var6 = localScriptConfigVar15 + 4
   local func11_var7 = 0
   if func11_var5 <= func11_var3 then
      Approach_Act(ai, goal, func11_var5, func11_var6, func11_var7, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, func11_var5, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act10 = function(ai, goal, func12_param2)
   local func12_var3 = ai:GetDist(TARGET_ENE_0)
   local func12_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 30, POINT_INITIAL, 2, TARGET_SELF, false, -1)
end

Kyu_Jujin413000_Act11 = function(ai, goal, func13_param2)
   local func13_var3 = ai:GetDist(TARGET_ENE_0)
   local func13_var4 = ai:GetRandam_Int(1, 100)
   local func13_var5 = localScriptConfigVar17
   local func13_var6 = localScriptConfigVar17 + 0
   local func13_var7 = 0
   if func13_var5 <= func13_var3 then
      Approach_Act(ai, goal, func13_var5, func13_var6, func13_var7, 3)
   end
   if func13_var4 <= 25 then
      goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, func13_var5, 1, 90)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, func13_var5, 1, 90)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, func13_var5, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act13 = function(ai, goal, func14_param2)
   local func14_var3 = ai:GetDist(TARGET_ENE_0)
   local func14_var4 = localScriptConfigVar21
   local func14_var5 = localScriptConfigVar21 + 0
   local func14_var6 = 0
   if func14_var4 <= func14_var3 then
      Approach_Act(ai, goal, func14_var4, func14_var5, func14_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, func14_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act14 = function(ai, goal, func15_param2)
   local func15_var3 = ai:GetDist(TARGET_ENE_0)
   local func15_var4 = localScriptConfigVar23
   local func15_var5 = localScriptConfigVar23 + 0
   local func15_var6 = 0
   if func15_var4 <= func15_var3 then
      Approach_Act(ai, goal, func15_var4, func15_var5, func15_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, func15_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act15 = function(ai, goal, func16_param2)
   local func16_var3 = ai:GetDist(TARGET_ENE_0)
   local func16_var4 = localScriptConfigVar25
   local func16_var5 = localScriptConfigVar25 + 0
   local func16_var6 = 0
   if func16_var4 <= func16_var3 then
      Approach_Act(ai, goal, func16_var4, func16_var5, func16_var6, 3)
   end
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, func16_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act16 = function(ai, goal, func17_param2)
   local func17_var3 = ai:GetDist(TARGET_ENE_0)
   local func17_var4 = localScriptConfigVar27
   local func17_var5 = localScriptConfigVar27 + 0
   local func17_var6 = 0
   Approach_Act(ai, goal, func17_var4, func17_var5, func17_var6, 3)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, func17_var4, 1, 90)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Kyu_Jujin413000_Act20 = function(ai, goal, func18_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_INITIAL, 2, TARGET_ENE_0, false, -1)
end

Kyu_Jujin413000_ActAfter_AdjustSpace = function(ai, goal, func19_param2)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

Kyu_Jujin413000_ActAfter_RealTime = function(ai, goal)
   local func20_var2 = ai:GetRandam_Int(1, 100)
   local func20_var3 = ai:GetRandam_Int(1, 100)
   local func20_var4 = ai:GetRandam_Int(0, 1)
   local func20_var5 = ai:GetDist(TARGET_ENE_0)
   local func20_var6 = ai:GetDist(TARGET_FRI_0)
   local func20_var7 = ai:GetRandam_Int(3, 5)
   local func20_var8 = ai:GetRandam_Int(45, 60)
   if ai:GetNpcThinkParamID() <= 413009 then
      if ai:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Attack then
         if ai:IsFinishTimer(0) == true then
            if func20_var2 <= 33 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 701, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 5)
               goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, DIST_None)
            elseif ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
               if func20_var3 <= 20 then
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
               else
                  goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
               end
            elseif func20_var3 <= 80 then
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 5)
            else
               goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 5)
            end
            -- Tried to add an 'end' here but it's incorrect
            ai:SetNumber(0, 0)
         else
            if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 120) then
               if func20_var2 <= 15 then
               elseif func20_var2 <= 30 then
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func20_var7, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
               elseif func20_var2 <= 90 then
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, func20_var7, TARGET_ENE_0, 1, func20_var8, true, true, -1)
               else
                  goal:AddSubGoal(GOAL_COMMON_SidewayMove, func20_var7, TARGET_ENE_0, 0, func20_var8, true, true, -1)
               end
            else
               if ai:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 90) then
                  if func20_var2 <= 15 then
                  elseif func20_var2 <= 30 then
                     goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func20_var7, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
                  elseif func20_var2 <= 40 then
                     goal:AddSubGoal(GOAL_COMMON_SidewayMove, func20_var7, TARGET_ENE_0, 1, func20_var8, true, true, -1)
                  else
                     goal:AddSubGoal(GOAL_COMMON_SidewayMove, func20_var7, TARGET_ENE_0, 0, func20_var8, true, true, -1)
                  end
               else
                  goal:AddSubGoal(GOAL_COMMON_LeaveTarget, func20_var7, TARGET_ENE_0, 4, TARGET_ENE_0, true, -1)
               end
            else
               --[[ DECOMPILER ERROR 279: unhandled construct in 'if' ]]
end

Kyu_Jujin413000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Kyu_Jujin413000Battle_Terminate = function(ai, goal)
end

Kyu_Jujin413000Battle_Interupt = function(ai, goal)
   return false
end


