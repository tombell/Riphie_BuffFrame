local A, L = ...

HOUR_ONELETTER_ABBR = "%dh"
DAY_ONELETTER_ABBR = "%dd"
MINUTE_ONELETTER_ABBR = "%dm"
SECOND_ONELETTER_ABBR = "%ds"

local function ApplyStyle(b)
  if not b or (b and b.styled) then return end

  local name = b:GetName()
  local cfg

  if name:match("Debuff") then
    cfg = L.C.debuffs
  else
    cfg = L.C.buffs
  end

  b:SetSize(cfg.button.size, cfg.button.size)

  local icon = _G[name.."Icon"]
  icon:SetTexCoord(.1, .9, .1, .9)
  icon:ClearAllPoints()
  icon:SetPoint("TOPLEFT", b, "TOPLEFT", -cfg.icon.padding, cfg.icon.padding)
  icon:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", cfg.icon.padding, -cfg.icon.padding)
  icon:SetDrawLayer("BACKGROUND", -8)
  b.icon = icon

  local border = _G[name.."Border"] or b:CreateTexture(name.."Border", "BACKGROUND", nil, -7)
  border:SetTexture(cfg.border.texture)
  border:SetTexCoord(0, 1, 0, 1)
  border:SetDrawLayer("BACKGROUND", -7)

  if not name:match("Debuff") then
    border:SetVertexColor(cfg.border.color.r, cfg.border.color.g, cfg.border.color.b)
  end

  border:ClearAllPoints()
  border:SetAllPoints(b)
  b.border = border

  b.duration:SetFont(cfg.duration.font, cfg.duration.size, "THINOUTLINE")
  b.duration:ClearAllPoints()
  b.duration:SetPoint(cfg.duration.pos.a1, cfg.duration.pos.x, cfg.duration.pos.y)

  b.count:SetFont(cfg.count.font, cfg.count.size, "THINOUTLINE")
  b.count:ClearAllPoints()
  b.count:SetPoint(cfg.count.pos.a1, cfg.count.pos.x, cfg.count.pos.y)

  b.styled = true
end

local function Update()
  for i = 0, BUFF_ACTUAL_DISPLAY do
    ApplyStyle(_G["BuffButton"..i])
  end

  for i = 0, DEBUFF_ACTUAL_DISPLAY do
    ApplyStyle(_G["DebuffButton"..i])
  end
end
hooksecurefunc("BuffFrame_Update", Update)

local function UpdateDuration(frame, timeLeft)
  local name = frame:GetName()
  local cfg

  if name:match("Debuff") then
    cfg = L.C.debuffs
  else
    cfg = L.C.buffs
  end

  frame.duration:SetVertexColor(cfg.duration.color.r, cfg.duration.color.g, cfg.duration.color.b)
end
hooksecurefunc("AuraButton_UpdateDuration", UpdateDuration)
