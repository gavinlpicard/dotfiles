function ColorMyPencils(color)
  color = color or "miasma"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "xero/miasma.nvim",
    name = "miasma",
    config = function()
      vim.cmd("colorscheme miasma")

      ColorMyPencils()
    end
  },
}
