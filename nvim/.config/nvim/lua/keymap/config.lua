local config = {}

function config:new()
    local instance = {
        mode = '',
        key = '',
        cmd = '',
        options = {
            noremap = true,
            silent = true,
            expr = false,
            nowait = false,
        }
    }
    setmetatable(instance, self)
    self.__index = self
    return instance
end
