local mu = require('snips.utils.module')
local ip = mu.importer('snips.javascript.primitives')
local ic = mu.importer('snips.javascript.choices')
local id = mu.importer('snips.javascript.dynamic')

local M = {
	primitives = {
		class = ip('class'),

		variable = ip('variable'),
		constant_variable = ip('constant_variable'),

		describe = ip('describe'),
		test = ip('test'),
		expect = ip('expect'),

		constructor = ip('constructor'),
		method = ip('method'),
		declarative_func = ip('declarative_func'),
		lexical_declarative_arrow_func = ip('lexical_declarative_arrow_func'),
		inline_anonymous_func = ip('inline_anonymous_func'),
		multiline_anonymous_func = ip('multiline_anonymous_func'),
	},

	choices = {
		variable = ic('variable'),
		stdout = ic('stdout'),
		func = ic('func'),
		anonymous_func = ic('anonymous_func'),
	},

	dynamic = {
		func = id('func'),
	},
}

return M