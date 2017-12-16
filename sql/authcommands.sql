Use auth;
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(1008, 'Command: Rate xp'),
(1009, 'Command: Rate loot'),
(1010, 'Command: Rate');

INSERT INTO `rbac_linked_permissions` (`id`,`linkedId`) VALUES
(195, 1008),
(195, 1009),
(195, 1010);
