" MIT License. Copyright (c) 2013-2021 Bailey Ling et al.
" vim: et ts=2 sts=2 sw=2 tw=80

scriptencoding utf-8

" Airline themes are generated based on the following concepts:
"   * The section of the status line, valid Airline statusline sections are:
"       * airline_a (left most section)
"       * airline_b (section just to the right of airline_a)
"       * airline_c (section just to the right of airline_b)
"       * airline_x (first section of the right most sections)
"       * airline_y (section just to the right of airline_x)
"       * airline_z (right most section)
"   * The mode of the buffer, as reported by the :mode() function.  Airline
"     converts the values reported by mode() to the following:
"       * normal
"       * insert
"       * replace
"       * visual
"       * inactive
"       * terminal
"       The last one is actually no real mode as returned by mode(), but used by
"       airline to style inactive statuslines (e.g. windows, where the cursor
"       currently does not reside in).
"   * In addition to each section and mode specified above, airline themes
"     can also specify overrides.  Overrides can be provided for the following
"     scenarios:
"       * 'modified'
"       * 'paste'
"
" Airline themes are specified as a global viml dictionary using the above
" sections, modes and overrides as keys to the dictionary.  The name of the
" dictionary is significant and should be specified as:
"   * g:airline#themes#<theme_name>#palette
" where <theme_name> is substituted for the name of the theme.vim file where the
" theme definition resides.  Airline themes should reside somewhere on the
" 'runtimepath' where it will be loaded at vim startup, for example:
"   * autoload/airline/themes/theme_name.vim
"
" For this, the djmoch.vim, theme, this is defined as
let g:airline#themes#djmoch#palette = {}

" Keys in the dictionary are composed of the mode, and if specified the
" override.  For example:
"   * g:airline#themes#djmoch#palette.normal
"       * the colors for a statusline while in normal mode
"   * g:airline#themes#djmoch#palette.normal_modified
"       * the colors for a statusline while in normal mode when the buffer has
"         been modified
"   * g:airline#themes#djmoch#palette.visual
"       * the colors for a statusline while in visual mode
"
" Values for each dictionary key is an array of color values that should be
" familiar for colorscheme designers:
"   * [guifg, guibg, ctermfg, ctermbg, opts]
" See "help attr-list" for valid values for the "opt" value.
"
" Each theme must provide an array of such values for each airline section of
" the statusline (airline_a through airline_z).  A convenience function,
" airline#themes#generate_color_map() exists to mirror airline_a/b/c to
" airline_x/y/z, respectively.

" The djmoch.vim theme:
let s:airline_a_normal   = [ '#ffffff' , '#005faf' , 255  , 25 ]
let s:airline_b_normal   = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:airline_c_normal   = [ '#000000' , '#bcbcbc' , 0  , 250 ]
let g:airline#themes#djmoch#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

" It should be noted the above is equivalent to:
" let g:airline#themes#djmoch#palette.normal = airline#themes#generate_color_map(
"    \  [ '#00005f' , '#dfff00' , 17  , 190 ],  " section airline_a
"    \  [ '#ffffff' , '#444444' , 255 , 238 ],  " section airline_b
"    \  [ '#9cffd3' , '#202020' , 85  , 234 ]   " section airline_c
"    \)
"
" In turn, that is equivalent to:
" let g:airline#themes#djmoch#palette.normal = {
"    \  'airline_a': [ '#00005f' , '#dfff00' , 17  , 190 ],  "section airline_a
"    \  'airline_b': [ '#ffffff' , '#444444' , 255 , 238 ],  "section airline_b
"    \  'airline_c': [ '#9cffd3' , '#202020' , 85  , 234 ],  "section airline_c
"    \  'airline_x': [ '#9cffd3' , '#202020' , 85  , 234 ],  "section airline_x
"    \  'airline_y': [ '#ffffff' , '#444444' , 255 , 238 ],  "section airline_y
"    \  'airline_z': [ '#00005f' , '#dfff00' , 17  , 190 ]   "section airline_z
"    \}
"
" airline#themes#generate_color_map() also uses the values provided as
" parameters to create intermediary groups such as:
"   airline_a_to_airline_b
"   airline_b_to_airline_c
"   etc...

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#djmoch#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#djmoch#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#878700' , 255     , 100      , ''     ] ,
      \ }


let s:airline_a_insert = [ '#ffffff' , '#00875f' , 255 , 29  ]
let s:airline_b_insert = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:airline_c_insert = [ '#000000' , '#bcbcbc' , 0  , 250 ]
let g:airline#themes#djmoch#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#djmoch#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#878700' , 255     , 100      , ''     ] ,
      \ }
let g:airline#themes#djmoch#palette.insert_paste = {
      \ 'airline_a': [ s:airline_a_insert[0]   , '#d78700' , s:airline_a_insert[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#djmoch#palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

let g:airline#themes#djmoch#palette.replace = copy(g:airline#themes#djmoch#palette.insert)
let g:airline#themes#djmoch#palette.replace.airline_a = [ s:airline_b_insert[0]   , '#af0000' , s:airline_b_insert[2] , 124     , ''     ]
let g:airline#themes#djmoch#palette.replace_modified = g:airline#themes#djmoch#palette.insert_modified


let s:airline_a_visual = [ '#000000' , '#d7d787' , 0 , 186 ]
let s:airline_b_visual = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:airline_c_visual = [ '#000000' , '#bcbcbc' , 0  , 250 ]
let g:airline#themes#djmoch#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#djmoch#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#878700' , 255     , 100      , ''     ] ,
      \ }


let s:airline_a_inactive = [ '#bcbcbc' , '#1c1c1c' , 250 , 234 , 'italic' ]
let s:airline_b_inactive = [ '#bcbcbc' , '#262626' , 250 , 235 , 'italic' ]
let s:airline_c_inactive = [ '#bcbcbc' , '#303030' , 250 , 236 , 'italic' ]
let g:airline#themes#djmoch#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#djmoch#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , 'italic' ] ,
      \ }

" For commandline mode, we use the colors from normal mode, except the mode
" indicator should be colored differently, e.g. light green
let s:airline_a_commandline = [ '#ffffff' , '#875faf' , 255  , 97 ]
let s:airline_b_commandline = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:airline_c_commandline = [ '#000000' , '#bcbcbc' , 0  , 250 ]
let g:airline#themes#djmoch#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#djmoch#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded if the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#djmoch#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
        \ [ '#ffffff' , '#875fd7' , 255 , 98  , ''     ],
        \ [ '#5f00af' , '#ffffff' , 55  , 255 , 'bold' ])
endif
