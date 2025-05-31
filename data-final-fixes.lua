local Public = require 'common'

require 'prototypes.decoratives'
require 'prototypes.items'

for _, inserter in pairs(data.raw.inserter) do
	inserter.allow_custom_vectors = true
end

return Public
