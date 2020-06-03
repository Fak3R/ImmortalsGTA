

CREATE TABLE `weaccesorios` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`store` varchar(100) NOT NULL,
	`item` varchar(100) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `weaccesorios` (store, item, price) VALUES

	('TiendaAccesorio','yusuf',30),
	('TiendaAccesorio','grip',30),
	('TiendaAccesorio','flashlight',30),
	('TiendaAccesorio','silencieux',15)
	('TiendaAccesorio','clip',15),
	('TiendaAccesorio','bulletproof',15)

;