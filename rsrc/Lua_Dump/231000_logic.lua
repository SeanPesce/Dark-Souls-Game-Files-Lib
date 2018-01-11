OnIf_231000 = function(ai, goal, func1_param2)
   local func1_var3 = ai:GetDist(TARGET_ENE_0)
   local func1_var4 = ai:GetRandam_Int(1, 100)
   local func1_var5 = ai:GetRandam_Int(1, 100)
   local func1_var6 = ai:GetEventRequest(0)
   if func1_param2 == 1 then
      ai:SetEventMoveTarget(1102714)
      ai:AddTopGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      ai:AddTopGoal(GOAL_COMMON_Attack, 20, 3014, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 2 then
      ai:SetEventMoveTarget(1102715)
      ai:AddTopGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      ai:AddTopGoal(GOAL_COMMON_Attack, 20, 3015, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 3 then
      ai:SetEventMoveTarget(1102711)
      ai:AddTopGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      ai:AddTopGoal(GOAL_COMMON_Attack, 20, 3016, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 4 then
      ai:SetEventMoveTarget(1102710)
      ai:AddTopGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      ai:AddTopGoal(GOAL_COMMON_Attack, 20, 3017, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 5 then
      ai:SetEventMoveTarget(1102713)
      ai:AddTopGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      ai:AddTopGoal(GOAL_COMMON_Attack, 20, 3018, POINT_EVENT, DIST_Middle, 0)
   elseif func1_param2 == 6 then
      ai:SetEventMoveTarget(1102712)
      ai:AddTopGoal(GOAL_COMMON_Turn, 10, POINT_EVENT, 1)
      ai:AddTopGoal(GOAL_COMMON_Attack, 20, 3019, POINT_EVENT, DIST_Middle, 0)
   else
      ai:AddTopGoal(GOAL_COMMON_Attack, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   end
end

Kyochojin231000_Logic = function(ai)
   local func2_var1 = ai:GetEventRequest(0)
   local func2_var2 = ai:IsSearchTarget(TARGET_ENE_0)
   local func2_var3 = ai:GetMovePointEffectRange()
   local func2_var4 = ai:GetDist(TARGET_ENE_0)
   if (func2_var2 == false and func2_var1 >= 1) or func2_var4 >= 10 and func2_var1 >= 1 then
      if func2_var1 == 1 then
         ai:SetEventMoveTarget(1102710)
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_If, 30, 1)
      elseif func2_var1 == 2 then
         ai:SetEventMoveTarget(1102712)
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_If, 30, 2)
      elseif func2_var1 == 3 then
         ai:SetEventMoveTarget(1102710)
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_If, 30, 3)
      elseif func2_var1 == 4 then
         ai:SetEventMoveTarget(1102711)
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_If, 30, 4)
      elseif func2_var1 == 5 then
         ai:SetEventMoveTarget(1102712)
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_If, 30, 5)
      elseif func2_var1 == 6 then
         ai:SetEventMoveTarget(1102713)
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 1, TARGET_SELF, false, -1)
         ai:AddTopGoal(GOAL_COMMON_If, 30, 6)
      else
         ai:AddTopGoal(GOAL_Kyochojin231000_Battle, -1, 0, 0, 0, 0)
      end
   elseif func2_var2 == false then
      ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 7, POINT_INITIAL, 0.1, TARGET_SELF, false, -1)
   elseif func2_var3 >= 75 then
      if func2_var4 >= 5 then
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 7, POINT_INITIAL, 0.1, TARGET_SELF, false, -1)
      elseif func2_var4 >= 3 then
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, POINT_INITIAL, 0.1, TARGET_ENE_0, true, -1)
      else
         ai:AddTopGoal(GOAL_Kyochojin231000_Battle, -1, 0, 0, 0, 0)
      end
   elseif ai:IsBattleState() then
      if func2_var3 >= 50 then
         if func2_var4 >= 15 then
            ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 7, POINT_INITIAL, 0.1, TARGET_SELF, false, -1)
         else
            ai:AddTopGoal(GOAL_Kyochojin231000_Battle, -1, 0, 0, 0, 0)
         end
      elseif func2_var3 >= 25 then
         if func2_var4 >= 20 then
            ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 7, POINT_INITIAL, 0.1, TARGET_SELF, false, -1)
         else
            ai:AddTopGoal(GOAL_Kyochojin231000_Battle, -1, 0, 0, 0, 0)
         end
      elseif func2_var4 >= 20 then
         ai:AddTopGoal(GOAL_COMMON_ApproachTarget, 7, POINT_INITIAL, 0.1, TARGET_SELF, false, -1)
      else
         ai:AddTopGoal(GOAL_Kyochojin231000_Battle, -1, 0, 0, 0, 0)
      end
   elseif ai:IsCautionState() then
      ai:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
   elseif func2_var4 >= 30 then
      ai:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_NONE, 0, 0, 0)
   elseif func2_var4 >= 12 then
      ai:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
   else
      ai:AddTopGoal(GOAL_Kyochojin231000_Battle, -1, 0, 0, 0, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
end

Kyochojin231000_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Damaged) then
      ai:AddTopGoal(GOAL_Kyochojin231000_Battle, -1, 0, 0, 0, 0)
   end
end


