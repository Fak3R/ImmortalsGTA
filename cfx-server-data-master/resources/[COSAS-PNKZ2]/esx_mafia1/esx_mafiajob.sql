INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_yeezuus','atakama',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_yeezuus','atakama',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_yeezuus', 'atakama', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('yeezuus', 'atakama', 1);

--
-- Déchargement des données de la table `jobs_grades`
--

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('yeezuus', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
('yeezuus', 1, 'capo', 'Capo', 1800, '{}', '{}'),
('yeezuus', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
('yeezuus', 3, 'boss', 'Parain', 2700, '{}', '{}');

CREATE TABLE `fine_types_yeezuus` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_yeezuus` (label, amount, category) VALUES 
	('Raket1',3000,0),
	('Raket2',5000,0),
	('Raket3',10000,1),
	('Raket4',20000,1),
	('Raket5',50000,2),
	('Raket6',150000,3),
	('Raket7',350000,3)
;