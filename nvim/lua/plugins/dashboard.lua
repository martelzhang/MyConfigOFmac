local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.setup({
  theme = 'hyper', --  theme is doom and hyper default is hyper
disable_move,    --  default is false disable move keymap for hyper
shortcut_type,   --  shorcut type 'letter' or 'number'
change_to_vcs_root, -- default is false,for open file in hyper mru. it will change to the root of vcs
hide = {
      -- hide statusline default is true
       -- hide the tabline
       -- hide winbar
},
preview = {
  command,       -- preview command
  file_path,     -- preview file path
  file_height,   -- preview file height
  file_width    -- preview file width
},
    config = {
    header = {
[[  ]],
[[  ]],
[[ ██████╗ ██╗  ██╗██████╗         ██████╗ ███╗   ███╗         ██████╗████████╗██████╗ ██╗     ]],
[[██╔════╝ ██║ ██╔╝██╔══██╗        ██╔══██╗████╗ ████║        ██╔════╝╚══██╔══╝██╔══██╗██║     ]],
[[██║  ███╗█████╔╝ ██║  ██║        ██████╔╝██╔████╔██║        ██║        ██║   ██████╔╝██║     ]],
[[██║   ██║██╔═██╗ ██║  ██║        ██╔══██╗██║╚██╔╝██║        ██║        ██║   ██╔══██╗██║     ]],
[[╚██████╔╝██║  ██╗██████╔╝███████╗██║  ██║██║ ╚═╝ ██║███████╗╚██████╗   ██║   ██║  ██║███████╗]],
[[ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝ ╚═════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝]],
[[  ]],
[[  ]],

    }, --your header
    center = {

    },
    footer = {

    },--your footer

     week_header = {
    enable,  --boolean use a week header
    concat,  --concat string after time string line
    append  --table append after time string line
  },
  disable_move  -- boolean default is false disable move key
  }
})

