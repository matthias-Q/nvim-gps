local ts_queries = vim.treesitter.query

local M = {}

-- TreeSitter module setup
function M.init()
	require("nvim-treesitter").define_modules {
		nvimGPS = {
			module_path = "nvim-gps.internal",
			is_supported = function(lang)
				return ts_queries.get(lang, "nvimGPS") ~= nil
			end
		}
	}
end

function M.attach(bufnr, lang)
	-- Nothing
end

function M.detach(bufnr)
	-- Nothing
end

return M
