_GetId = function(ai, goal)
   local func1_var2 = false
   if goal:IsNpcPlayer() or goal:IsLocalPlayer() then
      func1_var2 = true
   end
   local func1_var3 = ai
   if func1_var2 == true then
      if ai == 7210 then
         func1_var3 = NPC_ATK_Ladder_10
      elseif ai == 7211 then
         func1_var3 = NPC_ATK_Ladder_11
      elseif ai == 7212 then
         func1_var3 = NPC_ATK_Ladder_12
      elseif ai == 7213 then
         func1_var3 = NPC_ATK_Ladder_13
      elseif ai == 7220 then
         func1_var3 = NPC_ATK_Ladder_20
      elseif ai == 7221 then
         func1_var3 = NPC_ATK_Ladder_21
      elseif ai == 7222 then
         func1_var3 = NPC_ATK_Ladder_22
      elseif ai == 7223 then
         func1_var3 = NPC_ATK_Ladder_23
      end
   end
   return func1_var3
end

local localScriptConfigVar0 = -1
local localScriptConfigVar1 = 0
local localScriptConfigVar2 = 1
local localScriptConfigVar3 = 2
local localScriptConfigVar4 = 3
local localScriptConfigVar5 = 4
local localScriptConfigVar6 = 5
local localScriptConfigVar7 = 6
local localScriptConfigVar8 = 7
local localScriptConfigVar9 = 8
local localScriptConfigVar10 = 9
local localScriptConfigVar11 = 23
local localScriptConfigVar12 = 7210
local localScriptConfigVar13 = 7220
local localScriptConfigVar14 = 7230
LadderAct_Activate = function(ai, goal)
   local func2_var2 = goal:GetParam(0)
   local func2_var3 = goal:GetParam(1)
   local func2_var4 = goal:GetParam(2)
   local func2_var5 = func2_var4
   local func2_var6 = ai:GetLadderActState(TARGET_SELF)
   local func2_var7 = 0
   local func2_var8 = ai:CalcGetNearestLadderActDmyIdByLadderObj()
   if func2_var8 == 191 then
      func2_var7 = _GetId(7210, ai)
   else
      func2_var7 = _GetId(7220, ai)
   end
   if func2_var6 == localScriptConfigVar0 then
      if ai:IsChrAroundLadderEdge(2, func2_var8) == false then
         ai:SetPosAngBy1stNearObjDmyId(ai, func2_var8)
         ai:SetAttackRequest(func2_var7)
      elseif func2_var8 == 192 then
      elseif func2_var8 == 191 then
         return GOAL_RESULT_Failed
   end
end

LadderAct_Update = function(ai, goal)
   local func3_var2 = goal:GetParam(0)
   local func3_var3 = goal:GetParam(1)
   if ai:LastPathFindingIsFailed() == false and ai:HasPathResult() == false then
      ai:FollowPath(func3_var3, AI_DIR_TYPE_CENTER, 1.5, true, 0)
   end
   local func3_var4 = ai:GetLadderDirMove(TARGET_ENE_0)
   ai:DoEzAction(0, -1)
   local func3_var5 = ai:GetLadderActState(TARGET_SELF)
   local func3_var6 = false
   if func3_var5 == localScriptConfigVar9 or func3_var5 == localScriptConfigVar10 then
      func3_var6 = true
   elseif ai:IsFinishAttack() or ai:IsEnableComboAttack() then
      func3_var6 = true
   end
   if func3_var6 then
      if func3_var5 == localScriptConfigVar0 then
         return GOAL_RESULT_Success
      elseif func3_var4 == 0 then
      elseif func3_var4 == 1 then
         ai:SetAttackRequest(_GetId(localScriptConfigVar12, ai))
      elseif func3_var4 == -1 then
         ai:SetAttackRequest(_GetId(localScriptConfigVar13, ai))
      end
   end
   goal:AddLifeParentSubGoal(0.3)
   local func3_var7 = ai:GetLadderActState(TARGET_SELF)
   if func3_var7 == localScriptConfigVar0 then
      return GOAL_RESULT_Success
   elseif func3_var7 == localScriptConfigVar11 then
      return GOAL_RESULT_Failed
   end
   func3_var7 = GOAL_RESULT_Continue
   return func3_var7
end

LadderAct_Terminate = function(ai, goal)
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LadderAct, true)
LadderAct_Interupt = function(ai, goal)
   if ai:IsInterupt(INTERUPT_Damaged) then
      return false
   end
   return false
end


