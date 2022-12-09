local fn = vim.fn
local cmd = vim.api.nvim_command
local M = {}
---Deletes all trailing whitespaces in a file if it's not binary nor a diff.
function M.trim_trailing_whitespaces()
  local o = vim.o
  if not o.binary and o.filetype ~= 'diff' then
    local current_view = fn.winsaveview()
    cmd([[keeppatterns %s/\s\+$//e]])
    fn.winrestview(current_view)
  end
end

return M
