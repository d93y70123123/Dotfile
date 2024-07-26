return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        mode = "buffers",                           -- set to "tabs" to only show tabpages instead
        style_preset = bufferline.style_preset.default, -- 設定 bufferline 顯示的字體樣式，就是指上面的標題列
        themable = true,                            -- allows highlight groups to be overriden i.e. sets highlights as default
        numbers = "ordinal",
        -- 標題列的序號顯示 滑鼠點擊的設定
        --close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
        --right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
        --left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
        --middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
        -- 指標設定，用於顯示當前在哪個 buffer
        -- 會跟 separator_style 衝突
        indicator = {
          icon = "▶ ",
          style = "icon",
        },
        -- 設定 buffer 的 icon
        buffer_close_icon = "󰅖",
        modified_icon = "● ",
        close_icon = " ",
        left_trunc_marker = " ",
        right_trunc_marker = " ",

        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 18,

        -- 整合 nvim-lsp 診斷器的設定
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false, -- only applies to coc
        diagnostics_update_on_event = true, -- use nvim's diagnostic handler
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "(" .. count .. ")"
        end,

        custom_filter = function(buf_number, buf_numbers)
          if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
            return true
          end
          if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
            return true
          end
          if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
            return true
          end
          if buf_numbers[1] ~= buf_number then
            return true
          end
        end,
        --對側邊欄的設定
        offsets = {
          {
            filetype = "neo-tree",
            text = "KAI 的工作區域",
            text_align = "center",
            separator = true,
          },
        },
        color_icons = true, -- whether or not to add the filetype icon highlights
        get_element_icon = function(element)
          local icon, hl =
              require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
          return icon, hl
        end,
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        duplicates_across_groups = true, -- whether to consider duplicate paths in different groups as duplicates
        persist_buffer_sort = true,  -- whether or not custom sorted buffers should persist
        move_wraps_at_ends = false,  -- whether or not the move command "wraps" at the first or last position
        --separator_style = "slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        auto_toggle_bufferline = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        sort_by = "insert_after_current",
      },
      -- 整合 catppuccino 的主題
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    })
  end,
}
