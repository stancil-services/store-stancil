-- Backfill legacy orders 101-208 from old Supabase store (xlsx export 2026-04-13)
-- 108 orders, 187 line items
-- Generated from docs/AllOrders_1775843921602.xlsx

INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (101, 60.00, 60.00, 0.00, '2025-12-22 12:00:00', 'manjarrezsergio592@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Sergio', 'Deshawn.daniels@stancilservises.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (102, 130.00, 130.00, 0.00, '2025-12-22 12:00:00', 'manjarrezsergio592@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Sergio', 'Deshawn.daniels@stancilservises.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (103, 78.00, 78.00, 0.00, '2026-01-02 12:00:00', 'Alexis.Guzman@stancilservices.com', 1, '', 'Fulfilled', 'Main', 'Alexis Guzman', 'Alexis.guzman@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (104, 54.00, 54.00, 0.00, '2026-01-02 12:00:00', 'Alexis.Guzman@stancilservices.com', 1, '', 'Fulfilled', 'Main', 'Alexis Guzman', 'Alexis.guzman@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (105, 15.00, 15.00, 0.00, '2026-01-02 12:00:00', 'Alexis.Guzman@stancilservices.com', 1, '', 'Fulfilled', 'Main', 'Alexis Guzman', 'Alexis.guzman@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (106, 20.00, 20.00, 0.00, '2026-01-02 12:00:00', 'Alexis.Guzman@stancilservices.com', 1, '', 'Fulfilled', 'Main', 'Alexis Guzman', 'Alexis.guzman@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (107, 90.00, 90.00, 0.00, '2026-01-06 12:00:00', 'David.Jaimes@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Deshawn', 'Deshawn.daniels@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (108, 132.00, 110.00, 22.00, '2026-01-06 12:00:00', 'David.Jaimes@stancilservices.com', 0, '', 'Confirmed', 'Warehouse Concord', 'Deshawn', 'Deshawn.daniels@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (109, 40.00, 40.00, 0.00, '2026-01-07 12:00:00', 'jensyoliva652@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Desha', 'deshawn.daniels@stancilservices');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (110, 28.00, 28.00, 0.00, '2026-01-07 12:00:00', 'jensyoliva652@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Desha', 'deshawn.daniels@stancilservices');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (111, 199.00, 199.00, 0.00, '2026-01-09 12:00:00', 'gallegodiego30038@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Deshawn', 'deshawn.daniels@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (112, 0.00, 0.00, 0.00, '2026-01-10 12:00:00', 'luisgomez70491@gmail.com', 0, '', 'Cancelled', 'Warehouse Concord', 'Luis Gómez', 'luisgomez70491@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (113, 40.00, 40.00, 0.00, '2026-01-13 12:00:00', 'warehouse.main@stancilservices.com', 1, '', 'Fulfilled', 'Main', 'Jamaal', 'jamaal.bracey@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (114, 252.00, 200.00, 52.00, '2026-01-14 12:00:00', 'afisher5544@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Gary', 'Gary.Gaylor&stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (115, 206.00, 200.00, 6.00, '2026-01-17 12:00:00', 'luisgomez70491@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Luis Gómez', 'luisgomez70491@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (116, 60.00, 60.00, 0.00, '2026-01-21 12:00:00', 'efg3981@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Enrique Francisco gomez', 'efg3981@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (117, 85.00, 85.00, 0.00, '2026-01-21 12:00:00', 'escobar.enmanuel06@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Josué Enmanuel Escobar Hernández', 'escobar.enmanuel06@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (118, 44.00, 44.00, 0.00, '2026-01-24 12:00:00', 'Dustin.McNiff@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Leland', 'dustin mcniff', 'dustin.mcniff@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (119, 10.00, 10.00, 0.00, '2026-01-28 12:00:00', 'gabrielrico511@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'De shawn', 'Deshawn.daniel@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (120, 15.00, 15.00, 0.00, '2026-01-28 12:00:00', 'gabrielrico511@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'De shawn', 'Deshawn.daniel@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (121, 76.00, 76.00, 0.00, '2026-01-29 12:00:00', 'jamezqu01@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Johnson', 'casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (122, 20.00, 20.00, 0.00, '2026-02-06 12:00:00', 'warehouse.main@stancilservices.com', 1, '', 'Fulfilled', 'Main', 'Jamaal', 'jamaal.bracey@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (123, 25.00, 25.00, 0.00, '2026-02-06 12:00:00', 'jamezqu01@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Johnson', 'casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (124, 60.00, 60.00, 0.00, '2026-02-11 12:00:00', 'jensyoliva652@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Desha', 'deshawn.daniels@stancilservices');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (125, 60.00, 60.00, 0.00, '2026-02-11 12:00:00', 'flormaria1386@gmail.com', 1, '', 'Fulfilled', 'Operations', 'María Guadalupe flores', 'Floremaria1386@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (126, 72.00, 72.00, 0.00, '2026-02-11 12:00:00', 'jensyoliva652@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Desha', 'deshawn.daniels@stancilservices');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (127, 60.00, 60.00, 0.00, '2026-02-12 12:00:00', 'flormaria1386@gmail.com', 1, '', 'Fulfilled', 'Operations', 'María Guadalupe flores', 'Floremaria1386@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (128, 72.00, 72.00, 0.00, '2026-02-12 12:00:00', 'dylanmatheoramirezquintanilla@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Jonhson', 'No lo sé');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (129, 52.00, 52.00, 0.00, '2026-02-12 12:00:00', 'dylanmatheoramirezquintanilla@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Jonhson', 'No lo sé');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (130, 28.00, 28.00, 0.00, '2026-02-12 12:00:00', 'flormaria1386@gmail.com', 1, '', 'Fulfilled', 'Operations', 'María Guadalupe flores', 'Floremaria1386@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (131, 28.00, 0.00, 28.00, '2026-02-12 12:00:00', 'jensyoliva652@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Desha', 'deshawn.daniels@stancilservices');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (132, 52.00, 1.00, 51.00, '2026-02-12 12:00:00', 'gallegodiego30038@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Deshawn', 'deshawn.daniels@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (133, 28.00, 0.00, 28.00, '2026-02-12 12:00:00', 'jensyoliva652@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Desha', 'deshawn.daniels@stancilservices');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (134, 28.00, 0.00, 28.00, '2026-02-12 12:00:00', 'gallegodiego30038@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Deshawn', 'deshawn.daniels@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (135, 52.00, 52.00, 0.00, '2026-02-16 12:00:00', 'eduardogallardo040@gmail.com', 1, '', 'Fulfilled', 'Operations', 'Eduardo Moyado', 'eduardlgallardo040@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (136, 71.00, 71.00, 0.00, '2026-02-17 12:00:00', '17043093507', 0, '', 'Confirmed', 'Main', 'Luis Cerrano', 'Luis cerrano');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (137, 128.00, 128.00, 0.00, '2026-02-18 12:00:00', 'Jonathan.Thompson@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Gastonia', 'Mike Petty', 'Mike.petty@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (138, 182.00, 10.00, 172.00, '2026-02-19 12:00:00', 'manjarrezsergio592@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Sergio', 'Deshawn.daniels@stancilservises.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (139, 28.00, 28.00, 0.00, '2026-02-19 12:00:00', 'Anjie.Hinson@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Kris Gunther', 'kris.gunther@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (140, 28.00, 28.00, 0.00, '2026-02-19 12:00:00', 'Anjie.Hinson@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Kris Gunther', 'kris.gunther@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (141, 39.00, 39.00, 0.00, '2026-02-19 12:00:00', 'maryelena94@gmail.com', 1, '', 'Fulfilled', 'Main', 'Luis serrano', 'Luis serrano');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (142, 39.00, 39.00, 0.00, '2026-02-19 12:00:00', 'maryelena94@gmail.com', 1, '', 'Fulfilled', 'Main', 'Luis serrano', 'Luis serrano');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (143, 26.00, 26.00, 0.00, '2026-02-19 12:00:00', 'maryelena94@gmail.com', 1, '', 'Fulfilled', 'Main', 'Luis serrano', 'Luis serrano');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (144, 124.00, 124.00, 0.00, '2026-02-19 12:00:00', 'jesus_704@live.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Luis Serrano', 'Luis Serrano');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (145, 65.00, 65.00, 0.00, '2026-02-20 12:00:00', 'juandvd950@gmail.com', 1, '', 'Fulfilled', 'Main', 'Luis serrano', 'Luis serrano');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (146, 60.00, 60.00, 0.00, '2026-02-23 12:00:00', 'roberto.gabarrete@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Gastonia', 'Micah Partlow', 'Micah.Partlow@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (147, 28.00, 28.00, 0.00, '2026-02-23 12:00:00', 'jonvegeta98@gmail.com', 0, '', 'Confirmed', 'Warehouse Leland', 'Jonathan Jose Flores Miranda', 'jonvegeta98@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (148, 15.00, 15.00, 0.00, '2026-02-23 12:00:00', 'jonvegeta98@gmail.com', 1, '', 'Fulfilled', 'Warehouse Leland', 'Jonathan Jose Flores Miranda', 'jonvegeta98@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (149, 125.00, 125.00, 0.00, '2026-02-24 12:00:00', 'Franklin.Rodriguez@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Franklin Rodríguez Muñoz', 'franedgar1991@icloud.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (150, 165.00, 165.00, 0.00, '2026-02-24 12:00:00', 'isaufea53@icloud.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey johnson', 'Casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (151, 86.00, 86.00, 0.00, '2026-02-25 12:00:00', 'pinedaacosta104@gmail.com', 1, '', 'Fulfilled', 'Main', 'José humberto pineda acosta', 'Pinedaacosta104@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (152, 20.00, 20.00, 0.00, '2026-02-25 12:00:00', 'Eric.Juarez@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chris meek', 'Christopher.meek@stancilsercives.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (153, 72.00, 52.00, 20.00, '2026-03-02 12:00:00', 'flormaria1386@gmail.com', 1, '', 'Fulfilled', 'Operations', 'María Guadalupe flores', 'Floremaria1386@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (154, 112.00, 112.00, 0.00, '2026-03-02 12:00:00', 'isaiasgom120@outlook.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chuy', 'Isaiasgom120@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (155, 54.00, 54.00, 0.00, '2026-03-03 12:00:00', 'eduardogallardo040@gmail.com', 1, '', 'Fulfilled', 'Operations', 'Eduardo Moyado', 'eduardlgallardo040@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (156, 72.00, 72.00, 0.00, '2026-03-03 12:00:00', 'jmpainting17@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Jose Humberto Morales', 'jmpainting17@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (157, 56.00, 56.00, 0.00, '2026-03-03 12:00:00', 'eduardogallardo040@gmail.com', 1, '', 'Fulfilled', 'Operations', 'Eduardo Moyado', 'eduardlgallardo040@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (158, 28.00, 28.00, 0.00, '2026-03-04 12:00:00', 'Jordan.Gaddy@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Alexis Guzman', 'Alexisguzman@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (159, 28.00, 28.00, 0.00, '2026-03-04 12:00:00', 'Jordan.Gaddy@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Alexis Guzman', 'Alexisguzman@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (160, 93.00, 93.00, 0.00, '2026-03-05 12:00:00', 'Gabe.Robledo@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Gabe Robledo', 'Gabe.Robledo@stancilpainting.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (161, 71.00, 71.00, 0.00, '2026-03-05 12:00:00', 'Scott.Houser@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Scott Houser', 'Scott.houser@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (162, 88.00, 88.00, 0.00, '2026-03-06 12:00:00', 'eduardochavez141088@gmail.com', 0, '', 'Confirmed', 'Warehouse Concord', 'Oscar Cedillos', 'Eduardochavez141088@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (163, 175.00, 175.00, 0.00, '2026-03-06 12:00:00', 'jhudson12356@gmail.com', 1, '', 'Fulfilled', 'Warehouse Gastonia', 'Brandon', 'Mike.Petty@stancilservice.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (164, 115.00, 115.00, 0.00, '2026-03-06 12:00:00', 'brian.mangum@stancilservices.com', 1, '', 'Fulfilled', 'Main', 'Brian Mangum', 'brian.mangum@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (165, 87.00, 87.00, 0.00, '2026-03-09 12:00:00', 'Eric.Juarez@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chris meek', 'Christopher.meek@stancilsercives.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (166, 21.00, 21.00, 0.00, '2026-03-09 12:00:00', 'Eric.Juarez@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chris meek', 'Christopher.meek@stancilsercives.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (167, 114.00, 114.00, 0.00, '2026-03-09 12:00:00', 'escobar.enmanuel06@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Josué Enmanuel Escobar Hernández', 'escobar.enmanuel06@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (168, 26.00, 26.00, 0.00, '2026-03-10 12:00:00', 'jamezqu01@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Johnson', 'casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (169, 20.00, 20.00, 0.00, '2026-03-10 12:00:00', 'Isaac.Rombach@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Roberto', 'Roberto');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (170, 91.00, 91.00, 0.00, '2026-03-10 12:00:00', 'juan1234jr90@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey', 'Juan1234jr90@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (171, 84.00, 84.00, 0.00, '2026-03-11 12:00:00', 'Hunter.Hinson@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chris Kluttz', 'Chris.kluttz@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (172, 28.00, 28.00, 0.00, '2026-03-11 12:00:00', 'Hunter.Hinson@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chris Kluttz', 'Chris.kluttz@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (173, 65.00, 65.00, 0.00, '2026-03-12 12:00:00', 'daniel.hdezguevara@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Joe Gaglioto', 'Truck9562@stancilpainting.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (174, 90.00, 90.00, 0.00, '2026-03-12 12:00:00', 'Jose.Alvarez@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Johnson', 'Casey.Johnson@StancilServices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (175, 18.00, 18.00, 0.00, '2026-03-12 12:00:00', 'isaiasgom120@outlook.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chuy', 'Isaiasgom120@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (176, 65.00, 65.00, 0.00, '2026-03-13 12:00:00', 'wilfredobrionescalero2018@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Wilfredo', 'wilfredobrionescalero2018@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (177, 192.00, 192.00, 0.00, '2026-03-13 12:00:00', 'dannymen14@hotmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Joe Galioto', 'Joe.galioto@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (178, 60.00, 60.00, 0.00, '2026-03-13 12:00:00', 'Kim.Carey@stancilservices.com', 0, '', 'Confirmed', 'Main', 'James Miller', 'james.miller@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (179, 18.00, 0.00, 18.00, '2026-03-16 12:00:00', 'flormaria1386@gmail.com', 1, '', 'Fulfilled', 'Operations', 'María Guadalupe flores', 'Floremaria1386@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (180, 60.00, 60.00, 0.00, '2026-03-20 12:00:00', 'efg3981@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Enrique Francisco gomez', 'efg3981@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (181, 24.00, 24.00, 0.00, '2026-03-20 12:00:00', 'warehouse.main@stancilservices.com', 0, '', 'Confirmed', 'Main', 'Jamaal', 'jamaal.bracey@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (182, 60.00, 60.00, 0.00, '2026-03-23 12:00:00', 'Joshua.Williams@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Johnson', 'Joshuawilliams05');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (183, 145.00, 145.00, 0.00, '2026-03-23 12:00:00', 'jamesdanderson04@gmail.com', 0, '', 'Confirmed', 'Warehouse Gastonia', 'Bryson cowart', 'Bryson.cowart@stancil.services.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (184, 12.00, 12.00, 0.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (185, 60.00, 60.00, 0.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (186, 26.00, 26.00, 0.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (187, 60.00, 60.00, 0.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (188, 108.00, 42.00, 66.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (189, 18.00, 0.00, 18.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (190, 15.00, 0.00, 15.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (191, 15.00, 0.00, 15.00, '2026-03-24 12:00:00', 'ezequielpineda2612@gmail.com', 1, '', 'Fulfilled', 'Commercial', 'Steve.savino@stancilservices.com', 'Steve savino');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (192, 130.00, 130.00, 0.00, '2026-03-26 12:00:00', 'alonzogarcia1398@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Chris klutz', 'Chris.kluttz@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (193, 286.00, 200.00, 86.00, '2026-03-27 12:00:00', '17046756090', 0, '', 'Confirmed', 'Warehouse Gastonia', 'Mike petty', 'Mike.petty@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (194, 120.00, 75.00, 45.00, '2026-03-28 12:00:00', 'Franklin.Rodriguez@stancilservices.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Franklin Rodríguez Muñoz', 'franedgar1991@icloud.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (195, 251.00, 200.00, 51.00, '2026-03-30 12:00:00', 'dylan.neagle2001@gmail.com', 1, '', 'Fulfilled', 'Warehouse Gastonia', 'Mike petty', 'Mike.petty@stancilsercives.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (196, 90.00, 90.00, 0.00, '2026-03-31 12:00:00', 'darlinrodriguez0101@gmail.com', 0, '', 'Confirmed', 'Warehouse Concord', 'Casey Johnson', 'Casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (197, 60.00, 60.00, 0.00, '2026-03-31 12:00:00', 'darlinrodriguez0101@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Johnson', 'Casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (198, 48.00, 48.00, 0.00, '2026-03-31 12:00:00', 'darlinrodriguez0101@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey Johnson', 'Casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (199, 72.00, 72.00, 0.00, '2026-04-01 12:00:00', 'gasparbrito989@gmail.com', 1, '', 'Fulfilled', 'Operations', 'Gaspar', 'Gasparbrito989@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (200, 84.00, 84.00, 0.00, '2026-04-01 12:00:00', 'Brian.Wilson@stancilservices.com', 0, '', 'Confirmed', 'Warehouse Concord', 'Roberto gabarrete', 'Roberto.gabarrete@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (201, 106.00, 106.00, 0.00, '2026-04-01 12:00:00', 'esfra423@gmail.com', 0, '', 'Confirmed', 'Warehouse Castle Hayne', 'Esther Brito', 'Esfra423@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (202, 145.00, 0.00, 145.00, '2026-04-02 12:00:00', 'afisher5544@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Gary', 'Gary.Gaylor&stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (203, 52.00, 52.00, 0.00, '2026-04-03 12:00:00', 'juan1234jr90@gmail.com', 1, '', 'Fulfilled', 'Warehouse Concord', 'Casey', 'Juan1234jr90@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (204, 114.00, 114.00, 0.00, '2026-04-06 12:00:00', 'cesar.molina@stancilservices.com', 0, '', 'Confirmed', 'Warehouse Concord', 'Casey Johnson', 'casey.johnson@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (205, 114.00, 114.00, 0.00, '2026-04-06 12:00:00', 'Jose.Rumbo@stancilservices.com', 0, '', 'Confirmed', 'Warehouse Concord', 'Hector Villatoro', 'Jose.Rumbo@stancilservices.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (206, 199.00, 199.00, 0.00, '2026-04-07 12:00:00', 'mojicaomar26@gmail.com', 0, '', 'Confirmed', 'Warehouse Concord', 'Jesus diaz hernandez', 'Mojicaomar26@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (207, 192.00, 192.00, 0.00, '2026-04-07 12:00:00', 'dinartejuancarlos04@gmail.com', 0, '', 'Confirmed', 'Commercial', 'Juan carlos Dinarte', 'Dinartejuancarlos04@gmail.com');
INSERT INTO orders (id, total_amount, credit_used, out_of_pocket, created_at, employee_email, order_fulfilled, order_notes, status, location_selected, manager_selected_name, manager_selected_email)
VALUES (208, 130.00, 130.00, 0.00, '2026-04-10 12:00:00', 'cs2034450@gmail.com', 0, '', 'Confirmed', 'Main', 'Rodrigo Merida', 'Rodrigo.merida@gmail.com');

INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (101, 34, 3, 20.00, '2025-12-22 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (102, 30, 10, 13.00, '2025-12-22 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (103, 38, 3, 26.00, '2026-01-02 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (104, 50, 3, 18.00, '2026-01-02 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (105, 33, 1, 15.00, '2026-01-02 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (106, 34, 1, 20.00, '2026-01-02 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (107, 50, 5, 18.00, '2026-01-06 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (108, 45, 1, 28.00, '2026-01-06 12:00:00', NULL, 0, '', 'white', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (108, 38, 4, 26.00, '2026-01-06 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (109, 34, 2, 20.00, '2026-01-07 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (110, 45, 1, 28.00, '2026-01-07 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (111, 34, 1, 20.00, '2026-01-09 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (111, 32, 1, 13.00, '2026-01-09 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (111, 30, 6, 13.00, '2026-01-09 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (111, 38, 2, 26.00, '2026-01-09 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (111, 50, 2, 18.00, '2026-01-09 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (112, 38, 0, 26.00, '2026-01-10 12:00:00', NULL, 0, 'Employee cancelled this item.', 'camo', 'Cancelled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (112, 50, 0, 18.00, '2026-01-10 12:00:00', NULL, 0, 'Employee cancelled this item.', 'camo', 'Cancelled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (113, 34, 2, 20.00, '2026-01-13 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (114, 7, 1, 50.00, '2026-01-14 12:00:00', NULL, 1, '', 'tan', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (114, 8, 1, 70.00, '2026-01-14 12:00:00', NULL, 1, '', 'N/A', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (114, 50, 3, 18.00, '2026-01-14 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (114, 38, 3, 26.00, '2026-01-14 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (115, 38, 2, 26.00, '2026-01-17 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (115, 50, 3, 18.00, '2026-01-17 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (115, 32, 4, 13.00, '2026-01-17 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (115, 29, 4, 12.00, '2026-01-17 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (116, 5, 1, 60.00, '2026-01-21 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (117, 38, 2, 26.00, '2026-01-21 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (117, 50, 1, 18.00, '2026-01-21 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (117, 33, 1, 15.00, '2026-01-21 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (118, 50, 1, 18.00, '2026-01-24 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (118, 38, 1, 26.00, '2026-01-24 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (119, 14, 1, 10.00, '2026-01-28 12:00:00', NULL, 1, '', 'black', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (120, 39, 1, 15.00, '2026-01-28 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (121, 38, 1, 26.00, '2026-01-29 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (121, 33, 1, 15.00, '2026-01-29 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (121, 34, 1, 20.00, '2026-01-29 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (121, 39, 1, 15.00, '2026-01-29 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (122, 34, 1, 20.00, '2026-02-06 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (123, 14, 1, 10.00, '2026-02-06 12:00:00', NULL, 1, '', 'black', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (123, 39, 1, 15.00, '2026-02-06 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (124, 29, 5, 12.00, '2026-02-11 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (125, 31, 5, 12.00, '2026-02-11 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (126, 31, 6, 12.00, '2026-02-11 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (127, 34, 3, 20.00, '2026-02-12 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (128, 50, 4, 18.00, '2026-02-12 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (129, 38, 2, 26.00, '2026-02-12 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (130, 46, 1, 28.00, '2026-02-12 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (131, 45, 1, 28.00, '2026-02-12 12:00:00', NULL, 1, '', 'blue lake', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (132, 38, 2, 26.00, '2026-02-12 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (133, 45, 1, 28.00, '2026-02-12 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (134, 45, 1, 28.00, '2026-02-12 12:00:00', NULL, 1, '', 'blue lake', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (135, 30, 4, 13.00, '2026-02-16 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (136, 34, 1, 20.00, '2026-02-17 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (136, 32, 3, 13.00, '2026-02-17 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (136, 29, 1, 12.00, '2026-02-17 12:00:00', NULL, 0, '', 'grey', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (137, 25, 1, 20.00, '2026-02-18 12:00:00', NULL, 1, '', 'N/A', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (137, 50, 6, 18.00, '2026-02-18 12:00:00', NULL, 1, 'He is missing 2 of shirts', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (138, 38, 7, 26.00, '2026-02-19 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (139, 46, 1, 28.00, '2026-02-19 12:00:00', NULL, 1, '', 'blue lake', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (140, 46, 1, 28.00, '2026-02-19 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (141, 32, 3, 13.00, '2026-02-19 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (142, 30, 3, 13.00, '2026-02-19 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (143, 30, 2, 13.00, '2026-02-19 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (144, 30, 4, 13.00, '2026-02-19 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (144, 29, 6, 12.00, '2026-02-19 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (145, 30, 5, 13.00, '2026-02-20 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (146, 29, 4, 12.00, '2026-02-23 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (146, 29, 1, 12.00, '2026-02-23 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (147, 45, 1, 28.00, '2026-02-23 12:00:00', NULL, 0, '', 'white', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (148, 39, 1, 15.00, '2026-02-23 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (149, 34, 3, 20.00, '2026-02-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (149, 32, 5, 13.00, '2026-02-24 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (150, 34, 2, 20.00, '2026-02-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (150, 29, 5, 12.00, '2026-02-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (150, 30, 5, 13.00, '2026-02-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (151, 29, 5, 12.00, '2026-02-25 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (151, 30, 2, 13.00, '2026-02-25 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (152, 25, 1, 20.00, '2026-02-25 12:00:00', NULL, 1, '', 'N/A', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (153, 29, 6, 12.00, '2026-03-02 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (154, 34, 2, 20.00, '2026-03-02 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (154, 50, 1, 18.00, '2026-03-02 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (154, 38, 1, 26.00, '2026-03-02 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (154, 41, 1, 18.00, '2026-03-02 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (154, 14, 1, 10.00, '2026-03-02 12:00:00', NULL, 1, '', 'black', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (155, 50, 3, 18.00, '2026-03-03 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (156, 29, 6, 12.00, '2026-03-03 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (157, 45, 2, 28.00, '2026-03-03 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (158, 46, 1, 28.00, '2026-03-04 12:00:00', NULL, 1, '', 'royal blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (159, 45, 1, 28.00, '2026-03-04 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (160, 38, 2, 26.00, '2026-03-05 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (160, 32, 2, 13.00, '2026-03-05 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (160, 40, 1, 15.00, '2026-03-05 12:00:00', NULL, 1, '', 'black', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (161, 50, 2, 21.00, '2026-03-05 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (161, 38, 1, 29.00, '2026-03-05 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (162, 29, 1, 12.00, '2026-03-06 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (162, 29, 1, 12.00, '2026-03-06 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (162, 45, 1, 28.00, '2026-03-06 12:00:00', NULL, 0, '', 'royal blue', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (162, 50, 1, 18.00, '2026-03-06 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (162, 41, 1, 18.00, '2026-03-06 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (163, 31, 7, 12.00, '2026-03-06 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (163, 32, 7, 13.00, '2026-03-06 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (164, 7, 1, 55.00, '2026-03-06 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (164, 5, 1, 60.00, '2026-03-06 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (165, 38, 3, 29.00, '2026-03-09 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (166, 50, 1, 21.00, '2026-03-09 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (167, 38, 2, 26.00, '2026-03-09 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (167, 50, 2, 18.00, '2026-03-09 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (167, 32, 2, 13.00, '2026-03-09 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (168, 32, 2, 13.00, '2026-03-10 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (169, 34, 1, 20.00, '2026-03-10 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (170, 38, 1, 26.00, '2026-03-10 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (170, 32, 5, 13.00, '2026-03-10 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (171, 50, 4, 21.00, '2026-03-11 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (172, 31, 2, 14.00, '2026-03-11 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (173, 30, 5, 13.00, '2026-03-12 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (174, 50, 3, 18.00, '2026-03-12 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (174, 31, 3, 12.00, '2026-03-12 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (175, 41, 1, 18.00, '2026-03-12 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (176, 30, 5, 13.00, '2026-03-13 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (177, 39, 3, 15.00, '2026-03-13 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (177, 38, 4, 26.00, '2026-03-13 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (177, 40, 2, 15.00, '2026-03-13 12:00:00', NULL, 1, '', 'black', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (177, 30, 1, 13.00, '2026-03-13 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (178, 29, 5, 12.00, '2026-03-13 12:00:00', NULL, 0, '', 'grey', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (179, 50, 1, 18.00, '2026-03-16 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (180, 5, 1, 60.00, '2026-03-20 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (181, 29, 2, 12.00, '2026-03-20 12:00:00', NULL, 0, '', 'white', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (182, 29, 5, 12.00, '2026-03-23 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (183, 50, 3, 18.00, '2026-03-23 12:00:00', NULL, 0, 'missing one', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (183, 31, 2, 12.00, '2026-03-23 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (183, 32, 1, 13.00, '2026-03-23 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (183, 38, 1, 26.00, '2026-03-23 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (183, 14, 1, 10.00, '2026-03-23 12:00:00', NULL, 1, '', 'black', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (183, 41, 1, 18.00, '2026-03-23 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (184, 29, 1, 12.00, '2026-03-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (185, 29, 5, 12.00, '2026-03-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (186, 32, 2, 13.00, '2026-03-24 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (187, 29, 5, 12.00, '2026-03-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (188, 29, 9, 12.00, '2026-03-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (189, 41, 1, 18.00, '2026-03-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (190, 33, 1, 15.00, '2026-03-24 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (191, 39, 1, 15.00, '2026-03-24 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (192, 38, 5, 26.00, '2026-03-26 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (193, 41, 2, 18.00, '2026-03-27 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (193, 38, 7, 26.00, '2026-03-27 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (193, 34, 2, 20.00, '2026-03-27 12:00:00', NULL, 0, '', 'safety green', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (193, 50, 1, 18.00, '2026-03-27 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (193, 17, 1, 10.00, '2026-03-27 12:00:00', NULL, 1, '', 'sandstone', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (194, 29, 10, 12.00, '2026-03-28 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (195, 38, 4, 26.00, '2026-03-30 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (195, 50, 4, 18.00, '2026-03-30 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (195, 31, 2, 12.00, '2026-03-30 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (195, 32, 2, 13.00, '2026-03-30 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (195, 32, 1, 13.00, '2026-03-30 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (195, 31, 1, 12.00, '2026-03-30 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (196, 50, 5, 18.00, '2026-03-31 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (197, 31, 5, 12.00, '2026-03-31 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (198, 31, 4, 12.00, '2026-03-31 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (199, 29, 6, 12.00, '2026-04-01 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (200, 50, 2, 18.00, '2026-04-01 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (200, 31, 3, 12.00, '2026-04-01 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (200, 31, 1, 12.00, '2026-04-01 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (201, 38, 1, 26.00, '2026-04-01 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (201, 30, 3, 13.00, '2026-04-01 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (201, 46, 1, 28.00, '2026-04-01 12:00:00', NULL, 0, '', 'grey', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (201, 30, 1, 13.00, '2026-04-01 12:00:00', NULL, 1, '', 'white', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (202, 41, 1, 18.00, '2026-04-02 12:00:00', NULL, 1, '', 'grey', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (202, 50, 3, 18.00, '2026-04-02 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (202, 31, 3, 12.00, '2026-04-02 12:00:00', NULL, 1, '', 'blue', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (202, 31, 1, 12.00, '2026-04-02 12:00:00', NULL, 1, '', 'safety green', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (202, 17, 1, 10.00, '2026-04-02 12:00:00', NULL, 1, '', 'sandstone', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (202, 39, 1, 15.00, '2026-04-02 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (203, 38, 2, 26.00, '2026-04-03 12:00:00', NULL, 1, '', 'camo', 'Fulfilled');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (204, 38, 3, 26.00, '2026-04-06 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (204, 50, 2, 18.00, '2026-04-06 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (205, 38, 3, 26.00, '2026-04-06 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (205, 50, 2, 18.00, '2026-04-06 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (206, 50, 1, 18.00, '2026-04-07 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (206, 31, 1, 12.00, '2026-04-07 12:00:00', NULL, 0, '', 'blue', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (206, 5, 1, 60.00, '2026-04-07 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (206, 7, 1, 55.00, '2026-04-07 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (206, 45, 1, 28.00, '2026-04-07 12:00:00', NULL, 0, '', 'grey', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (206, 38, 1, 26.00, '2026-04-07 12:00:00', NULL, 0, '', 'camo', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (207, 29, 16, 12.00, '2026-04-07 12:00:00', NULL, 0, '', 'safety green', 'Confirmed');
INSERT INTO order_items (order_id, product_id, quantity, price, created_at, product_size, item_fulfilled, order_item_notes, color, status)
VALUES (208, 32, 10, 13.00, '2026-04-10 12:00:00', NULL, 0, '', 'blue', 'Confirmed');
