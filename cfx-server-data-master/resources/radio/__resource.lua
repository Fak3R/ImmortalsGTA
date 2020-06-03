resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://18593.live.streamtheworld.com/RADIO_OXIGENO.mp3", volume = 0.2 ,name = "RADIO OXIGENO"}
supersede_radio "RADIO_02_POP" { url = "https://20263.live.streamtheworld.com/CRP_OAS_SC?dist=20001", volume = 0.2 ,name = "RADIO OASIS"}
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "https://15383.live.streamtheworld.com/RADIO_STUDIO92_SC", volume = 0.2 ,name = "RADIO STUDIO 92"}
supersede_radio "RADIO_04_PUNK" { url = "https://16613.live.streamtheworld.com/CRP_PLA_SC?dist=20001", volume = 0.2  ,name = "RADIO PLANETA"}
supersede_radio "RADIO_05_TALK_01" { url = "https://14003.live.streamtheworld.com/CRP_NQ_SC?dist=20001", volume = 0.2 ,name = "RADIO NUEVA Q"}
supersede_radio "RADIO_06_COUNTRY" { url = "https://14613.live.streamtheworld.com/CRP_MAR_SC?dist=20001", volume = 0.2 ,name = "RADIO RADIOMAR"}
supersede_radio "RADIO_07_DANCE_01" { url = "https://18533.live.streamtheworld.com/CRP_RIT_SC?dist=20001", volume = 0.2 ,name = "RADIO RITMO ROMANTICA"}
supersede_radio "RADIO_08_MEXICAN" { url = "https://18313.live.streamtheworld.com/RADIO_FELICIDAD_SC", volume = 0.2 ,name = "RADIO FELICIDAD"}
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "https://19493.live.streamtheworld.com/CRP_MOD_SC?dist=20001", volume = 0.2 ,name = "RADIO MODA"}
supersede_radio "RADIO_19_USER" { url = "https://18533.live.streamtheworld.com/RADIO_RPP_SC", volume = 0.2 ,name = "RADIO RPP NOTICIAS"}
supersede_radio "RADIO_20_THELAB" { url = "https://15363.live.streamtheworld.com/RADIO_CAPITAL_SC", volume = 0.2 ,name = "RADIO CAPITAL NOTICIAS"}
supersede_radio "RADIO_11_TALK_02" { url = "https://15383.live.streamtheworld.com/RADIO_CORAZON_SC", volume = 0.2 ,name = "RADIO CORAZON"}
supersede_radio "RADIO_21_DLC_XM17" { url = "http://15363.live.streamtheworld.com/RADIO_LAZONA.mp3", volume = 0.2 ,name = "RADIO LA ZONA"}
supersede_radio "RADIO_22_DLC_BATTLE_MIX1_RADIO" { url = "http://167.114.118.120:7442/;stream/1", volume = 0.2 ,name = "RADIO KARIBEÑA"}

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
