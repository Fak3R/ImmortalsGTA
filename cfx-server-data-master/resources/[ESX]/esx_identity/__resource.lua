resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Identity'

version '1.1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'client/main.lua'
}

ui_page 'html/index.html'

files {

	'html/fonts/JosefinSans/JosefinSans-Bold.ttf',
	'html/fonts/JosefinSans/JosefinSans-BoldItalic.ttf',
	'html/fonts/JosefinSans/JosefinSans-Italic.ttf',
	'html/fonts/JosefinSans/JosefinSans-Light.ttf',
	'html/fonts/JosefinSans/JosefinSans-LightItalic.ttf',
	'html/fonts/JosefinSans/JosefinSans-Regular.ttf',
	'html/fonts/JosefinSans/JosefinSans-SemiBold.ttf',
	'html/fonts/JosefinSans/JosefinSans-SemiBoldItalic.ttf',
	'html/fonts/JosefinSans/JosefinSans-Thin.ttf',
	'html/fonts/JosefinSans/JosefinSans-ThinItalic.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-Black.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-BlackItalic.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-Bold.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-BoldItalic.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-ExtraLight.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-ExtraLightItalic.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-Italic.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-Light.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-LightItalic.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-Regular.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-SemiBold.ttf',
	'html/fonts/source-sans-pro/SourceSansPro-SemiBoldItalic.ttf',

	'html/index.html',
	'html/script.js',
	'html/style.css',
	'html/Prototype.ttf',

	'html/background.jpg'

}

dependency 'es_extended'