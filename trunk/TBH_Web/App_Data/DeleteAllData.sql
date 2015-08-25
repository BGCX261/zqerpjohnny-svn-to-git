ALTER TABLE aspnet_Applications NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_Membership NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_Paths NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_PersonalizationAllUsers NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_PersonalizationPerUser NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_Profile NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_Roles NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_SchemaVersions NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_Users NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_UsersInRoles NOCHECK CONSTRAINT ALL
ALTER TABLE aspnet_WebEvent_Events NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Articles NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Categories NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Comments NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Forums NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Newsletters NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_PollOptions NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Polls NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Posts NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Departments NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Products NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_Orders NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_OrderStatuses NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_OrderItems NOCHECK CONSTRAINT ALL
ALTER TABLE tbh_ShippingMethods NOCHECK CONSTRAINT ALL

DELETE FROM aspnet_Applications
DELETE FROM aspnet_Membership
DELETE FROM aspnet_Paths
DELETE FROM aspnet_PersonalizationAllUsers
DELETE FROM aspnet_PersonalizationPerUser
DELETE FROM aspnet_Profile
DELETE FROM aspnet_Roles
DELETE FROM aspnet_SchemaVersions
DELETE FROM aspnet_Users
DELETE FROM aspnet_UsersInRoles
DELETE FROM aspnet_WebEvent_Events
DELETE FROM tbh_Articles
DELETE FROM tbh_Categories
DELETE FROM tbh_Comments
DELETE FROM tbh_Departments
DELETE FROM tbh_Forums
DELETE FROM tbh_Newsletters
DELETE FROM tbh_OrderItems
DELETE FROM tbh_Orders
DELETE FROM tbh_OrderStatuses
DELETE FROM tbh_PollOptions
DELETE FROM tbh_Polls
DELETE FROM tbh_Posts
DELETE FROM tbh_Products
DELETE FROM tbh_ShippingMethods

ALTER TABLE aspnet_Applications CHECK CONSTRAINT ALL
ALTER TABLE aspnet_Membership CHECK CONSTRAINT ALL
ALTER TABLE aspnet_Paths CHECK CONSTRAINT ALL
ALTER TABLE aspnet_PersonalizationAllUsers CHECK CONSTRAINT ALL
ALTER TABLE aspnet_PersonalizationPerUser CHECK CONSTRAINT ALL
ALTER TABLE aspnet_Profile CHECK CONSTRAINT ALL
ALTER TABLE aspnet_Roles CHECK CONSTRAINT ALL
ALTER TABLE aspnet_SchemaVersions CHECK CONSTRAINT ALL
ALTER TABLE aspnet_Users CHECK CONSTRAINT ALL
ALTER TABLE aspnet_UsersInRoles CHECK CONSTRAINT ALL
ALTER TABLE aspnet_WebEvent_Events CHECK CONSTRAINT ALL
ALTER TABLE tbh_Articles CHECK CONSTRAINT ALL
ALTER TABLE tbh_Categories CHECK CONSTRAINT ALL
ALTER TABLE tbh_Comments CHECK CONSTRAINT ALL
ALTER TABLE tbh_Forums CHECK CONSTRAINT ALL
ALTER TABLE tbh_Newsletters CHECK CONSTRAINT ALL
ALTER TABLE tbh_PollOptions CHECK CONSTRAINT ALL
ALTER TABLE tbh_Polls CHECK CONSTRAINT ALL
ALTER TABLE tbh_Posts CHECK CONSTRAINT ALL
ALTER TABLE tbh_Departments CHECK CONSTRAINT ALL
ALTER TABLE tbh_Products CHECK CONSTRAINT ALL
ALTER TABLE tbh_Orders CHECK CONSTRAINT ALL
ALTER TABLE tbh_OrderStatuses CHECK CONSTRAINT ALL
ALTER TABLE tbh_OrderItems CHECK CONSTRAINT ALL
ALTER TABLE tbh_ShippingMethods CHECK CONSTRAINT ALL