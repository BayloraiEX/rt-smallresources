fx_version 'cerulean'
game 'gta5'

description 'RT-smallresources | A Heavily Edited QB-SmallResources'
version '1.0.1'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
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
    'minigames.html',
    'minigames.js',
    'minigames/option_1.png',
    'minigames/option_2.png',
    'minigames/option_3.png',
    'minigames/dice_1.png',
    'minigames/dice_2.png',
    'minigames/dice_3.png',
    'minigames/dice_4.png',
    'minigames/dice_5.png',
    'minigames/dice_6.png',
    'minigames/coinflip_1.png',
    'minigames/coinflip_2.png',
    'minigames/shoot_1.png',
    'minigames/shoot_2.png'
}

lua54 'yes'
