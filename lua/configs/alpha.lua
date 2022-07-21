local ascii = {
    [[           ; ; ;                                 ]],
    [[         ;        ;  ;     ;;    ;               ]],
    [[      ;                 ;         ;  ;           ]],
    [[                      ;                          ]],
    [[                     ;                ;;         ]],
    [[     ;          ;            ;              ;    ]],
    [[     ;            ';,        ;               ;   ]],
    [[     ;              'b      *                    ]],
    [[      ;              '$    ;;                ;;  ]],
    [[     ;    ;           $:   ;:               ;    ]],
    [[   ;;      ;  ;;      *;  @):        ;   ; ;     ]],
    [[                ;     :@,@):   ,;**:'   ;        ]],
    [[    ;      ;,         :@@*: ;;**'      ;   ;     ]],
    [[             ';o;    ;:(@';@*"'  ;               ]],
    [[     ;  ;       'bq,;;:,@@*'   ,*      ;  ;      ]],
    [[                ,p$q8,:@)'  ;p*'      ;          ]],
    [[         ;     '  ; '@@Pp@@*'    ;  ;            ]],
    [[          ;  ; ;;    Y7'.'     ;  ;              ]],
    [[                    :@):.                        ]],
    [[                   .:@:'.                        ]],
    [[                 .::(@:.                         ]],
    [[  --*_-'-_*'.'-*_---'-----*_'-.*_--'-'-'_*:.'*-  ]],
    [[                                                 ]],
    [[   .---..---. .---..---. .-. -..-.,-.-..-.-.-.   ]],
    [[   `| |'| |-< | |- | |-  | \\ | \  /| || | | |   ]],
    [[    `-' `-'`-'`---'`---' `-' -'  `' `-'`-'-'-'   ]],
}

local config = require('alpha.themes.dashboard')
config.section.header.val = ascii

local function createButton(key, icon, name, command)
    return config.button(key, icon.."  "..name, ":"..command.."<CR>")
end

config.section.buttons.val = {
    createButton("f", "", "Find File",     "Telescope find_files"),
    createButton("o", "", "Recent File",   "Telescope oldfiles"),
    createButton("e", "", "Explorer",      "NvimTreeToggle"),
    createButton("d", "", "Development",   "e /mnt/c/Development/"),
    createButton("c", "", "Configuration", "e ~/.config/nvim/"),
    createButton("t", "", "Terminal",      "ToggleTerm"),
    createButton("s", "", "Packer Sync",   "PackerSync"),
    createButton("q", "", "Quit",   "qa!"),
}

require('alpha').setup(config.config)
