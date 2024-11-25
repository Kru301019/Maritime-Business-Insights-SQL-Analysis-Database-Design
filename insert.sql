INSERT INTO country(country_name)
VALUES ('England');


INSERT INTO country(country_name)
VALUES ('Wales');


INSERT INTO country(country_name)
VALUES ('Scotland');


INSERT INTO country(country_name)
VALUES ('Ireland');


INSERT INTO country(country_name)
VALUES ('Northern Ireland');


INSERT INTO city(country_id, city_name)
VALUES (1, 'London');


INSERT INTO city(country_id, city_name)
VALUES (2, 'Cardiff');


INSERT INTO city(country_id, city_name)
VALUES (3, 'Edinburgh');


INSERT INTO city(country_id, city_name)
VALUES (4, 'Dublin');


INSERT INTO city(country_id, city_name)
VALUES (5, 'Belfast');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (1, 'XR65 4CU', '77511 Forest Run Street', 'Room 450');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (1, 'MT57 5JD', '7986 Pankratz Hill', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (1, 'GP98 6JH', '8 David Terrace', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (1, 'OF52 9UH', '5625 High Crossing Center', 'Suite 96');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (1, 'GJ47 8WQ', '60 Maywood Alley', 'PO Box 3802');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (2, 'AK07 2MZ', '2 Vidon Hill', 'Suite 44');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (2, 'SK71 6UC', '097 Nevada Junction', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (2, 'ZG15 6KE', '3016 Carioca Hill', 'PO Box 94254');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (2, 'WE10 6NB', '3867 Fremont Place', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (2, 'LS89 7JF', '035 Meadow Ridge Hill', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (3, 'GQ17 0IX', '197 Bartillon Point', 'Room 914');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (3, 'OI19 2NP', '38828 Morrow Road', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (3, 'NI19 7ON', '85062 Vermont Center', 'Suite 7');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (3, 'JE40 4MX', '66367 Carberry Hill', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (3, 'CS40 7EN', '191 Eggendart Trail', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (4, 'NE66 0HO', '24217 Charing Cross Park', 'Suite 65');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (4, 'ME39 1DN', '41041 Schlimgen Pass', 'Room 1423');


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (4, 'YK00 0EX', '42 Lotheville Crossing', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (4, 'EP49 0EX', '04341 Corscot Plaza', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (4, 'VI09 0DB', '33004 Colorado Street', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (1, 'XR21 5TF', '819 Lighthouse Bay Circle', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (2, 'LE65 0FT', '64889 Dorton Road', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (3, 'OV67 8VH', '21376 Burning Wood Way', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (4, 'YW97 2OB', '64092 Novick Center', NULL);


INSERT INTO "address" (city_id,
                       address_postcode,
                       address_one,
                       address_two)
VALUES (5, 'DU48 7AN', '2526 Farragut Avenue', NULL);


INSERT INTO facilities(facilities_name)
VALUES ('Warehouse');


INSERT INTO facilities(facilities_name)
VALUES ('Dry Dock');


INSERT INTO facilities(facilities_name)
VALUES ('Wet Slip');


INSERT INTO facilities(facilities_name)
VALUES ('Maintenance');


INSERT INTO facilities(facilities_name)
VALUES ('Sail Repair');


INSERT INTO facilities(facilities_name)
VALUES ('Fuel Station');


INSERT INTO facilities(facilities_name)
VALUES ('Hoist');


INSERT INTO facilities(facilities_name)
VALUES ('Office');


INSERT INTO facilities(facilities_name)
VALUES ('Electrical');


INSERT INTO facilities(facilities_name)
VALUES ('Painting');


INSERT INTO yard(address_id, yard_size, yard_name, yard_tel)
VALUES (21, 50000, 'Yard 1', '01278 24444');


INSERT INTO yard(address_id, yard_size, yard_name, yard_tel)
VALUES (22, 25000, 'Yard 2', '01278 12345');


INSERT INTO yard(address_id, yard_size, yard_name, yard_tel)
VALUES (23, 65000, 'Yard 3', '01278 98765');


INSERT INTO yard(address_id, yard_size, yard_name, yard_tel)
VALUES (24, 20000, 'Yard 4', '01278 45810');


INSERT INTO yard(address_id, yard_size, yard_name, yard_tel)
VALUES (25, 75000, 'Yard 5', '01278 14741');


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (1, 1);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (1, 3);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (1, 4);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (1, 5);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (1, 9);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (2, 1);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (2, 2);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (2, 3);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (2, 4);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (2, 5);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (3, 1);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (3, 2);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (3, 3);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (3, 4);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (3, 5);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (3, 6);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (3, 7);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (4, 1);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (4, 8);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (4, 9);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 1);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 2);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 3);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 4);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 5);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 6);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 7);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 8);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 9);


INSERT INTO yard_facilities(yard_id, facilities_id)
VALUES (5, 10);


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (1, 'Jermaine', NULL, 'Belli', '314-107-7002', '169-167-7418', 'tbelli0@apple.com', 'vbelli0@answers.com', TRUE, 'Brakus and Sons');


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (2, 'Bria', 'Pearline', 'Esberger', '502-242-3055', '754-816-0289', 'pesberger1@purevolume.com', NULL, FALSE, NULL);


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (3, 'Eustacia', NULL, 'Colthurst', '396-142-6471', NULL, 'ccolthurst2@4shared.com', 'acolthurst2@surveymonkey.com', FALSE, NULL);


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (4, 'Claudina', 'Wally', 'Sisneros', '949-593-0595', '843-468-8971', 'wsisneros3@yolasite.com', NULL, FALSE, NULL);


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (5, 'Darn', NULL, 'Aronsohn', '944-508-0133', NULL, 'earonsohn4@dailymotion.com', 'laronsohn4@odnoklassniki.ru', FALSE, NULL);


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (6, 'Barrie', NULL, 'Claypool', '953-284-4314', NULL, 'eclaypool5@devhub.com', NULL, TRUE, 'Marquardt Inc');


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (7, 'Dania', 'Phineas', 'Leamon', '115-150-2084', '415-994-6869', 'pleamon6@wufoo.com', NULL, FALSE, NULL);


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (8, 'Fair', 'Tedd', 'Blick', '712-313-4917', NULL, 'tblick7@facebook.com', NULL, FALSE, NULL);


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (9, 'Nelly', 'Maren', 'Baunton', '555-178-1885', '679-848-2165', 'mbaunton8@hexun.com', 'mbaunton8@mapy.cz', TRUE, 'Zboncak-Schulist');


INSERT INTO customer (address_id, customer_fname, customer_mname, customer_lname, customer_tel1, customer_tel2, customer_email1, customer_email2, customer_priv, customer_represent_company)
VALUES (10, 'Norene', NULL, 'Jopling', '936-179-5211', '331-106-6422', 'bjopling9@hud.gov', 'djopling9@ebay.co.uk', FALSE, NULL);


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (11, 'Kylie', NULL, 'Leyzell', '220-677-1576', 'kleyzell0@1und1.de');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (12, 'Clemmy', NULL, 'Berryann', '878-753-8536', 'kberryann1@multiply.com');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (13, 'Glynis', NULL, 'Cropper', '359-461-4372', 'scropper2@google.com');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (14, 'Boris', NULL, 'Davley', '671-331-8527', 'bdavley3@ucoz.com');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (15, 'Jehanna', NULL, 'Romeuf', '446-904-4406', 'sromeuf4@php.net');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (16, 'Ogdan', NULL, 'O''Heffernan', '986-848-1846', 'doheffernan5@unesco.org');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (17, 'Anselm', NULL, 'Dimmock', '738-642-6496', 'ldimmock6@sun.com');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (18, 'Shawn', NULL, 'Scorah', '588-384-5299', 'gscorah7@studiopress.com');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (19, 'Mariele', 'Chloe', 'Cuddon', '199-722-6273', 'ccuddon8@businessinsider.com');


INSERT INTO staff (address_id, staff_fname, staff_mname, staff_lname, staff_tel, staff_email)
VALUES (20, 'Florri', 'Tamar', 'Stretton', '710-211-9533', 'tstretton9@china.com.cn');


INSERT INTO role(role_name)
VALUES ('MANAGER');


INSERT INTO role(role_name)
VALUES ('GLASS FIBRE SPECIALIST');


INSERT INTO role(role_name)
VALUES ('ENGINE TECHNICIAN');


INSERT INTO role(role_name)
VALUES ('GENERAL');


INSERT INTO role(role_name)
VALUES ('ELECTRICIAN');


INSERT INTO role(role_name)
VALUES ('TECHNICIAN');


INSERT INTO role(role_name)
VALUES ('HULL SPECIALIST');


INSERT INTO role(role_name)
VALUES ('CRANE OPERATOR');


INSERT INTO staff_role(staff_id, role_id)
VALUES (1, 1);


INSERT INTO staff_role(staff_id, role_id)
VALUES (1, 2);


INSERT INTO staff_role(staff_id, role_id)
VALUES (1, 3);


INSERT INTO staff_role(staff_id, role_id)
VALUES (2, 8);


INSERT INTO staff_role(staff_id, role_id)
VALUES (2, 7);


INSERT INTO staff_role(staff_id, role_id)
VALUES (2, 2);


INSERT INTO staff_role(staff_id, role_id)
VALUES (3, 4);


INSERT INTO staff_role(staff_id, role_id)
VALUES (4, 6);


INSERT INTO staff_role(staff_id, role_id)
VALUES (5, 4);


INSERT INTO staff_role(staff_id, role_id)
VALUES (5, 7);


INSERT INTO staff_role(staff_id, role_id)
VALUES (6, 2);


INSERT INTO staff_role(staff_id, role_id)
VALUES (7, 5);


INSERT INTO staff_role(staff_id, role_id)
VALUES (8, 7);


INSERT INTO staff_role(staff_id, role_id)
VALUES (8, 2);


INSERT INTO staff_role(staff_id, role_id)
VALUES (9, 3);


INSERT INTO staff_role(staff_id, role_id)
VALUES (10, 4);


INSERT INTO staff_role(staff_id, role_id)
VALUES (10, 5);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (1, 1);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (1, 2);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (2, 1);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (3, 5);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (4, 4);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (5, 5);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (5, 1);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (6, 4);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (7, 1);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (8, 5);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (8, 1);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (9, 1);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (9, 2);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (9, 3);


INSERT INTO staff_yard(staff_id, yard_id)
VALUES (10, 1);


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Von and Sons', 'Fabaceae', 10.69, 5.76, 18.18, 'PETROL', 'XML', 179, 'V-SHAPED', 7, 'npeter0@dedecms.com', '754-488-9881');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Klein and Sons', 'Sparganiaceae', 5.37, 18.81, 17.43, 'HYBRID', 'IWA', 106, 'FLAT-BOTTOM', 17, 'jcarah1@epa.gov', '177-351-3312');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Torp, Fisher and Murazik', 'Primulaceae', 17.82, 12.52, 11.68, 'DIESEL', 'LTG', 129, 'MULTI', 19, 'gespinha2@themeforest.net', '798-955-1699');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Bauch, Murphy and Erdman', 'Crassulaceae', 9.23, 11.99, 17.06, 'PETROL', 'SWN', 18, 'MULTI', 3, 'yludl3@blogs.com', '634-379-8871');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('MacGyver and Sons', 'Parmeliaceae', 19.14, 17.42, 10.75, 'HYBRID', 'MXE', 171, 'ROUND-BOTTOM', 5, 'riannello4@simplemachines.org', '288-803-9864');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Christiansen, Torphy and Lang', 'Fabaceae', 5.62, 7.52, 17.5, 'PETROL', 'TOJ', 191, 'MULTI', 4, 'tpallis5@buzzfeed.com', '760-897-1749');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Rodriguez-Kirlin', 'Myrtaceae', 11.77, 22.45, 14.71, 'PETROL', 'KMW', 133, 'V-SHAPED', 3, 'causten6@nasa.gov', '942-508-5552');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Sauer Inc', 'Onagraceae', 15.37, 8.89, 19.8, 'DIESEL', 'KTE', 195, 'V-SHAPED', 9, 'kgiorgetti7@digg.com', '849-908-5176');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Feest, Boehm and Schultz', 'Poaceae', 14.67, 20.02, 15.69, 'PETROL', 'TAW', 28, 'MULTI', 4, 'bfiggess8@opera.com', '189-470-4431');


INSERT INTO manufacture (manufacture_name, manufacture_model, manufacture_height, manufacture_length, manufacture_width, manufacture_fuel, manufacture_engine, manufacture_bhp, manufacture_hull, manufacture_capacity, manufacture_email, manufacture_phone)
VALUES ('Yost LLC', 'Casuarinaceae', 13.38, 6.36, 13.74, 'HYBRID', 'BDA', 50, 'FLAT-BOTTOM', 15, 'kpuddephatt9@disqus.com', '397-854-7352');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (1, 1, 2, 'WAULFAFH-9DN475697', '2005-08-10', TRUE, '2021-11-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (2, 2, 1, '3VWC17AU-6FM469990', '1991-11-13', FALSE, '2021-12-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (3, 3, 2, '1FTSW3B5-6AE752725', '2001-12-08', FALSE, '2022-01-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (4, 4, 3, 'WBAGL635-35D202019', '1988-06-11', TRUE, '2022-02-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (5, 5, 3, '1GD22ZCG-3CZ329528', '2001-09-22', FALSE, '2022-03-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (6, 6, 2, '4T1BD1EB-4EU973939', '2004-11-12', TRUE, '2022-04-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (7, 7, 1, '1FTEW1CW-9AK364012', '2008-10-16', TRUE, '2022-05-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (8, 8, 3, '1FAHP3HN-3AW561264', '2019-05-17', FALSE, '2022-06-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (9, 9, 2, '5UXFG2C5-0E0036379', '1996-04-14', TRUE, '2022-07-01');


INSERT INTO boat (customer_id, manufacture_id, country_id, boat_mic, boat_built, boat_oem, boat_registration)
VALUES (10, 10, 1, '3N1CN7AP-3EK123345', '2008-12-07', FALSE, '2022-08-01');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (1, 1, 67988, 'CHECKUP');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (2, 1, 2361, 'SERVICE');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (3, 1, 70794, 'REPAIR');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (4, 2, 98810, 'OTHER');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (5, 2, 86405, 'REPAIR');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (6, 3, 95640, 'CHECKUP');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (7, 4, NULL, 'SERVICE');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (8, 5, 41240, 'REPAIR');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (9, 1, 25807, 'REPAIR');


INSERT INTO service (boat_id, yard_id, service_cost, service_type)
VALUES (10, 1, 84374, 'OTHER');


INSERT INTO staff_service (staff_id, service_id)
VALUES (2, 1);


INSERT INTO staff_service (staff_id, service_id)
VALUES (1, 1);


INSERT INTO staff_service (staff_id, service_id)
VALUES (4, 4);


INSERT INTO staff_service (staff_id, service_id)
VALUES(1, 4);


INSERT INTO staff_service (staff_id, service_id)
VALUES (3, 1);


INSERT INTO staff_service (staff_id, service_id)
VALUES (4, 1);


INSERT INTO staff_service (staff_id, service_id)
VALUES (5, 2);


INSERT INTO staff_service (staff_id, service_id)
VALUES (6, 2);


INSERT INTO staff_service (staff_id, service_id)
VALUES (7, 2);


INSERT INTO staff_service (staff_id, service_id)
VALUES (5, 3);


INSERT INTO staff_service (staff_id, service_id)
VALUES (10, 3);


INSERT INTO staff_service (staff_id, service_id)
VALUES (4, 4);


INSERT INTO staff_service (staff_id, service_id)
VALUES (5, 4);


INSERT INTO staff_service (staff_id, service_id)
VALUES (9, 4);


INSERT INTO staff_service (staff_id, service_id)
VALUES (10, 5);


INSERT INTO staff_service (staff_id, service_id)
VALUES (1, 6);


INSERT INTO staff_service (staff_id, service_id)
VALUES (2, 6);


INSERT INTO staff_service (staff_id, service_id)
VALUES (8, 8);


INSERT INTO staff_service (staff_id, service_id)
VALUES (1, 8);


INSERT INTO staff_service (staff_id, service_id)
VALUES (9, 8);


INSERT INTO staff_service (staff_id, service_id)
VALUES (1, 9);


INSERT INTO staff_service (staff_id, service_id)
VALUES (10, 10);


INSERT INTO staff_service (staff_id, service_id)
VALUES (4, 10);


INSERT INTO staff_service (staff_id, service_id)
VALUES(9, 1);


INSERT INTO staff_service (staff_id, service_id)
VALUES(9, 2);

INSERT INTO staff_service (staff_id, service_id)
VALUES(9, 3);


INSERT INTO staff_service (staff_id, service_id)
VALUES(9, 4);

INSERT INTO staff_service (staff_id, service_id)
VALUES(9, 5);


INSERT INTO staff_service (staff_id, service_id)
VALUES(9, 6);


INSERT INTO staff_service (staff_id, service_id)
VALUES(9, 7);


INSERT INTO history(service_id, history_type, history_date)
VALUES (1, 'BOOKED', '2022-02-11');


INSERT INTO history(service_id, history_type, history_date)
VALUES (1, 'ONGOING', '2022-05-11');


INSERT INTO history(service_id, history_type, history_date)
VALUES (1, 'COMPLETE', '2022-05-11');


INSERT INTO history(service_id, history_type, history_date)
VALUES (2, 'BOOKED', '2023-05-11');


INSERT INTO history(service_id, history_type, history_date)
VALUES (2, 'ONGOING', '2023-05-11');


INSERT INTO history(service_id, history_type, history_date)
VALUES (3, 'BOOKED', '2021-03-24');


INSERT INTO history(service_id, history_type, history_date)
VALUES (3, 'ONGOING', '2021-03-29');

-- TRIGGER TEST
-- INSERT INTO history(service_id, history_type, history_date)
-- VALUES (3, 'COMPLETE', '2021-04-04');