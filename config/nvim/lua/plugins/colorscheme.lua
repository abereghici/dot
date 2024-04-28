local function getVariantByTime(hour)
  if hour >= 9 and hour < 19 then
    return "dawn"
  else
    return "moon"
  end
end

local function selectOptsByTime()
  local hour = tonumber(os.date("%H"))
  local variant = getVariantByTime(hour)

  return {
    variant = variant,
  }
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = selectOptsByTime(),
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
