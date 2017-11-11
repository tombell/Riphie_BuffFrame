local A, L = ...

local mediapath = "Interface\\AddOns\\"..A.."\\media\\"

L.C = {
  buffs = {
    rowspacing = 10,
    colspacing = 7,

    button = {
      size = 40,
    },

    icon = {
      padding = -3,
    },

    border = {
      texture = mediapath.."gloss",
      color = { r = 0, g = 0, b = 0 },
    },

    duration = {
      font = mediapath.."Expressway.ttf",
      size = 11,
      pos = { a1 = "BOTTOM", x = 0, y = -10 },
      color = { r = 1, g = 1, b = 1 },
    },

    count = {
      font = mediapath.."Expressway.ttf",
      size = 11,
      pos = { a1 = "TOPRIGHT", x = 0, y = 0 },
    },
  },

  debuffs = {
    rowspacing = 10,
    colspacing = 7,

    button = {
      size = 45,
    },

    icon = {
      padding = -3,
    },

    border = {
      texture = mediapath.."gloss",
      color = { r = 0, g = 0, b = 0 },
    },

    duration = {
      font = mediapath.."Expressway.ttf",
      size = 11,
      pos = { a1 = "BOTTOM", x = 0, y = -10 },
      color = { r = 1, g = 1, b = 1 },
    },

    count = {
      font = mediapath.."Expressway.ttf",
      size = 11,
      pos = { a1 = "TOPRIGHT", x = 0, y = 0 },
    },
  },
}
