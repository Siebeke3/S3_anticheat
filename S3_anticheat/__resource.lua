
beschrijving 'S3_anticheat'

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
    's3anticheat-cl.lua'
}
server_scripts {
	'@es_extended/locale.lua',
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/en.lua',
	'config.lua',
    's3anticheat-sv.lua'
}

dependencies {
	'essentialmode',
	'async'
}

