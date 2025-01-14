USE [Final_Database]
GO
INSERT [dbo].[Degrees] ([id], [degree_name], [created_at], [updated_at]) VALUES (N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'Thạc sĩ', CAST(N'2025-01-13T21:38:41.0935771' AS DateTime2), CAST(N'2025-01-13T21:38:41.0936247' AS DateTime2))
GO
INSERT [dbo].[Offices] ([id], [office_id], [office_name], [address], [phone], [email], [office_parent], [created_at], [updated_at]) VALUES (N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'HAU-001', N'Khoa CNTT', N'Trường Đại học Kiến Trúc Hà Nội', NULL, NULL, N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T21:39:22.0622975' AS DateTime2), CAST(N'2025-01-13T21:39:22.0623629' AS DateTime2))
GO
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at]) VALUES (N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', N'754566a3-0024-485a-8fb4-3d976132e12a', N'TÉt ddfđ', CAST(N'2025-01-06T00:00:00.0000000' AS DateTime2), N'Nam', N'HM', NULL, NULL, NULL, N'0123456789', N'ducthang191102@gmail.com', N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'2025', NULL, NULL, NULL, NULL, N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T22:28:25.5712698' AS DateTime2), CAST(N'2025-01-13T22:28:25.5713234' AS DateTime2))
INSERT [dbo].[Scientists] ([id], [user_id], [profile_id], [profile_name], [birthday], [gender], [birth_place], [address], [office_phone], [house_phone], [phone], [email], [degree_id], [nvestiture], [scientific_title], [research_major], [research_title], [research_position], [office_id], [address_office], [created_at], [updated_at]) VALUES (N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'771aa184-a15e-4f80-826d-eae63bf70379', N'44ae3ec6-e278-4213-af7a-e5218b83492d', N'Thang', CAST(N'2025-01-08T00:00:00.0000000' AS DateTime2), N'Nam', N'HA ', NULL, NULL, NULL, N'0123456789', N'user@gmail.com', N'97848a2e-d1fa-4535-832a-4f3814d4b44c', N'2025', NULL, NULL, NULL, NULL, N'3af32e6c-1b06-4a19-a568-120e1eb54f34', N'Trường Đại học Kiến Trúc Hà Nội', CAST(N'2025-01-13T21:51:57.1739272' AS DateTime2), CAST(N'2025-01-13T21:51:57.1739715' AS DateTime2))
GO
INSERT [dbo].[Trainings] ([id], [training_name], [created_at], [updated_at]) VALUES (N'860005c8-d072-4564-83c9-7bdf68b47689', N'Test', CAST(N'2025-01-13T22:07:37.4437086' AS DateTime2), CAST(N'2025-01-13T22:07:37.4437596' AS DateTime2))
GO
INSERT [dbo].[Books] ([id], [book_name], [created_at], [updated_at]) VALUES (N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'Sách tham khảo', CAST(N'2025-01-13T22:06:58.0199366' AS DateTime2), CAST(N'2025-01-13T22:06:58.0200070' AS DateTime2))
GO
INSERT [dbo].[Curriculums] ([id], [name], [year], [publisher], [book_id], [training_id], [created_at], [updated_at]) VALUES (N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'ssss', 2025, N'ssseeee', N'3ed00c66-dbcd-420a-880f-675703bbcc3d', N'860005c8-d072-4564-83c9-7bdf68b47689', CAST(N'2025-01-13T22:20:40.0358146' AS DateTime2), CAST(N'2025-01-13T22:20:40.0358790' AS DateTime2))
GO
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'1dccf515-dd00-4aae-bf07-4d25b29673c2', N'Thư ký', N'topic', CAST(N'2025-01-13T21:38:07.3174165' AS DateTime2), CAST(N'2025-01-13T21:38:07.3174180' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'302d6d62-6ef3-485d-9512-c72284060f88', N'Chủ biên', N'curriculum', CAST(N'2025-01-13T22:04:59.6683243' AS DateTime2), CAST(N'2025-01-13T22:04:59.6686102' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'3527fddd-0cad-436d-832b-e811e3b6398c', N'Đồng tác giả', N'magazine', CAST(N'2025-01-13T22:06:15.2835040' AS DateTime2), CAST(N'2025-01-13T22:06:15.2835051' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'3fbc7c67-725c-4a81-a1ed-c29b19b4f599', N'Thành viên dự án', N'topic', CAST(N'2025-01-13T21:38:22.3093254' AS DateTime2), CAST(N'2025-01-13T21:38:22.3093273' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'71610553-bba4-40c0-9e9c-f750d4a7e13c', N'Tác giả đứng đầu', N'magazine', CAST(N'2025-01-13T22:05:50.6195937' AS DateTime2), CAST(N'2025-01-13T22:05:50.6195953' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'90f5e838-49b6-44bb-b368-f309a818acfa', N'Đồng tác giả', N'curriculum', CAST(N'2025-01-13T22:05:34.6596201' AS DateTime2), CAST(N'2025-01-13T22:05:34.6596215' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'b380fc1f-7def-4dd4-8360-7c44a52af2ff', N'Tác giả liên hệ', N'magazine', CAST(N'2025-01-13T22:06:04.1956849' AS DateTime2), CAST(N'2025-01-13T22:06:04.1956865' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'bef60ca1-d83e-4e94-9109-c1b4fe28909d', N'Tác giả', N'curriculum', CAST(N'2025-01-13T22:05:20.2995242' AS DateTime2), CAST(N'2025-01-13T22:05:20.2995259' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', N'Chủ nhiệm dự án', N'topic', CAST(N'2025-01-13T21:37:55.4228413' AS DateTime2), CAST(N'2025-01-13T21:37:55.4231655' AS DateTime2))
INSERT [dbo].[Roles] ([id], [role_name], [role_type], [created_at], [updated_at]) VALUES (N'd4a2e404-6819-4aeb-bcce-b09ccd1b850c', N'Đồng chủ biên', N'curriculum', CAST(N'2025-01-13T22:05:10.5557995' AS DateTime2), CAST(N'2025-01-13T22:05:10.5558020' AS DateTime2))
GO
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'7a21b797-1c09-46b1-8183-ab6e78e27af8', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'90f5e838-49b6-44bb-b368-f309a818acfa', NULL, N'Chờ duyệt', CAST(N'2025-01-13T15:31:12.0842054' AS DateTime2), CAST(N'2025-01-13T15:31:12.0842494' AS DateTime2))
INSERT [dbo].[ScientistCurriculumRoles] ([id], [scientist_id], [curriculum_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'e1742873-97bc-4724-8868-5f8ce0effb0d', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'96b1c773-4680-46b6-893d-9aa8cc111d6a', N'bef60ca1-d83e-4e94-9109-c1b4fe28909d', NULL, N'Đã tham gia', CAST(N'2025-01-13T15:20:40.0571897' AS DateTime2), CAST(N'2025-01-13T15:20:40.0572324' AS DateTime2))
GO
INSERT [dbo].[Papers] ([id], [paper_name], [created_at], [updated_at]) VALUES (N'8c83e982-ea73-4d5f-894c-a70134743856', N'Tạ chí tuổi trẻ', CAST(N'2025-01-13T15:08:00.1728340' AS DateTime2), CAST(N'2025-01-13T15:08:00.1728342' AS DateTime2))
GO
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at]) VALUES (N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'tét', 2025, N'yyyy', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-01-13T22:20:25.6517886' AS DateTime2), CAST(N'2025-01-13T22:20:25.6518456' AS DateTime2))
INSERT [dbo].[Magazines] ([id], [magazine_name], [year], [journal], [paper_id], [created_at], [updated_at]) VALUES (N'd6288359-9d71-4e21-a134-31b395727eb0', N'demo', 2025, N'new', N'8c83e982-ea73-4d5f-894c-a70134743856', CAST(N'2025-01-14T09:55:50.4595363' AS DateTime2), CAST(N'2025-01-14T10:01:36.4213188' AS DateTime2))
GO
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'6715de41-6e15-40eb-920f-e281fa0e72e3', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'894d0a14-1209-47bd-a0d8-5021c999d6e5', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-01-13T15:20:25.6783604' AS DateTime2), CAST(N'2025-01-13T15:20:25.6784001' AS DateTime2), NULL, NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'70127e3b-99f7-4579-9af6-c7a50d2a922c', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'd6288359-9d71-4e21-a134-31b395727eb0', N'3527fddd-0cad-436d-832b-e811e3b6398c', CAST(N'2025-01-14T03:51:28.0760504' AS DateTime2), CAST(N'2025-01-14T10:01:36.5607787' AS DateTime2), N'Bị từ chối', NULL)
INSERT [dbo].[ScientistMagazineRoles] ([id], [scientist_id], [magazine_id], [role_id], [created_at], [updated_at], [requestStatus], [status]) VALUES (N'e66268b2-1039-4d53-85c7-7ab1878588ef', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'd6288359-9d71-4e21-a134-31b395727eb0', N'71610553-bba4-40c0-9e9c-f750d4a7e13c', CAST(N'2025-01-14T02:55:50.5665146' AS DateTime2), CAST(N'2025-01-14T02:55:50.5665466' AS DateTime2), N'Đã tham gia', NULL)
GO
INSERT [dbo].[Proposes] ([id], [propose_name], [created_at], [updated_at]) VALUES (N'78178189-d48a-49d4-a1d5-a061ac5eb1a1', N'Test', CAST(N'2025-01-13T22:07:12.6442462' AS DateTime2), CAST(N'2025-01-13T22:07:12.6443005' AS DateTime2))
GO
INSERT [dbo].[Offers] ([id], [year], [offer_name], [propose_id], [note], [status], [created_at], [updated_at]) VALUES (N'43325be8-e91a-4a1d-a656-99d58ee5a871', 2024, N'Tesst', N'78178189-d48a-49d4-a1d5-a061ac5eb1a1', NULL, N'Chưa duyệt', CAST(N'2025-01-13T22:18:09.9645187' AS DateTime2), CAST(N'2025-01-13T22:18:09.9645775' AS DateTime2))
GO
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'2f1e91d5-4101-4b08-911f-92c214293416', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'43325be8-e91a-4a1d-a656-99d58ee5a871', N'3fbc7c67-725c-4a81-a1ed-c29b19b4f599', NULL, N'Chờ duyệt', CAST(N'2025-01-13T15:31:00.7737598' AS DateTime2), CAST(N'2025-01-13T15:31:00.7737979' AS DateTime2))
INSERT [dbo].[ScientistOfferRoles] ([id], [scientist_id], [offer_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'fd5fd77a-98a5-448e-a6fa-78a8cd9fff9a', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'43325be8-e91a-4a1d-a656-99d58ee5a871', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', NULL, N'Đã tham gia', CAST(N'2025-01-13T15:18:10.1041265' AS DateTime2), CAST(N'2025-01-13T15:18:10.1041653' AS DateTime2))
GO
INSERT [dbo].[LvTopics] ([id], [lvtopic_name], [category], [created_at], [updated_at]) VALUES (N'd146f151-a67a-455a-a2fa-6a7417184eac', N'Đề tài cấp cơ sở phân cấp', 0, CAST(N'2025-01-13T22:06:43.1957763' AS DateTime2), CAST(N'2025-01-13T22:06:43.1958213' AS DateTime2))
GO
INSERT [dbo].[Topics] ([id], [topic_name], [result], [lvtopic_id], [start_date], [end_date], [created_at], [updated_at]) VALUES (N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'tét', N'Khá', N'd146f151-a67a-455a-a2fa-6a7417184eac', CAST(N'2025-01-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-01-13T22:20:02.3330141' AS DateTime2), CAST(N'2025-01-13T22:20:02.3333869' AS DateTime2))
GO
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'9fa1971b-746d-4f37-80e2-8a12d830195a', N'ce5367e3-bffc-41e0-a49b-a082c1c9e536', N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'c0e93c55-77be-4af3-bc3a-726f08a2b99e', 0, N'Đã tham gia', CAST(N'2025-01-13T15:20:02.4670891' AS DateTime2), CAST(N'2025-01-13T15:20:02.4671270' AS DateTime2))
INSERT [dbo].[ScientistTopicRoles] ([id], [scientist_id], [topic_id], [role_id], [status], [requestStatus], [created_at], [updated_at]) VALUES (N'd46d6abf-6a6b-4b1d-a2a6-2ff03298d150', N'611d6650-e2e7-4f98-8e9f-2fbdbc674470', N'7e11e917-4afc-413b-962b-0ed942b6c7c4', N'1dccf515-dd00-4aae-bf07-4d25b29673c2', 0, N'Chờ duyệt', CAST(N'2025-01-13T15:28:42.0446437' AS DateTime2), CAST(N'2025-01-13T15:28:42.0446438' AS DateTime2))
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'adbc9a97-1e6e-4705-bfa4-69f917cdb354', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'efd97393-4810-470a-bad1-7f9eff4c7543', N'Administrators', N'ADMINISTRATORS', NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'771aa184-a15e-4f80-826d-eae63bf70379', NULL, NULL, N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAENQWgxsq2ZRQ7+ASow65lRVJwkI7VtSRU1HX8Y6Br4uxKZ6xsYFavHkDt7EcOKlpdA==', N'BUNUM7FKP67WW5XYYZQNCGXQ7STWURY5', N'06f8e074-14fe-4e1d-860f-57127b3e2d52', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', NULL, NULL, N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', N'ducthang191102@gmail.com', N'DUCTHANG191102@GMAIL.COM', 1, NULL, N'DDH627STYSXGAY4PQEHI3SJ4TFQTP2DX', N'909af2e8-e7e9-4000-96f1-2ba9c6107eb2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [role], [googleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'df39037f-d485-462a-a49d-40cb6d5235c2', NULL, NULL, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEAPNrs6LyOsA7tCplAmusYp4h8vdXb3zmqlH8tUbXFo4I1lXWJpHXK7CaabsGNCMIA==', N'C7KBYJNN22TCFOOSEBOYXCXKP4RHPTEK', N'7ced7bd5-0f90-4283-8695-f9681cea289a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'771aa184-a15e-4f80-826d-eae63bf70379', N'adbc9a97-1e6e-4705-bfa4-69f917cdb354')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'902c7cef-84ac-41fd-8934-4f5b3cb63b19', N'adbc9a97-1e6e-4705-bfa4-69f917cdb354')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'df39037f-d485-462a-a49d-40cb6d5235c2', N'efd97393-4810-470a-bad1-7f9eff4c7543')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'109263800306905871301', N'Google', N'902c7cef-84ac-41fd-8934-4f5b3cb63b19')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113101118_addInitialData', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250113111309_updateProject', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250114023309_updateJoinMagazine', N'8.0.11')
GO
