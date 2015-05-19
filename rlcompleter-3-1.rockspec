package="rlcompleter"
version="3-1"

source = {
   url = "git://github.com/rrthomas/lua-rlcompleter"
}

description = {
   summary = "Readline completion for Lua",
   detailed = [[
       rlcompleter provides readline completion to the Lua interpreter.
   ]],
   homepage = "https://github.com/rrthomas/lua-rlcompleter/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      rlcompleter_c = {
         sources = "rlcompleter.c",
         libraries = "readline"
      },
      rlcompleter = "rlcompleter.lua"
   }
}

