fx_version 'cerulean'
game 'gta5'

description 'RT-smallresources | A Heavily Edited QB-SmallResources'
version '1.0.1'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua',
    'main.lua',
}

ui_page('html/index.html')

server_script 'server/*.lua'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua',
}

data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'

files {
    'events.meta',
    'html/index.html',
    'html/app.js',
    'html/style.css',
}

lua54 'yes'
