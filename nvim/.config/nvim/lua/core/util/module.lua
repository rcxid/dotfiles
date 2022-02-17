#!/bin/lua

local mod = {}

-- 处理模块: 给模块添加前缀
-- prefix: 'config'
-- modules: { 'module', ... }
function handle(prefix, modules)
   local handle_modules = {}
   for index, module in ipairs(modules) do
     handle_modules[index] = prefix .. '.' .. module
   end
   return handle_modules
end

-- 加载模块
-- modules: { 'module', ... }
-- prefix: 'config'
function mod.load_modules(modules, prefix)
  if prefix ~= nil then
    modules = handle(prefix, modules)
  end
  for _, module in ipairs(modules) do
    local ok, err = pcall(require, module)
    if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
    end
  end
end

return mod
