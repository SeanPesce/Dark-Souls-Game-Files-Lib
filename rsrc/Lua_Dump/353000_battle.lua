local localScriptConfigVar0 = 29.5
local localScriptConfigVar1 = 41
local localScriptConfigVar2 = 37.6
local localScriptConfigVar3 = 42.2
local localScriptConfigVar4 = 36.4
local localScriptConfigVar5 = 45.9
local localScriptConfigVar6 = 52
local localScriptConfigVar7 = 58.5
local localScriptConfigVar8 = 61.7
local localScriptConfigVar9 = 72
local localScriptConfigVar10 = 38
local localScriptConfigVar11 = 57.2
local localScriptConfigVar12 = 42.9
local localScriptConfigVar13 = 58.6
local localScriptConfigVar14 = 39.8
local localScriptConfigVar15 = 60
local localScriptConfigVar16 = 61.5
local localScriptConfigVar17 = 71.8
OnIf_353000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetDistYSigned(TARGET_ENE_0)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetRandam_Int(1, 100)
   if func1_param2 == 0 then
      if func1_var3 >= 72 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
      elseif func1_var3 >= 40 then
         if func1_var5 <= 35 then
            goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
         elseif func1_var5 <= 70 then
            goal:AddSubGoal(GOAL_COMMON_SidewayMove, ai:GetRandam_Float(2, 4), TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Float(30, 50), true, true, -1)
            LakeBeast353000_Act07(ai, goal)
         else
            local func1_var7 = func1_var3 + 10
            goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 5), TARGET_ENE_0, func1_var7, TARGET_ENE_0, true, -1)
         end
      elseif func1_var5 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Wait, ai:GetRandam_Float(2, 4), TARGET_ENE_0, 0, 0, 0)
      else
         local func1_var7 = func1_var3 + 10
         goal:AddSubGoal(GOAL_COMMON_LeaveTarget, ai:GetRandam_Float(3, 5), TARGET_ENE_0, func1_var7, TARGET_ENE_0, true, -1)
      end
   elseif func1_param2 == 1 then
      if func1_var4 >= 5 and func1_var3 >= 67 then
         LakeBeast353000_Act05(ai, goal)
      elseif func1_var4 >= 2.5 and func1_var3 >= 54 then
         if func1_var5 <= 80 then
            LakeBeast353000_Act11(ai, goal)
         else
            LakeBeast353000_Act05(ai, goal)
         end
      elseif func1_var3 >= 90 then
         LakeBeast353000_Act05(ai, goal)
      elseif func1_var3 >= 80 then
         if func1_var5 <= 50 then
            LakeBeast353000_Act05(ai, goal)
         else
            LakeBeast353000_Act11(ai, goal)
         end
      elseif func1_var3 >= 58 then
         if func1_var5 <= 90 then
            LakeBeast353000_Act11(ai, goal)
         else
            LakeBeast353000_Act05(ai, goal)
         end
      elseif func1_var3 >= 51 then
         LakeBeast353000_Act04(ai, goal)
      elseif func1_var3 >= 42.9 and func1_var3 <= 58.6 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 37) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and func1_var5 <= 80 then
         LakeBeast353000_Act09(ai, goal)
      elseif func1_var3 >= 39.8 and func1_var3 <= 60 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 28.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and func1_var5 <= 80 then
         LakeBeast353000_Act10(ai, goal)
      elseif func1_var3 >= 37.6 and func1_var3 <= 42.2 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 49.2) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) and func1_var5 <= 80 then
         LakeBeast353000_Act02(ai, goal)
      elseif func1_var3 >= 36.4 and func1_var3 <= 45.9 and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 52.4) and ai:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) and func1_var5 <= 80 then
         LakeBeast353000_Act03(ai, goal)
      elseif func1_var3 >= 41 then
         LakeBeast353000_Act08(ai, goal)
      elseif func1_var3 >= 38 then
         if func1_var5 <= 50 then
            LakeBeast353000_Act01(ai, goal)
         else
            LakeBeast353000_Act08(ai, goal)
         end
      else
         LakeBeast353000_Act01(ai, goal)
      end
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
      -- Tried to add an 'end' here but it's incorrect
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

LakeBeast353000Battle_Activate = function(ai, goal)
   local func2_var2 = ai:GetHpRate(TARGET_SELF)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = ai:GetRandam_Int(1, 100)
   local func2_var6 = ai:GetRandam_Int(1, 100)
   local func2_var7 = ai:GetRandam_Int(1, 100)
   local func2_var8 = 0
   local func2_var9 = 0
   local func2_var10 = 0
   local func2_var11 = 0
   local func2_var12 = 0
   local func2_var13 = 0
   local func2_var14 = 0
   local func2_var15 = 0
   ai:AddObserveRegion(0, TARGET_ENE_0, 1322703)
   ai:AddObserveRegion(1, TARGET_ENE_0, 1322704)
   ai:AddObserveRegion(2, TARGET_SELF, 1322705)
   ai:AddObserveRegion(3, TARGET_SELF, 1322706)
   local func2_var16 = 0
   if ai:IsInsideTargetRegion(TARGET_SELF, 1322705) then
      if func2_var3 >= 72 then
         func2_var16 = 100
      elseif func2_var3 >= 45.9 then
         func2_var16 = 50
      else
         func2_var16 = 20
      end
   elseif ai:IsInsideTargetRegion(TARGET_SELF, 1322706) then
      if func2_var3 >= 72 then
         func2_var16 = 100
      elseif func2_var3 >= 45.9 then
         func2_var16 = 50
      else
         func2_var16 = 20
      end
   else
      func2_var16 = 0
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func2_var17 = ai:GetRandam_Int(1, 100)
   if func2_var17 <= func2_var16 then
      LakeBeast353000_Act07(ai, goal)
   end
   goal:AddSubGoal(GOAL_COMMON_If, 10, 1)
   local func2_var18 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_If, 10, 0)
end

LakeBeast353000_Act01 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 40, -1, 20)
end

LakeBeast353000_Act02 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3001, TARGET_ENE_0, 40)
end

LakeBeast353000_Act03 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3002, TARGET_ENE_0, 40)
end

LakeBeast353000_Act04 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 60, -1, 20)
end

LakeBeast353000_Act05 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast353000_Act06 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 20, 3010, TARGET_ENE_0, DIST_None)
end

LakeBeast353000_Act07 = function(ai, goal)
   local func9_var2 = ai:GetDist(TARGET_ENE_0)
   if ai:IsInsideTargetRegion(TARGET_SELF, 1322705) then
      ai:SetEventMoveTarget(1322751)
      local func9_var3 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322752)
      local func9_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322753)
      local func9_var5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322754)
      local func9_var6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322755)
      local func9_var7 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322756)
      local func9_var8 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      local func9_var9 = math.min(func9_var3, func9_var4, func9_var5, func9_var6, func9_var7, func9_var8)
      if func9_var9 == func9_var3 then
         NearPoint = 1322751
      elseif func9_var9 == func9_var4 then
         NearPoint = 1322752
      elseif func9_var9 == func9_var5 then
         NearPoint = 1322753
      elseif func9_var9 == func9_var6 then
         NearPoint = 1322754
      elseif func9_var9 == func9_var7 then
         NearPoint = 1322755
      else
         NearPoint = 1322756
      end
   else
      ai:SetEventMoveTarget(1322761)
      local func9_var3 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322762)
      local func9_var4 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322763)
      local func9_var5 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322764)
      local func9_var6 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322765)
      local func9_var7 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322766)
      local func9_var8 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      ai:SetEventMoveTarget(1322767)
      local func9_var9 = ai:GetDistAtoB(POINT_EVENT, TARGET_ENE_0)
      local func9_var10 = math.min(func9_var3, func9_var4, func9_var5, func9_var6, func9_var7, func9_var8, func9_var9)
      if func9_var10 == func9_var3 then
         NearPoint = 1322761
      elseif func9_var10 == func9_var4 then
         NearPoint = 1322762
      elseif func9_var10 == func9_var5 then
         NearPoint = 1322763
      elseif func9_var10 == func9_var6 then
         NearPoint = 1322764
      elseif func9_var10 == func9_var7 then
         NearPoint = 1322765
      elseif func9_var10 == func9_var8 then
         NearPoint = 1322766
      else
         NearPoint = 1322767
      end
   end
   -- Tried to add an 'end' here but it's incorrect
   ai:SetEventMoveTarget(NearPoint)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 1, TARGET_ENE_0, true, -1)
end

LakeBeast353000_Act08 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 45, -1, 20)
end

LakeBeast353000_Act09 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3006, TARGET_ENE_0, 45)
end

LakeBeast353000_Act10 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_NonspinningAttack, 10, 3007, TARGET_ENE_0, 45)
end

LakeBeast353000_Act11 = function(ai, goal)
   goal:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 70, -1, 20)
end

LakeBeast353000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

LakeBeast353000Battle_Terminate = function(ai, goal)
end

LakeBeast353000Battle_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true and ai:IsInsideTargetRegion(TARGET_SELF, 1322705) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1322703) then
      goal:ClearSubGoal()
      ai:SetTimer(0, 60)
      goal:AddSubGoal(GOAL_COMMON_Attack, 20, 3010, TARGET_ENE_0, DIST_Far, 0)
      return true
   end
   if ai:IsInterupt(INTERUPT_Inside_ObserveArea) and ai:IsFinishTimer(0) == true and ai:IsInsideTargetRegion(TARGET_SELF, 1322706) and ai:IsInsideTargetRegion(TARGET_ENE_0, 1322704) then
      goal:ClearSubGoal()
      ai:SetTimer(0, 60)
      goal:AddSubGoal(GOAL_COMMON_Attack, 20, 3010, TARGET_ENE_0, DIST_Far, 0)
      return true
   end
   return false
end


