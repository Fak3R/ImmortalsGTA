USE `zap436060-5`;
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('oxygen_mask', 'Oxygen Mask', -1, 0, 1),
	('bulletproof', 'Bullet-Proof Vest', -1, 0, 1),
	('clip', 'Weapon Clip', -1, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('ExtraItemsShop', 'oxygen_mask', 400),
	('ExtraItemsShop', 'bulletproof', 300),
;