fx_version 'cerulean'
game 'gta5'

author 'Lxr Dev'
description 'Script By Lxr Dev discord.gg/R9KgyCkXJp'
version '1.0.0'

client_scripts {
    'client/client.lua',
}

server_scripts {
    'server/server.lua',
}

shared_scripts {
    'config.lua',
    'locale.lua'
}

ui_page 'ui/ui.html'

files {
    'ui/ui.html',
    'ui/css/main.css',
    'ui/js/app.js',
    'ui/assets/*.svg'
}
server_scripts { '@oxmysql/lib/MySQL.lua' }