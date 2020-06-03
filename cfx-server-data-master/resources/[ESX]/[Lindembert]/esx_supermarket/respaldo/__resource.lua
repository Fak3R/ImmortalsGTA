resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Supermarket'

version '1.0.1'

files {
	'html/ui.html',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js',
	'html/iransans.otf',

	'html/img/banana.png',
	'html/img/orange.png',
	'html/img/donut.png',
	'html/img/fixkit.png',
	'html/img/jusfruit.png',
	'html/img/close.png',
	'html/img/croquettes.png',
	'html/img/plus.png',
	'html/img/minus.png',
	'html/img/burger.png',
	'html/img/bottle.png',
    'html/img/box.png',
	'html/img/carticon.png',
	'html/img/bottle.png',
	'html/img/bread.png',
	'html/img/water.png',
	'html/img/absinto.png',
	'html/img/cerveza.png',
	'html/img/champagne.png',
	'html/img/papitasfritas.png',
	'html/img/chocolate.png',
	'html/img/cigarro.png',
	'html/img/cocacola.png',
	'html/img/cafe.png',
	'html/img/cupcake.png',
	'html/img/gintonic.png',
	'html/img/hamburguesa.png',
	'html/img/icetea.png',
	'html/img/encendedor.png',
	'html/img/leche.png',
	'html/img/sandwich.png',
	'html/img/tequila.png',
	'html/img/vodka.png',
	'html/img/whisky.png'











}

ui_page 'html/ui.html'

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/fa.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/fa.lua',
	'config.lua',
	'server/main.lua'
}

dependency 'es_extended'
