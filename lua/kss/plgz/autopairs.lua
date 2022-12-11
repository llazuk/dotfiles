local npairs = require('nvim-autopairs')
    -- change default fast_wrap
    npairs.setup({
        fast_wrap = {
          map = '<C-a>',
          chars = { '{', '[', '(', '"', "'" },
          pattern = [=[[%'%"%)%>%]%)%}%,]]=],
          end_key = '$',
          keys = 'qwertyuiopzxcvbnmasdfghjkl',
          check_comma = true,
          highlight = 'Search',
          highlight_grey='Comment'
        },
    })
