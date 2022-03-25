vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_footer = { 'Bad times make a good man.   ' }
-- vim.g.dashboard_custom_footer = { 'Life is a fuxking movie!!!   ' }

vim.g.dashboard_custom_section = {
  a = { description = { "  Projects          " }, command = "Telescope projects" },
  b = { description = { "  Recently files    " }, command = "Telescope oldfiles" },
  c = { description = { "  Edit keybindings  " }, command = "edit ~/.config/nvim/lua/keybindings.lua" },
  d = { description = { "  Edit Projects     " }, command = "edit ~/.local/share/nvim/project_nvim/project_history", },
  -- e = { description = { "   Edit .zshrc       " }, command = "edit ~/.zshrc" },
  -- f = { description = { "   Find file         " }, command = 'Telescope find_files'},
  -- g = { description = { "   Find text         " }, command = 'Telescope live_grep'},
  -- h = { description = { "   Edit init.lua     " }, command = "edit ~/.config/nvim/init.lua" },
}

vim.g.dashboard_custom_header = {
  [[                                         ]],
  [[                               __        ]],
  [[                             .d$$b       ]],
  [[                           .' TOP;\      ]],
  [[                          /  : TP._;     ]],
  [[                         / _.;  :Tb|     ]],
  [[                        /   /   ;j$j     ]],
  [[                    _.-"       d$$$$     ]],
  [[                  .' ..       d$$$$;     ]],
  [[                 /  /P'      d$$$$P. |\  ]],
  [[                /   "      .d$$$P' |\^"l ]],
  [[              .'           `T$P^"""""  : ]],
  [[          ._.'      _.'                ; ]],
  [[       `-.-".-'-' ._.       _.-"    .-"  ]],
  [[     `.-" _____  ._              .-"     ]],
  [[    -(.\lee阿五\.              .'        ]],
  [[      ""^^T$$$P^)            .(:         ]],
  [[        _/  -"  /.'         /:/;         ]],
  [[     ._.'-'`-'  ")/         /;/;         ]],
  [[  `-.-"..--""   " /         /  ;         ]],
  [[ .-" ..--""        -'          :         ]],
  [[ ..--""--.-"         (\      .-(\        ]],
  [[   ..--""              `-\(\\/;`         ]],
  [[     _.                      :           ]],
  [[                             ;`-         ]],
  [[                                         ]],
}

