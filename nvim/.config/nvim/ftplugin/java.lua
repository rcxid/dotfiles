#!/bin/lua

local maven_setting = '/opt/maven/conf/settings.xml'
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/home/vision/code/java/jdtls-workspace/' .. project_name
-- local jar_path = vim.fn.system({'locate', 'org.eclipse.equinox.launcher_'})

-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {
    '/usr/lib/jvm/java-11-openjdk/bin/java',
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
    '-jar', '/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/usr/share/java/jdtls/config_linux',
    '-data', workspace_dir,
  },

  -- 💀
  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  settings = {
    java = {
      home = "/usr/lib/jvm/java-11-openjdk",
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
            path = "/usr/lib/jvm/java-8-openjdk",
          },
          {
            name = "JavaSE-11",
            path = "/usr/lib/jvm/java-11-openjdk",
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
}

-- This bundles definition is the same as in the previous section (java-debug installation)
local bundles = {
  vim.fn.glob("/home/vision/code/java/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar"),
}

-- This is the new part
vim.list_extend(bundles, vim.split(vim.fn.glob("/home/vision/code/java/vscode-java-test/server/*.jar"), "\n"))
config['init_options'] = {
  bundles = bundles;
}

config['on_attach'] = function(client, bufnr)
  -- With `hotcodereplace = 'auto' the debug adapter will try to apply code changes
  -- you make during a debug session immediately.
  -- Remove the option if you do not want that.
  require('jdtls').setup_dap({ hotcodereplace = 'auto' })
end

-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)


local options = {
  noremap = true,
  silent = true,
}

-- java项目按键映射配置
local mappings = {
  { 'n',  '<leader>f',    "<Cmd>lua vim.lsp.buf.formatting()<CR>",                      options },
  { 'n',  '<leader>i',    "<Cmd>lua vim.lsp.buf.code_action()<CR>",                     options },
  { 'n',  '<leader>o',    "<Cmd>lua require('jdtls').organize_imports()<CR>",           options },
  { 'n',  '<leader>c',    "<Cmd>lua require('jdtls').extract_constant()<CR>",           options },
  { 'v',  '<leader>c',    "<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>",  options },
  { 'n',  '<leader><CR>', "<Cmd>lua require('jdtls').extract_variable()<CR>",           options },
  { 'v',  '<leader><CR>', "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",  options },
  { 'v',  '<leader>m',    "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",    options },
  { 'n',  '<leader>df',   "<Cmd>lua require('jdtls').test_class()<CR>",                 options },
  { 'n',  '<leader>dn',   "<Cmd>lua require('jdtls').test_nearest_method()<CR>",        options },
}

-- 加载按键映射配置
require('core.keymap').load_mapping_configs(mappings)

vim.cmd([[
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_compile JdtCompile lua require('jdtls').compile(<f-args>)
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_set_runtime JdtSetRuntime lua require('jdtls').set_runtime(<f-args>)
command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
command! -buffer JdtJol lua require('jdtls').jol()
command! -buffer JdtBytecode lua require('jdtls').javap()
command! -buffer JdtJshell lua require('jdtls').jshell()
]])
