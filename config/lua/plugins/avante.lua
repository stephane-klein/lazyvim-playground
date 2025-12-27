return {
  "yetone/avante.nvim",
  enabled = true,
  opts = {
    -- Documentation reference: https://github.com/yetone/avante.nvim/wiki/Custom-providers#openrouter
    provider = "openrouter",
    mode = "legacy",
    providers = {
      openrouter = {
        __inherited_from = "openai",
        endpoint = "https://openrouter.ai/api/v1",
        api_key_name = "OPENROUTER_API_KEY",
        model = "anthropic/claude-sonnet-4.5",
      },
    }
  }
}
