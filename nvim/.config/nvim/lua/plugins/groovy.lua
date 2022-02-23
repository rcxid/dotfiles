#!/bin/lua

require('lspconfig').groovyls.setup({
  cmd = { "java", "-jar", "~/code/java/groovy-language-server/build/libs/groovy-language-server-all.jar" },
})
