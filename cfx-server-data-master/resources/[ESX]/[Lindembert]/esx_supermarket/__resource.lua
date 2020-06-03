resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Supermarket'

version '1.0.1'

files {
	'html/ui.html',
	'html/styles.css',
	'html/scripts.js',
	'html/debounce.min.js',
	'html/iransans.otf',
	
	'html/img/bread.png',
	'html/img/fixkit.png',
	'html/img/soda.png',
	'html/img/banana.png',
	'html/img/orange.png',
	'html/img/donut.png',
	'html/img/fixkit.png',
	'html/img/energy.png',
	'html/img/jusfruit.png',
	'html/img/close.png',
	'html/img/croquettes.png',
	'html/img/water.png' ,
	'html/img/plus.png',
	'html/img/clip.png',
	'html/img/gps.png',
	'html/img/phone.png',
	'html/img/milk.png',
	'html/img/vino.png',
	'html/img/binoculars.png',
	
	'html/img/moneywashid.png',
	'html/img/billetera.png',
	
	
	'html/img/icetea.png',
	'html/img/beer.png',
	
	'html/img/chips.png',
	'html/img/cigarett.png',
	'html/img/absinthe.png',
	'html/img/hamburger.png',
	

	'html/img/coffe.png',
	'html/img/lighter.png',
	'html/img/sandwich.png',
	'html/img/tequila.png',

		'html/img/vodka.png',
	'html/img/whisky.png',
	'html/img/gintonic.png',
'html/img/champagne.png',
'html/img/cupcake.png',






	
	
	'html/img/minus.png'
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
