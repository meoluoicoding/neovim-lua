

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a space 
vim.g.mapleader = '<space>'



-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to kk
map('i', 'jj', '<Esc>')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- Reload configuration without restart nvim
map('n', '<C-r>', ':so %<CR>')

-- Fast saving with Ctrl and s
map('n', '<C-s>', ':w<CR>')
map('i', '<C-s>', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with Ctrl and q
map('n', '<C-q>', ':qa!<CR>')

--Allow gf to open/create non exists file
map('n','gf', ':edit <cfile><CR>')

--Remove All buffer (recent open files)
map ('n','<leader>q' ,':bufdo bdelete<CR>')
-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------
-- NvimTree
map('n', '<F6>', ':NvimTreeToggle<CR>',{silent=true})            -- open/close
map('n', '<F8>', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<F7>', ':NvimTreeFindFile<CR>')      -- search file

--Telescope
map('n','<C-p>',':Telescope find_files<CR>',{noremap=true})
map('n','<leader>ff',':Telescope find_files<CR>',{noremap=true})
map('n','<leader>ft',':Telescope live_grep<CR>',{noremap=true})
map('n','<leader>fp',':Telescope project<CR>',{noremap=true})
map('n','<leader>fb',':Telescope buffer<CR>',{noremap=true})

