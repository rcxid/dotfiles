#!/bin/lua

local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local dashboard = require('alpha.themes.dashboard')

alpha.setup(dashboard.config)
