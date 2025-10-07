return {
    "Vigemus/iron.nvim",
    config = function()
        local iron = require("iron.core")
        local view = require("iron.view")
        local common = require("iron.fts.common")

        iron.setup({
            config = {
                scratch_repl = true,
                repl_definition = {
                    python = {
                        command = { "ipython", },
                        format = common.bracketed_paste_python,
                        block_dividers = { "# %%", "#%%" },
                        env = { PYTHON_BASIC_REPL = "1" },
                    },
                    sh = {
                        command = { "zsh" },
                    },
                },
                repl_open_cmd = view.right(100),
            },
            keymaps = {
                toggle_repl = "<leader>rt",
                send_motion = "<leader>rs",
                visual_send = "<leader>rv",
                send_file = "<leader>rf",
                send_line = "<leader>rl",
                send_mark = "<leader>rm",
                send_code_block = "<leader>rb",
                send_code_block_and_move = "<leader>rB",
                mark_motion = "<leader>rM",
                mark_visual = "<leader>rV",
                remove_mark = "<leader>rD",
                cr = "<leader>r<cr>",
                interrupt = "<leader>r<space>",
                exit = "<leader>rq",
                clear = "<leader>rc",
            },
            highlight = { italic = true },
            ignore_blank_lines = true,
        })
        vim.keymap.set("n", "<leader>rF", "<cmd>IronFocus<cr>")
    end,
}
