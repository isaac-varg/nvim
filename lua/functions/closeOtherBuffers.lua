local M = {}

function M.CloseOtherBuffers()
    -- get the curreng buff
  local current_buf = vim.api.nvim_get_current_buf()
  -- get list of all buffs
  local buffers = vim.api.nvim_list_bufs() 

  for _, buf in ipairs(buffers) do
    if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
      vim.api.nvim_buf_delete(buf, {}) -- close the buffer
    end
  end
end

return M
