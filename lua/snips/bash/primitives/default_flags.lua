local ls = require('luasnip')
local t = ls.text_node

return function()
  return t('set -euo pipefail')
end