local ls = require("luasnip")
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
  s("in", {
    t("#include <"),
    i(1, "STL"),
    t(">")
  }),
  s("inl", {
    t("#include \""),
    i(1, "STL"),
    t("\"")
  }),
  s({ trig = "print([%w_]+)", regTrig = true },
    f(function(_, snip)
      return
          "printf(\"" .. snip.captures[1] .. "\")"
    end, {})
  ),
  s({ trig = "void([%w_]+)", regTrig = true },
    fmt([[
  void {}({}) {{
    {}
    {}
  }};
  ]], {
      d(1, function(_, snip)
        return sn(1, i(1, snip.captures[1]))
      end, { 1 }),
      i(2, ""),
      i(4, ""),
      c(3, { t("return ;"), t("") })
    }))
  -- s({ trig = "void([%w_]+)", regTrig = true }, {
  --   t("void "),
  --   f(function(_, snip)
  --     return snip.captures[1]
  --   end),
  --   t("("), c(1, { i(1, "agrs"), t("") }), t(")"), t("{"),
  --   t("")
  -- })
}
