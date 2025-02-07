local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      ":!gomodifytags -file % -struct <C-R><C-W> -add-tags json -w<CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      ":!gomodifytags -file % -struct <C-R><C-W> -add-tags yaml -w<CR>",
      "Add yaml struct tags"
    },
    ["<leader>rgsj"] = {
      ":!gomodifytags -file % -struct <C-R><C-W> -remove-tags json -w<CR>",
      "Add yaml struct tags"
    },
    ["<leader>rgsy"] = {
      ":!gomodifytags -file % -struct <C-R><C-W> -remove-tags yaml -w<CR>",
      "Add yaml struct tags"
    }
  }
}

return M
