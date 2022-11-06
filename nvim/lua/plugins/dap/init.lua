local module = require('core.util.module')

local prefix = 'plugins.dap'

local modules = {
  'nvim-dap-virtual-text'
}

module.setup(modules, prefix)
