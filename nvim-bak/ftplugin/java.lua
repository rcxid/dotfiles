local jdtls_ok, jdtls = pcall(require, 'jdtls')
if not jdtls_ok then
  return
end

local setup_ok, setup = pcall(require, 'jdtls.setup')
if not setup_ok then
  return
end

local data_dir = vim.fn.stdpath('data')
local home_dir = os.getenv('HOME')
local sdkman_dir = os.getenv('SDKMAN_DIR')
local maven_setting = sdkman_dir .. '/candidates/maven/current/conf/settings.xml'
local jar_file = 'org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar'
local jar_path = data_dir .. '/mason/packages/jdtls/plugins/' .. jar_file
local config_dir = data_dir .. '/mason/packages/jdtls/config_linux'
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = home_dir .. '/code/java/jdtls_workspace/' .. project_name
local project_root_dir = setup.find_root({'.git', 'mvnw', 'gradlew'})

-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms128m',
    '-Xmx1024m',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', jar_path,
    '-configuration', config_dir,
    '-data', workspace_dir,
  },

  -- 💀
  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = project_root_dir,

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
      home = sdkman_dir .. "/candidates/java/17.0.5-oracle",
      eclipse = {
        downloadSources = true,
      },
      server = {
        launchMode = "Hybrid",
      },
      maven = {
        downloadSources = true,
        updateSnapshots = true,
      },
      configuration = {
        maven = {
          userSettings = maven_setting,
          globalSettings = maven_setting,
        },
        runtimes = {
          {
            name = "JavaSE-1.8",
            path = sdkman_dir .. "/candidates/java/8.0.302-open",
          },
          {
            name = "JavaSE-17",
            path = sdkman_dir .. "/candidates/java/17.0.5-oracle",
          },
          {
            name = "JavaSE-19",
            path = sdkman_dir .. "/candidates/java/19.0.1-oracle",
          },
        }
      },
    }
  },

  -- Language server `initializationOptions`
  -- You need to extend the `bundles` with paths to jar files
  -- if you want to use additional eclipse.jdt.ls plugins.
  --
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
  -- init_options = {
  --   bundles = {}
  -- },

  -- capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- This bundles definition is the same as in the previous section (java-debug installation)
local bundles = {
  vim.fn.glob(data_dir .. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar"),
}

-- This is the new part
vim.list_extend(bundles, vim.split(vim.fn.glob(data_dir .. "/mason/packages/java-test/extension/server/*.jar"), "\n"))
config['init_options'] = {
  bundles = bundles;
}

config['on_attach'] = function(client, bufnr)
  -- With `hotcodereplace = 'auto' the debug adapter will try to apply code changes
  -- you make during a debug session immediately.
  -- Remove the option if you do not want that.
  jdtls.setup_dap({ hotcodereplace = 'auto' })
end

-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
jdtls.start_or_attach(config)

vim.cmd([[
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_compile JdtCompile lua require('jdtls').compile(<f-args>)
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_set_runtime JdtSetRuntime lua require('jdtls').set_runtime(<f-args>)
command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
command! -buffer JdtJol lua require('jdtls').jol()
command! -buffer JdtBytecode lua require('jdtls').javap()
command! -buffer JdtJshell lua require('jdtls').jshell()
]])

vim.api.nvim_command('command! -bar JavaFormat lua vim.lsp.buf.formatting()')

require('core.keymap').setup {
  -- jdtls
  { 'n',        '<space>jf',    ':JavaFormat<cr>'     },
  { 'n',        '<space>ji',    '<Cmd>lua vim.lsp.buf.code_action()<CR>'    },
  { 'n',        '<space>jo',    "<Cmd>lua require('jdtls').organize_imports()<CR>" },
  { 'n',        '<space>jc',    "<Cmd>lua require('jdtls').extract_constant()<CR>" },
  { 'v',        '<space>jc',    "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>" },
  { 'n',        '<space><CR>',  "<Cmd>lua require('jdtls').extract_variable()<CR>" },
  { 'v',        '<space><CR>',  "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>" },
  { 'v',        '<space>m',     "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>" },
  { 'n',        '<space>df',    "<Cmd>lua require('jdtls').test_class()<CR>" },
  { 'n',        '<space>dn',    "<Cmd>lua require('jdtls').test_nearest_method()<CR>" },
}
