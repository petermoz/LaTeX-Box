" adds support for cleverref package
" \Cref, \cref, \cpageref, \labelcref, \labelcpageref
syn region texRefZone		matchgroup=texStatement start="\\Cref{"				end="}\|%stopzone\>"	contains=@texRefGroup
syn region texRefZone		matchgroup=texStatement start="\\\(label\|\)c\(page\|\)ref{"	end="}\|%stopzone\>"	contains=@texRefGroup
" also support autoref 
syn region texRefZone		matchgroup=texStatement start="\\autoref{"			end="}\|%stopzone\>"	contains=@texRefGroup
" support additional ciyte commands
syn match texRefZone '\\citeauthor\%(\*\=\)\=' nextgroup=texRefOption,texCite
syn match texRefZone '\\citeyear\%(\*\=\)\=' nextgroup=texRefOption,texCite
syn match texRefZone '\\citeyearpar\%(\*\=\)\=' nextgroup=texRefOption,texCite
