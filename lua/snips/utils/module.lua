local M = {}

function M.importer(base_path)
    return function(path)
        return require(base_path .. '.' .. path)
    end
end

return M
