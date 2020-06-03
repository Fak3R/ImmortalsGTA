resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page('html/index.html') 

files({
  'html/index.html',
  'html/script.js',
  'html/style.css',
	'html/img/burger.png',
	'html/img/bottle.png',
  'html/font/vibes.ttf',
  'html/img/box.png',
	'html/img/carticon.png',
	'html/img/bottle.png',
	'html/img/pan.png',
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
	'html/img/whisky.png',
})

client_scripts {
  'config.lua',
  'client/main.lua',
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',	
  'locales/sv.lua',
}

server_scripts {
  'config.lua',
  'server/main.lua',
  '@mysql-async/lib/MySQL.lua'
}
