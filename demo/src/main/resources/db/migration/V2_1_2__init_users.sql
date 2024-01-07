insert into pharmacy_user (user_id, user_name, email, password, name, active)
values (1, 'admin', 'admin@pharmacy.pl',
        '$2a$12$ExJ0e5U2ACPbrgy8fhRss.8CVIv6O1F3Ltg1CxJCbS6LnvyrBvJgG', 'Admin', true);

insert into pharmacy_user (user_id, user_name, email, password, name, active)
values (2, 'user1', 'user1@pharmacy.pl',
        '$2a$12$Kb79b.Uw8/Q28okfEo/dIeF7L5ayQnEZgLDxSj.S/.mYZ.4YlHQoq', 'User1', true);

insert into pharmacy_role (role_id, role)
values (1, 'ADMIN'),
       (2, 'USER');

insert into pharmacy_user_role (user_id, role_id)
values (1, 1),
       (1, 2);
insert into pharmacy_user_role (user_id, role_id)
values (2, 2);



