-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "Go",
  files = { "%.go$" },
  comment = "//",
  patterns = {
    { pattern = "//.-\n",               type = "comment"  },
    { pattern = { "/%*", "%*/" },       type = "comment"  },
    { pattern = { '"', '"', '\\' },     type = "string"   },
    { pattern = { "`", "`", '\\' },     type = "string"   },
    { pattern = { "'", "'", '\\' },     type = "string"   },
    { pattern = "0[oO_][0-7]+",         type = "number"   },
    { pattern = "-?0x[%x_]+",           type = "number"   },
    { pattern = "-?%d+_%d",             type = "number"   },
    { pattern = "-?%d+[%d%.eE]*f?",     type = "number"   },
    { pattern = "-?%.?%d+f?",           type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&]", type = "operator" },
    { pattern = ":=",                   type = "operator" },
    { pattern = "[%a_][%w_]*%f[(]",     type = "function" },
    { pattern = "[%a_][%w_]*",          type = "symbol"   },
  },
  symbols = {
    ["if"]          = "keyword",
    ["else"]        = "keyword",
    ["elseif"]      = "keyword",
    ["for"]         = "keyword",
    ["continue"]    = "keyword",
    ["return"]      = "keyword",
    ["struct"]      = "keyword",
    ["switch"]      = "keyword",
    ["case"]        = "keyword",
    ["default"]     = "keyword",
    ["const"]       = "keyword",
    ["package"]     = "keyword",
    ["import"]      = "keyword",
    ["func"]        = "keyword",
    ["var"]         = "keyword",
    ["type"]        = "keyword",
    ["interface"]   = "keyword",
    ["select"]      = "keyword",
    ["break"]       = "keyword",
    ["range"]       = "keyword",
    ["chan"]        = "keyword",
    ["defer"]       = "keyword",
    ["go"]          = "keyword",
    ["fallthrough"] = "keyword",
    ["int"]         = "keyword2",
    ["int64"]       = "keyword2",
    ["int32"]       = "keyword2",
    ["int16"]       = "keyword2",
    ["int8"]        = "keyword2",
    ["uint"]        = "keyword2",
    ["uint64"]      = "keyword2",
    ["uint32"]      = "keyword2",
    ["uint16"]      = "keyword2",
    ["uint8"]       = "keyword2",
    ["uintptr"]     = "keyword2",
    ["float64"]     = "keyword2",
    ["float32"]     = "keyword2",
    ["map"]         = "keyword2",
    ["string"]      = "keyword2",
    ["rune"]        = "keyword2",
    ["bool"]        = "keyword2",
    ["byte"]        = "keyword2",
    ["error"]       = "keyword2",
    ["complex64"]   = "keyword2",
    ["complex128"]  = "keyword2",
    ["true"]        = "literal",
    ["false"]       = "literal",
    ["nil"]         = "literal",
  },
}

