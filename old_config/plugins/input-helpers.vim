" INPUT HELPERS
" close curly bracket and indent inside
inoremap ,{ {}<Left><CR><Esc><S-O>
" arrow function
inoremap ,( () => {}<Left><CR><Esc><S-O>
" async arrow function
inoremap ,a( async () => {}<Left><CR><Esc><S-O>
" console.log
inoremap ,l console.log()<Left>
" data-test-id=""
inoremap ,ti data-test-id=""<Left>
" templat literal inserts
inoremap ,$ ${}<Left>
" add test.todo
inoremap ,td test.todo('')<Left><Left>
" test.todo => test
map ,do  0f.d2wf)i, ,(
