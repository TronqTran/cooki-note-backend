-- User ID: 1 (Admin)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1980-01-01', now(), now(), 'MALE', 'ADMIN', 'ACTIVE', 'Admin', 'User', 'LOCAL', 'admin', 'cookinote.contact@gmail.com', null, 'Admin', '$2a$10$fJrOllura2iwFEd6TDd0BOybSRaYrhcLCNaqrE7xMoCUP/WStN3yy');

INSERT INTO media (created_at, updated_at, type, url, public_id)
VALUES (now(), now(), 'IMAGE', 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763875391/profile-avatar/o1op3i39xxzg5gzwqabb.jpg','profile-avatar/o1op3i39xxzg5gzwqabb');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 1, now(), 1, 'AVATAR');

-- User ID: 2 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1995-03-15', now(), now(), 'FEMALE', 'USER', 'ACTIVE', 'Thanh', 'Mai', 'LOCAL', 'thanhmai_foodie', 'thanhmai.foodie@gmail.com', null, 'Yêu thích các món ăn truyền thống Việt Nam.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/ytlrd8xerdj2ra0awutm', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763877058/profile-avatar/ytlrd8xerdj2ra0awutm.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 2, now(), 2, 'AVATAR');
-- User ID: 3 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1998-07-28', now(), now(), 'FEMALE', 'USER', 'ACTIVE', 'Minh', 'Nguyệt', 'LOCAL', 'minh_nguyet_bake', 'minhnguyet.bake@outlook.com', null, 'Đam mê làm bánh ngọt và tráng miệng.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/iwdhts337sekkcg34loq', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763877271/profile-avatar/iwdhts337sekkcg34loq.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 3, now(), 3, 'AVATAR');

-- User ID: 4 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1992-11-05', now(), now(), 'FEMALE', 'USER', 'ACTIVE', 'Hương', 'Lan', 'LOCAL', 'huonglan_eatclean', 'huonglan.clean@yahoo.com', null, 'Chia sẻ công thức ăn uống lành mạnh, Eat Clean.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/qajqnhfoblwrls1btw7d', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763877360/profile-avatar/qajqnhfoblwrls1btw7d.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 4, now(), 4, 'AVATAR');

-- User ID: 5 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('2000-01-01', '2025-01-20 10:15:00', '2025-01-20 10:15:00', 'FEMALE', 'USER', 'ACTIVE', 'Cẩm', 'Tú', 'LOCAL', 'camtu.naugi', 'camtunaugi@icloud.com', null, 'Nấu ăn cho gia đình là niềm vui mỗi ngày.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/gculbmjkyqtdub8j82gz', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763877457/profile-avatar/gculbmjkyqtdub8j82gz.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 5, now(), 5, 'AVATAR');

-- User ID: 6 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1985-04-18', '2025-01-20 10:20:00', '2025-01-20 10:20:00', 'FEMALE', 'USER', 'ACTIVE', 'Thu', 'Hà', 'LOCAL', 'thuhabepnha', 'thuhabepnha@gmail.com', null, 'Các món ăn sáng tạo, kết hợp Á-Âu.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/jlwtvdtw4yuqz0sejftt', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763877540/profile-avatar/jlwtvdtw4yuqz0sejftt.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 6, now(), 6, 'AVATAR');

-- User ID: 7 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1997-09-03', '2025-01-20 10:25:00', '2025-01-20 10:25:00', 'FEMALE', 'USER', 'ACTIVE', 'Diệu', 'Linh', 'LOCAL', 'linh.anvat', 'dieu.linh@hotmail.com', null, 'Chuyên các công thức làm món ăn vặt, đồ uống.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/bb4ymo9tw7fgduisdtwn', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763877721/profile-avatar/bb4ymo9tw7fgduisdtwn.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 7, now(), 7, 'AVATAR');

-- User ID: 8 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1990-06-25', '2025-01-20 10:30:00', '2025-01-20 10:30:00', 'FEMALE', 'USER', 'ACTIVE', 'Yến', 'Nhi', 'LOCAL', 'yennhi_healthy', 'yennhi.nau@protonmail.com', null, 'Các món ăn chay và thuần chay.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/ew1oenge1ettsboh7vtc', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763877928/profile-avatar/ew1oenge1ettsboh7vtc.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 8, now(), 8, 'AVATAR');

-- User ID: 9 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1988-02-14', '2025-01-20 10:35:00', '2025-01-20 10:35:00', 'FEMALE', 'USER', 'ACTIVE', 'Phương', 'Anh', 'LOCAL', 'phuong_anh.mom', 'phuonganh.mom@gmail.com', null, 'Công thức đơn giản, nhanh gọn cho mẹ bỉm sữa.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/x2qzuxgavyjscpvhktn9', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878032/profile-avatar/x2qzuxgavyjscpvhktn9.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 9, now(), 9, 'AVATAR');
-- User ID: 10 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1993-10-22', '2025-01-20 10:40:00', '2025-01-20 10:40:00', 'FEMALE', 'USER', 'ACTIVE', 'Ngọc', 'Huyền', 'LOCAL', 'ngochuyen_dulich', 'ngochuyen.dl@yahoo.com', null, 'Khám phá và tái tạo công thức ẩm thực đường phố.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/aekrzufjce6flkxc3he9', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878121/profile-avatar/aekrzufjce6flkxc3he9.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 10, now(), 10, 'AVATAR');

-- User ID: 11 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1996-05-08', '2025-01-20 10:45:00', '2025-01-20 10:45:00', 'FEMALE', 'USER', 'ACTIVE', 'Kiều', 'Trang', 'LOCAL', 'kieutrang_kitchen', 'trang.kitchen@outlook.com', null, 'Thích nấu các món Âu, đặc biệt là Ý.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/r9pqklswu8vc2kpdmlu9', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878212/profile-avatar/r9pqklswu8vc2kpdmlu9.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 11, now(), 11, 'AVATAR');

-- User ID: 12 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1989-12-03', '2025-01-20 10:50:00', '2025-01-20 10:50:00', 'MALE', 'USER', 'ACTIVE', 'Quang', 'Huy', 'LOCAL', 'quanghuy_chef', 'quanghuy.chef@gmail.com', null, 'Bếp trưởng tại gia, chia sẻ bí quyết nấu ăn chuyên nghiệp.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/qnv0poawdffzeemrwl1x', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763876418/profile-avatar/qnv0poawdffzeemrwl1x.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 12, now(), 12, 'AVATAR');
-- User ID: 13 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1994-08-10', '2025-01-20 10:55:00', '2025-01-20 10:55:00', 'MALE', 'USER', 'ACTIVE', 'Thế', 'Anh', 'LOCAL', 'theanh_streetfood', 'theanh.food@yahoo.com', null, 'Tái hiện công thức các món ăn đường phố.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/rcah5yil4xblrv1khhsu', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763876662/profile-avatar/rcah5yil4xblrv1khhsu.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 13, now(), 13, 'AVATAR');

-- User ID: 14 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1982-05-20', '2025-01-20 11:00:00', '2025-01-20 11:00:00', 'MALE', 'USER', 'ACTIVE', 'Văn', 'Khoa', 'LOCAL', 'khoa_bbq', 'vankhoa.bbq@outlook.com', null, 'Chuyên các món nướng (BBQ) và ẩm thực dã ngoại.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/uwyb1hcvj0caaq7dedhg', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878436/profile-avatar/uwyb1hcvj0caaq7dedhg.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 14, now(), 14, 'AVATAR');

-- User ID: 15 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1991-03-29', '2025-01-20 11:05:00', '2025-01-20 11:05:00', 'MALE', 'USER', 'ACTIVE', 'Hoàng', 'Duy', 'LOCAL', 'hoangduy_bepviet', 'duy.bepviet@gmail.com', null, 'Nấu các món ăn truyền thống miền Bắc.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/wsaaqevxrdisocs6sh36', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878558/profile-avatar/wsaaqevxrdisocs6sh36.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 15, now(), 15, 'AVATAR');

-- User ID: 16 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1987-11-12', '2025-01-20 11:10:00', '2025-01-20 11:10:00', 'MALE', 'USER', 'ACTIVE', 'Anh', 'Tài', 'LOCAL', 'anhtai_foodlab', 'anhtai.lab@hotmail.com', null, 'Thử nghiệm các kỹ thuật nấu ăn hiện đại.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/iu1kiqkolant8skhxvdj', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878652/profile-avatar/iu1kiqkolant8skhxvdj.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 16, now(), 16, 'AVATAR');

-- User ID: 17 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1999-01-01', '2025-01-20 11:15:00', '2025-01-20 11:15:00', 'MALE', 'USER', 'ACTIVE', 'Đức', 'Trọng', 'LOCAL', 'ductrong_healthy', 'ductrong.gym@icloud.com', null, 'Công thức nấu ăn tăng cơ giảm mỡ cho người tập gym.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/uzopkoymmkxrs4xdmftu', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878773/profile-avatar/uzopkoymmkxrs4xdmftu.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 17, now(), 17, 'AVATAR');

-- User ID: 18 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1984-06-07', '2025-01-20 11:20:00', '2025-01-20 11:20:00', 'MALE', 'USER', 'ACTIVE', 'Minh', 'Khôi', 'LOCAL', 'minkhoi_cafe', 'minh.khoi.food@protonmail.com', null, 'Món ăn kèm cà phê và các công thức pha chế đơn giản.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/rjicyyzsk4m1gv6ctzyi', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878773/profile-avatar/rjicyyzsk4m1gv6ctzyi.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 18, now(), 18, 'AVATAR');

-- User ID: 19 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1997-04-21', '2025-01-20 11:25:00', '2025-01-20 11:25:00', 'MALE', 'USER', 'ACTIVE', 'Việt', 'Bách', 'LOCAL', 'vietbach_nauanchay', 'vietbach.chay@yahoo.com', null, 'Đăng tải các công thức nấu món chay hiện đại.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/kvvzvoz8u7e8g4hybpif', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763878998/profile-avatar/kvvzvoz8u7e8g4hybpif.jpg');

INSERT INTO user_media (created_at, media_id, updated_at, user_id, type)
VALUES (now(), 19, now(), 19, 'AVATAR');

-- User ID: 20 (User)
INSERT INTO users (date_of_birth, created_at, updated_at, gender, role, status, first_name, last_name, provider, username, email, provider_id, biography, password)
VALUES ('1986-09-17', '2025-01-20 11:30:00', '2025-01-20 11:30:00', 'MALE', 'USER', 'ACTIVE', 'Trường', 'Giang', 'LOCAL', 'truonggiang_nau', 'truonggiang.nau@gmail.com', null, 'Sở thích khám phá ẩm thực quốc tế.', '$2a$10$smVm9ubBF8V6cMlGLStjPOIzFLKoFS6js4J/WnjwAF2toALGXepjO');

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'profile-avatar/hw0wocoglsnvocspatrr', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763879110/profile-avatar/hw0wocoglsnvocspatrr.jpg');

INSERT INTO user_media (created_at, type, updated_at, media_id, user_id)
VALUES (now(), 'AVATAR', now(), 20, 20);

-- Category
INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức món ăn tinh tế của Nhật Bản như Sushi, Sashimi, Ramen...',FALSE, 'Ẩm thực Nhật Bản', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức món ăn đa dạng từ ẩm thực Trung Hoa.',FALSE, 'Ẩm thực Trung Quốc', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức được thiết kế để hỗ trợ mục tiêu giảm cân, kiểm soát calo.',FALSE, 'Giảm Cân', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức món ăn đặc sắc từ Hàn Quốc như Kimchi, Tokbokki, Canh Kimchi...', FALSE, 'Ẩm thực Hàn Quốc', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức món ăn Âu-Mỹ, bao gồm món Ý (Pasta, Pizza) và món Pháp...', FALSE, 'Ẩm thực Phương Tây', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức không sử dụng thịt, cá, gia cầm.', FALSE, 'Ăn Chay', now());

INSERT INTO categories (created_at, description, is_active, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức làm đồ ăn nhẹ, snack, khai vị, không phải bữa chính.', TRUE, FALSE, 'Món Ăn Vặt', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức làm bánh ngọt, kem, chè và đồ ăn sau bữa ăn chính.', FALSE, 'Món Tráng Miệng', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức đơn giản, chỉ mất tối đa 30 phút để hoàn thành.', FALSE, 'Nấu Nhanh', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức ăn uống lành mạnh, ít dầu mỡ, tập trung vào nguyên liệu tự nhiên.', FALSE, 'Eat Clean/Healthy', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức chính, món mặn, canh cho bữa ăn gia đình buổi tối.', FALSE, 'Bữa Tối', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức cân bằng dinh dưỡng, dễ mang theo cho bữa trưa.', FALSE, 'Bữa Trưa', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức chế biến món ăn nhanh, nhẹ cho buổi sáng.', FALSE, 'Bữa Sáng', now());

INSERT INTO categories (created_at, description, is_deleted, name, updated_at)
VALUES (now(), 'Các công thức món ăn truyền thống và đặc trưng của Việt Nam.', FALSE, 'Ẩm thực Việt Nam', now());

-- Ingredient
-- Thịt và Hải sản (18 nguyên liệu)
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Thịt Heo', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Thịt Bò', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Thịt Gà', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Thịt Vịt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Thịt Cừu', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Xương Heo (dùng làm nước lèo)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tôm Tươi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cua/Ghẹ', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mực', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cá Lóc', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cá Hồi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cá Thu', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nghêu/Sò', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Trứng Gà', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Trứng Vịt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Giò Sống', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Xúc Xích', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bacon/Thịt Xông Khói', now());
-- Rau củ và Nấm (28 nguyên liệu)
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hành Tây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cà Rốt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Khoai Tây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bông Cải Trắng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bông Cải Xanh', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cải Bó Xôi (Rau Spinach)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Xà Lách', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cà Chua', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dưa Chuột', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Ớt Chuông (Đỏ/Vàng/Xanh)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bí Đỏ', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Củ Cải Trắng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đậu Phụ', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đậu Que', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nấm Hương (Nấm Đông Cô)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nấm Kim Châm', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nấm Mỡ', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nấm Rơm', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hành Lá', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tỏi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Gừng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sả', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Húng Quế', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Ngò Gai (Rau Mùi)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bắp Ngô', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Rong Biển', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bắp Cải', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hành Tây Tím', now());
-- Tinh bột, Bột và Sản phẩm từ Sữa (24 nguyên liệu)
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Gạo Tẻ', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Gạo Nếp', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bún Tươi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Phở Khô', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mì Ý (Pasta)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bánh Mì', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Mì Đa Dụng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Năng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Gạo', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Nở (Baking Powder)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Men Nở (Yeast)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đường Cát', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đường Nâu', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sữa Tươi Không Đường', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sữa Đặc', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Kem Tươi (Whipping Cream)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bơ Lạt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Phô Mai Mozzarella', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Phô Mai Parmesan', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dầu Ăn Thực Vật', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dầu Ô Liu (Olive Oil)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bơ Đậu Phộng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước Cốt Dừa', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Rượu Nấu Ăn (Rượu Trắng)', now());
-- Gia vị, Nước sốt và Các loại Hạt (30 nguyên liệu)
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Muối', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Nêm', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tiêu Đen', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Ngọt (Mì Chính)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước Mắm', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước Tương (Xì Dầu)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dầu Hào', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Giấm Gạo', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước Cốt Chanh', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mật Ong', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tương Ớt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tương Cà', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Ớt Tươi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Ngũ Vị Hương', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Nghệ', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Cà Ri', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Lá Nguyệt Quế (Bay Leaf)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Lá Chanh (Kaffir Lime Leaves)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Tỏi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Hành', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Điều', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Óc Chó', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạnh Nhân (Almond)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mè Rang (Hạt Vừng)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bơ Thực Vật (Margarine)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sốt Mayonnaise', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Ớt Paprika', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Quế', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dầu Mè', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Rau Mùi Tây (Parsley)', now());
-- Rau củ Đặc trưng và Trái cây (30 nguyên liệu)
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cà Tím', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đậu Bắp', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Khổ Qua', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Củ Sen', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bầu/Bí Xanh', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Su Hào', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hành Baro (Poireau)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cần Tây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bắp Chuối', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hoa Chuối', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Atisô', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Măng Tươi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Lá Bạc Hà', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Lá Lốt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Lá Tía Tô', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Rau Diếp Cá', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hành Tây Đỏ', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bắp Cải Tím', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Khoai Lang', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Khoai Môn', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Chanh Vàng (Lemon)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Táo', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Chuối', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bơ Sáp', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dứa (Thơm)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Cam', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Xoài', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nho', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dâu Tây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Việt Quất (Blueberry)', now());

-- Đồ Khô, Hạt, và Các loại Bột/Gạo (35 nguyên liệu)
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nấm Mèo (Mộc Nhĩ)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bún Khô', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Miến Khô', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Phở Tươi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Chiên Giòn', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Chiên Xù', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Kem Béo', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Khoai Tây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Sắn Dây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Ngũ Cốc', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Sen', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Quinoa', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Chia', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Lanh', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Hướng Dương', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Cacao', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Trà Xanh (Matcha)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Gelatin', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Thạch', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Gạo Lứt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Yến Mạch', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đậu Xanh', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đậu Đen', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đậu Nành', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Dẻ Cười', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bánh Tráng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Làm Bánh Dẻo', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Báng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Đường Phèn', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Custard', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Socola Chip', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mứt Trái Cây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sữa Chua', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sữa Hạt', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Whipping Cream Thực Vật', now());
-- Gia vị, Nước Sốt và Thực phẩm Chuyên dụng (35 nguyên liệu)
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước Cốt Me', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước Tương Đen', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tương Hột', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tương Xí Muội', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mắm Ruốc', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mắm Nêm', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mắm Cá Linh', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước Dùng Gà/Bò', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dầu Mè Rang', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tinh Dầu Hoa Hồi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Lá Oregano', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Lá Rosemary', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Mù Tạt (Mustard Seed)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Hành Tây', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Gừng', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Ớt Hàn Quốc', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Ớt Cayenne', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Ớt Bột Xay', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Ngò (Coriander Seed)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Hạt Thì Là (Cumin Seed)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Thì Là (Cumin Powder)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Lá Thyme', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sốt Cá Ngừ (Soy Sauce)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tương Đen', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Dấm Balsamic', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Bột Bắp', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Tinh Dầu Vani', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Màu Thực Phẩm', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Rượu Sake Nấu Ăn', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Rượu Mirin', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Kem Phô Mai (Cream Cheese)', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước cốt dừa lon', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Nước dừa tươi', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Sốt Worcestershire', now());
INSERT INTO ingredients (created_at, name, updated_at) VALUES (now(), 'Mù Tạt Vàng (Yellow Mustard)', now());

-- Recipe
-- Recipe ID: 1
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           120,
           '2025-11-23 15:30:00',
           'Công thức Phở Bò truyền thống với nước dùng hầm từ xương bò và gia vị thảo mộc, mang lại hương vị đậm đà chuẩn vị Hà Nội. Món ăn này cần thời gian hầm xương kỹ để nước dùng trong và ngọt.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Phở Bò Truyền Thống (4 Người)',
           '2025-11-23 15:30:00',
           0,
           14,
           3
       );

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xương ống bò. Rửa sạch, chần sơ.', 1.5, TRUE, 'kg', now(), 6, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tổng 700g, trong đó: 500g nạm/gầu để hầm và 200g thăn để tái.', 700, TRUE, 'gram', now(), 2, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh phở tươi hoặc khô.', 1, TRUE, 'kg', now(), 50, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nướng sơ qua để hầm nước dùng.', 2, TRUE, 'củ', now(), 19, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nướng sơ qua để hầm nước dùng.', 1, TRUE, 'củ', now(), 39, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gia vị phở (quế, hồi, thảo quả...).', 1, TRUE, 'gói', now(), 84, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm nước dùng.', 1, TRUE, 'muỗng cà phê', now(), 71, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm nước dùng.', 2, TRUE, 'muỗng cà phê', now(), 72, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm nước dùng.', 5, TRUE, 'muỗng canh', now(), 75, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm nước dùng.', 1, TRUE, 'muỗng cà phê', now(), 58, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ để rắc.', 50, TRUE, 'gram', now(), 37, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau thơm ăn kèm.', 50, FALSE, 'gram', now(), 42, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng kèm.', 5, FALSE, 'trái', now(), 83, 1);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng kèm.', 2, FALSE, 'muỗng canh', now(), 79, 1);

-- Bước 1: Sơ chế Xương và Gia vị Thảo mộc
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sơ chế Xương: Rửa sạch 1.5kg xương, chần qua nước sôi 5 phút để loại bỏ tạp chất. Rửa lại lần nữa. Sơ chế Gia vị: Nướng sơ qua 2 củ Hành Tây, 1 củ Gừng và các gia vị phở trong gói Ngũ Vị Hương cho dậy mùi thơm. Cạo sạch phần cháy đen.',
           FALSE,
           1,
           now(),
           1
       );

-- Bước 2: Hầm Nước dùng (Giai đoạn 1)
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho xương đã sơ chế vào nồi lớn, đổ 5-6 lít nước, hầm trên lửa nhỏ. Thêm gừng, hành tây nướng và gia vị phở đã rang/nướng vào nồi. Nấu sôi và vớt bọt thường xuyên để nước dùng trong.',
           FALSE,
           2,
           now(),
           1
       );

-- Bước 3: Nêm nếm và Hầm (Giai đoạn 2)
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nêm 1 muỗng cà phê Muối, 2 muỗng cà phê Hạt Nêm, 5 muỗng canh Nước Mắm và 1 muỗng cà phê Đường Cát. Tiếp tục hầm xương trong **ít nhất 2 giờ** (hoặc lâu hơn) trên lửa nhỏ nhất.',
           FALSE,
           3,
           now(),
           1
       );

-- Bước 4: Luộc Thịt Nạm/Gầu
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Luộc 500g thịt nạm/gầu (trong phần Thịt Bò) ngay từ đầu với xương. Khi thịt chín, vớt ra, ngâm vào tô nước lạnh để thịt giữ được độ mềm và màu sắc. Thái thịt thành lát mỏng.',
           FALSE,
           4,
           now(),
           1
       );

-- Bước 5: Chuẩn bị Bánh Phở
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trần 1kg Bánh Phở qua nước sôi nhanh chóng, sau đó chia đều vào 4 tô lớn. (Nếu là phở khô, cần ngâm trước khi trần).',
           FALSE,
           5,
           now(),
           1
       );

-- Bước 6: Chuẩn bị Thịt Tái và Topping
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thái 200g Thịt Bò thăn (trong phần Thịt Bò) thật mỏng để làm thịt tái. Cắt nhỏ Hành Lá và Ngò Gai. Chuẩn bị Ớt Tươi và Chanh (Nước Cốt Chanh) ăn kèm.',
           FALSE,
           6,
           now(),
           1
       );

-- Bước 7: Hoàn tất Nước dùng
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lọc nước dùng qua rây để loại bỏ hoàn toàn xương và các bã gia vị. Giữ nước dùng luôn nóng sôi trên bếp để đảm bảo độ nóng khi chan vào phở.',
           FALSE,
           7,
           now(),
           1
       );

-- Bước 8: Trình bày Tô Phở
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp thịt nạm/gầu đã thái lên trên bánh phở trong tô. Đặt thịt tái (thịt sống) lên trên cùng. Rắc hành lá và ngò gai đã cắt nhỏ.',
           FALSE,
           8,
           now(),
           1
       );

-- Bước 9: Chan nước và Thưởng thức
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chan nước dùng đang sôi lên trên tô phở, đảm bảo nước ngập thịt tái và làm chín thịt ngay lập tức. Phục vụ kèm ớt tươi và chanh.',
           FALSE,
           9,
           now(),
           1
       );

-- Comment
INSERT INTO comments (content, created_at, depth, is_deleted, updated_at, parent_id, recipe_id, user_id)
VALUES ('Món phở bò này thật tuyệt vời! Nước dùng đậm đà, thịt mềm ngon. Cảm ơn bạn đã chia sẻ công thức!', now(), 0, FALSE, now(), NULL, 1, 14);

INSERT INTO comments (content, created_at, depth, is_deleted, updated_at, parent_id, recipe_id, user_id)
VALUES ('Tôi đã thử làm món phở bò theo công thức này và cả gia đình đều khen ngon. Nước dùng rất thơm và thịt bò mềm vừa phải.', now(), 0, FALSE, now(), NULL, 1, 15);
-- Likes
INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id) VALUES (now(), now(), 1, 14);
INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id) VALUES (now(), now(), 1, 15);
INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id) VALUES (now(), now(), 1, 16);
INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id) VALUES (now(), now(), 1, 17);

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'cooki-note/recipes/uonie32cqnaabjuyyla0', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763888514/cooki-note/recipes/uonie32cqnaabjuyyla0.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 21, 1);
-- Recipe ID: 2
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           45,
           '2025-11-24 09:00:00',
           'Công thức làm Bún Chả Hà Nội chuẩn vị, bao gồm chả viên và chả miếng nướng than hoặc lò nướng, ăn kèm bún tươi và nước chấm chua ngọt đậm đà.',
           'EASY',
           FALSE,
           TRUE,
           4,
           'Bún Chả Hà Nội Chuẩn Vị (4 Người)',
           '2025-11-24 09:00:00',
           0,
           14,
           3
       );

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '500g nạc vai xay làm chả viên, 200g thịt ba chỉ làm chả miếng.', 700, TRUE, 'gram', now(), 1, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn chung với thịt làm chả viên.', 100, TRUE, 'gram', now(), 16, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bún rối hoặc bún lá.', 1, TRUE, 'kg', now(), 49, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng cho cả ướp thịt và pha nước chấm.', 10, TRUE, 'muỗng canh', now(), 75, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 5, TRUE, 'muỗng canh', now(), 78, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm và ướp thịt.', 5, TRUE, 'muỗng canh', now(), 58, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 3, TRUE, 'muỗng canh', now(), 79, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phần trắng băm nhỏ để ướp chả.', 30, TRUE, 'gram', now(), 37, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ để ướp và pha nước chấm.', 2, TRUE, 'củ', now(), 38, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát, cho vào nước chấm.', 3, FALSE, 'trái', now(), 83, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau sống ăn kèm.', 50, TRUE, 'gram', now(), 42, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau sống ăn kèm.', 1, TRUE, 'trái', now(), 27, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát/sợi mỏng ngâm chua ngọt.', 1, TRUE, 'củ', now(), 20, 2);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát/sợi mỏng ngâm chua ngọt.', 1, TRUE, 'củ', now(), 30, 2);

-- Bước 1: Sơ chế và Ướp Thịt Chả
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn đều 700g Thịt Heo đã xay/thái cùng 100g Giò Sống, 1/2 lượng Tỏi và Hành Lá băm, một chút Nước Mắm, Tiêu Đen và Đường Cát. Chia thịt thành hai phần: phần nạc vai để viên và phần ba chỉ để miếng. Ướp ít nhất 30 phút.',
           FALSE,
           1,
           now(),
           2
       );

-- Bước 2: Sơ chế Rau Củ Ngâm Chua
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thái sợi mỏng Cà Rốt và Củ Cải Trắng. Trộn với 1 muỗng cà phê Muối và 1 muỗng canh Đường Cát để xả nước khoảng 10 phút. Rửa sạch, vắt ráo và ngâm trong một ít Giấm Gạo pha loãng.',
           FALSE,
           2,
           now(),
           2
       );

-- Bước 3: Pha Nước Chấm (Phần Quan Trọng Nhất)
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước chấm theo tỷ lệ chuẩn: 5 muỗng canh Nước Mắm, 5 muỗng canh Đường Cát, 5 muỗng canh Giấm Gạo, 10 muỗng canh nước lọc. Khuấy tan, sau đó thêm Nước Cốt Chanh. Thêm phần Tỏi và Ớt Tươi băm còn lại vào.',
           FALSE,
           3,
           now(),
           2
       );

-- Bước 4: Nướng Chả
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nắn thịt thành chả viên tròn và xếp chả miếng đã ướp lên vỉ nướng. Nướng trên than hoa hoặc lò nướng (180°C) cho đến khi thịt chín vàng đều hai mặt và dậy mùi thơm. Thường xuyên lật chả để tránh bị cháy.',
           FALSE,
           4,
           now(),
           2
       );

-- Bước 5: Chuẩn bị Bún và Rau Sống
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trần Bún Tươi qua nước nóng nếu cần. Rửa sạch các loại rau sống ăn kèm như Xà Lách (nếu có), Dưa Chuột và Ngò Gai.',
           FALSE,
           5,
           now(),
           2
       );

-- Bước 6: Hoàn thiện Nước Chấm
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng phần nước chấm đã pha (Bước 3). Cho chả nướng (Bước 4) và rau củ ngâm chua (Bước 2) vào tô nước chấm nóng. Lưu ý: nước chấm cần đủ ấm để làm mềm chả nhưng không làm chín rau củ.',
           FALSE,
           6,
           now(),
           2
       );

-- Bước 7: Trình bày và Thưởng thức
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc chả, nước chấm và rau củ ngâm chua ra tô. Bày Bún Tươi và rau sống ăn kèm riêng. Người dùng sẽ gắp bún và rau vào tô nước chấm để thưởng thức.',
           FALSE,
           7,
           now(),
           2
       );

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'cooki-note/recipes/duccdxnmrppnveejxa9k', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763890560/cooki-note/recipes/duccdxnmrppnveejxa9k.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id)
VALUES (now(), 'AVATAR', now(), 22, 2);

-- Comment
INSERT INTO comments (content, created_at, depth, is_deleted, updated_at, parent_id, recipe_id, user_id)
VALUES ('Tôi rất thích món bún chả này! Chả nướng thơm ngon, nước chấm đậm đà. Cảm ơn bạn đã chia sẻ công thức!', now(), 0, FALSE, now(), NULL, 2, 12),
       ('Tôi đã thử làm món bún chả theo công thức này và cả gia đình đều khen ngon. Chả nướng rất thơm và nước chấm vừa miệng.', now(), 0, FALSE, now(), NULL, 2, 10);

-- Likes
INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id)
VALUES (now(), now(), 2, 12),
       (now(), now(), 2, 10),
       (now(), now(), 2, 11),
       (now(), now(), 2, 13);

-- Recipe ID: 3
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           50,
           '2025-11-25 14:00:00',
           'Cơm Gà Xối Mỡ đơn giản, gà luộc sơ sau đó xối mỡ nóng giòn da, thịt vẫn mềm ẩm. Công thức này tập trung vào sự nhanh chóng và hương vị thơm ngon, phù hợp cho bữa ăn gia đình bận rộn.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Cơm Gà Xối Mỡ Giòn Da',
           '2025-11-25 14:00:00',
           0,
           14,
           9       );

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đùi hoặc má đùi gà to, chặt miếng vừa.', 1, TRUE, 'kg', now(), 3, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nấu cơm, nên chọn loại dẻo.', 500, TRUE, 'gram', now(), 47, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Một nửa đập dập luộc gà, nửa còn lại băm nhỏ.', 50, TRUE, 'gram', now(), 39, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ để ướp gà và làm nước sốt.', 3, TRUE, 'củ', now(), 38, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ, phần đầu hành dùng để ướp/luộc.', 50, TRUE, 'gram', now(), 37, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc gà và nêm nếm.', 1, TRUE, 'muỗng canh', now(), 71, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước sốt.', 4, TRUE, 'muỗng canh', now(), 75, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp gà trước khi xối mỡ.', 2, TRUE, 'muỗng canh', now(), 77, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước sốt.', 2, TRUE, 'muỗng canh', now(), 58, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xối mỡ/chiên giòn gà.', 300, TRUE, 'ml', now(), 66, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ăn kèm.', 1, TRUE, 'trái', now(), 27, 3);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trang trí.', 2, TRUE, 'trái', now(), 26, 3);

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'cooki-note/recipes/hwdkyvbwzpj4sfb6ushp', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763901386/cooki-note/recipes/hwdkyvbwzpj4sfb6ushp.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id)
VALUES (now(), 'AVATAR', now(), 23, 3);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Luộc sơ Thịt Gà với Muối, Gừng đập dập và một chút đầu Hành Lá trong khoảng 15-20 phút cho gà chín tới, da còn nguyên vẹn. Vớt gà ra, để ráo và dùng Muối chà xát bên ngoài da gà để da săn lại và có màu đẹp hơn khi chiên/xối mỡ.',
           FALSE,
           1,
           now(),
           3
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Vo sạch Gạo Tẻ. Dùng nước luộc gà (đã lọc sạch bọt) để nấu cơm, thêm một chút Muối và Bột Nghệ (nếu có, không nằm trong danh sách nguyên liệu chính thức nhưng giúp cơm có màu vàng đẹp) để cơm có màu vàng bắt mắt và thơm vị gà. Nấu cơm như bình thường.',
           FALSE,
           2,
           now(),
           3
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn hỗn hợp ướp gà: Dầu Hào, Nước Mắm, Tỏi băm, Tiêu Đen (nếu có) và một chút Đường Cát. Phết đều hỗn hợp này lên lớp da gà đã ráo nước (Bước 1).',
           FALSE,
           3,
           now(),
           3
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước chấm Gừng/Tỏi: Trộn Nước Mắm, Đường Cát, Nước Cốt Chanh (nếu có), Tỏi băm và Gừng băm. Nếm thử và điều chỉnh cho vừa miệng (chua, cay, mặn, ngọt cân bằng).',
           FALSE,
           4,
           now(),
           3
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun nóng Dầu Ăn Thực Vật trong chảo sâu. Dầu phải thật nóng (khoảng 160-180°C) để đảm bảo da gà giòn ngay lập tức.',
           FALSE,
           5,
           now(),
           3
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt miếng gà đã ướp (Bước 3) vào rây. Từ từ dùng muỗng lớn rưới dầu nóng (Bước 5) đều lên bề mặt da gà. Xối liên tục cho đến khi da gà chuyển sang màu vàng cánh gián và trở nên giòn rụm. Lưu ý cẩn thận tránh bị bỏng.',
           FALSE,
           6,
           now(),
           3
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thái Dưa Chuột và Cà Chua thành lát. Chuẩn bị rau ăn kèm như xà lách (nếu có).',
           FALSE,
           7,
           now(),
           3
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc cơm đã nấu (Bước 2) ra đĩa. Đặt miếng gà xối mỡ giòn (Bước 6) lên trên. Trang trí với rau ăn kèm (Bước 7) và phục vụ cùng nước chấm Gừng/Tỏi (Bước 4) và chén canh gà.',
           FALSE,
           8,
           now(),
           3
       );

INSERT INTO comments (content, created_at, depth, is_deleted, updated_at, parent_id, recipe_id, user_id)
VALUES ('Tôi rất thích món cơm gà xối mỡ này! Gà giòn da mà thịt vẫn mềm ngon. Cảm ơn bạn đã chia sẻ công thức!', now(), 0, FALSE, now(), NULL, 3, 18),
       ('Món cơm gà xối mỡ này thật tuyệt vời! Da gà giòn rụm, thịt thì mềm ngọt. Tôi sẽ làm lại nhiều lần nữa.', now(), 0, FALSE, now(), NULL, 3, 19);

INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id)
VALUES (now(), now(), 3, 18), (now(), now(), 3, 19);

-- Recipe ID: 4
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-15 10:30:00',
           'Gỏi Cuốn Tôm Thịt, sử dụng bún tươi, tôm luộc, thịt luộc, và rất nhiều rau xanh. Công thức này không chiên xào, là lựa chọn lý tưởng cho bữa ăn nhẹ, giảm cân hoặc duy trì sức khỏe.',
           'EASY',
           FALSE,
           TRUE,
           4,
           'Gỏi Cuốn Tôm Thịt',
           '2025-11-15 10:30:00',
           0,
           14,
           4
       );

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc chín, bóc vỏ, chẻ đôi.', 300, TRUE, 'gram', now(), 7, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ hoặc thịt thăn luộc chín, thái lát mỏng.', 200, TRUE, 'gram', now(), 1, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 300, TRUE, 'gram', now(), 49, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lá to để cuốn.', 1, TRUE, 'cây', now(), 25, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau thơm cuốn kèm.', 50, TRUE, 'gram', now(), 41, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau thơm cuốn kèm.', 50, TRUE, 'gram', now(), 42, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 4, TRUE, 'muỗng canh', now(), 75, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 3, TRUE, 'muỗng canh', now(), 58, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 2, TRUE, 'muỗng canh', now(), 79, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát, cho vào nước chấm.', 2, FALSE, 'trái', now(), 83, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, cho vào nước chấm.', 1, TRUE, 'củ', now(), 38, 4);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Một lát nhỏ khi luộc thịt/tôm.', 10, FALSE, 'gram', now(), 39, 4);

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'cooki-note/recipes/qzkqp4cs6zee3plcwswb', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763902079/cooki-note/recipes/qzkqp4cs6zee3plcwswb.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 24, 4);


-- Bước 1: Luộc Tôm và Thịt
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Luộc 300g Tôm Tươi và 200g Thịt Heo với một chút Muối và Gừng. Tôm chín vớt ra, bóc vỏ, chẻ đôi. Thịt chín vớt ra, ngâm nước lạnh, sau đó thái lát mỏng vừa ăn.',
           FALSE,
           1,
           now(),
           4
       );

-- Bước 2: Chuẩn bị Bún và Rau
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trần 300g Bún Tươi qua nước nóng. Rửa sạch các loại rau: Xà Lách, Húng Quế và Ngò Gai. Đảm bảo rau đã được vẩy khô hoàn toàn để cuốn không bị rách.',
           FALSE,
           2,
           now(),
           4
       );

-- Bước 3: Pha Nước Chấm Chua Ngọt
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước chấm: Trộn Nước Mắm, Đường Cát, Nước Cốt Chanh, nước ấm (nếu cần), Tỏi băm và Ớt Tươi cắt lát. Khuấy đều cho tan đường và nếm thử để có vị chua ngọt hài hòa.',
           FALSE,
           3,
           now(),
           4
       );

-- Bước 4: Cuốn Gỏi Cuốn
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nhúng bánh tráng qua nước lạnh nhanh chóng. Trải bánh tráng lên mặt phẳng. Xếp một lá Xà Lách, sau đó là Bún Tươi, rau thơm, rồi đến Thịt Heo. Cuốn một vòng, sau đó đặt Tôm Tươi (mặt đỏ hướng ra ngoài) và gập hai mép bánh tráng vào. Cuốn chặt tay cho đến hết.',
           FALSE,
           4,
           now(),
           4
       );

-- Bước 5: Trình bày và Thưởng thức
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp các cuốn gỏi đã hoàn thành ra đĩa. Phục vụ cùng chén nước chấm đã pha (Bước 3). Gỏi cuốn ngon nhất khi dùng ngay trong ngày.',
           FALSE,
           5,
           now(),
           4
       );


INSERT INTO comments (content, created_at, depth, is_deleted, updated_at, parent_id, recipe_id, user_id)
VALUES ('Gỏi cuốn tôm thịt này thật tuyệt vời! Tôm tươi ngon, rau sống giòn mát. Cảm ơn bạn đã chia sẻ công thức!', now(), 0, FALSE, now(), NULL, 4, 20),
       ('Tôi đã thử làm món gỏi cuốn theo công thức này và cả gia đình đều khen ngon. Gỏi cuốn rất tươi ngon và nước chấm vừa miệng.', now(), 0, FALSE, now(), NULL, 4, 11),
         ('Món gỏi cuốn tôm thịt này thật tuyệt vời! Tôm tươi ngon, rau sống giòn mát. Cảm ơn bạn đã chia sẻ công thức!', now(), 0, FALSE, now(), NULL, 4, 2);

INSERT INTO recipe_likes (created_at, updated_at, recipe_id, user_id)
VALUES (now(), now(), 4, 20),
       (now(), now(), 4, 11),
       (now(), now(), 4, 2),
       (now(), now(), 4, 3);

-- Recipe ID: 5
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-22 12:00:00',
           'Công thức Canh Chua Cá Lóc miền Nam truyền thống. Món ăn thanh mát, kích thích vị giác với vị chua dịu từ me và thơm mùi ngò gai.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Canh Chua Cá Lóc',
           '2025-11-22 12:00:00',
           0,
           14,
           17
       );

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đã làm sạch, cắt khoanh vừa ăn. Ướp với Gừng và Tiêu.', 800, TRUE, 'gram', now(), 10, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát xéo.', 150, TRUE, 'gram', now(), 102, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái mỏng, ngâm với nước pha giấm/chanh để không bị đen.', 150, TRUE, 'gram', now(), 110, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt múi cau.', 2, TRUE, 'trái', now(), 26, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đập dập, băm nhỏ để ướp cá và xào sơ.', 30, TRUE, 'gram', now(), 40, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chà xát khử tanh cá.', 20, TRUE, 'gram', now(), 39, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ để rắc khi hoàn thành.', 30, TRUE, 'gram', now(), 42, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha với nước nóng để tạo vị chua cho canh.', 4, TRUE, 'muỗng canh', now(), 166, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm nước canh.', 5, TRUE, 'muỗng canh', now(), 75, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm vị ngọt.', 3, TRUE, 'muỗng canh', now(), 58, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sơ chế cá và nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 71, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát để trang trí và thêm vị cay.', 3, FALSE, 'trái', now(), 83, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp cá.', 1, TRUE, 'muỗng cà phê', now(), 73, 5);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Để xào Sả/Cà Chua.', 1, TRUE, 'muỗng canh', now(), 66, 5);

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/ajq1dh0voffq0hy0w98e', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763903003/cooki-note/recipes/ajq1dh0voffq0hy0w98e.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 25, 5);

-- Bước 1: Sơ chế Cá và Khử tanh
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rửa sạch Cá Lóc bằng Muối và Gừng đập dập hoặc Giấm (nếu có) để khử mùi tanh. Cắt cá thành khoanh vừa ăn. Ướp cá với một chút Muối, Tiêu Đen và Sả băm nhỏ trong khoảng 15 phút.',
           FALSE,
           1,
           now(),
           5
       );

-- Bước 2: Sơ chế Rau Củ và Chuẩn bị vị Chua
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cắt Cà Chua múi cau, Đậu Bắp cắt xéo, Hoa Chuối thái mỏng, sau đó ngâm trong nước có pha chút chanh/giấm để không bị đen. Pha Nước Cốt Me với nước nóng, bỏ bã để lấy nước cốt chua.',
           FALSE,
           2,
           now(),
           5
       );

-- Bước 3: Xào Thơm và Đun Nước
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Dầu Ăn Thực Vật vào nồi, phi thơm Sả băm và Tỏi (nếu có). Cho Cà Chua vào xào sơ để lấy màu. Đổ khoảng 1.5 - 2 lít nước vào nồi và đun sôi.',
           FALSE,
           3,
           now(),
           5
       );

-- Bước 4: Thả Cá và Nêm Vị Chua Ngọt
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi nước sôi già, nhẹ nhàng thả Cá Lóc đã ướp vào (không khuấy). Nêm ngay nước cốt Me, Nước Mắm, Đường Cát và Muối. Đảm bảo nếm vị chua ngọt hài hòa, đậm đà.',
           FALSE,
           4,
           now(),
           5
       );

-- Bước 5: Thêm Rau Củ
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi cá gần chín và nổi lên (khoảng 5-7 phút), lần lượt cho các loại rau củ lâu chín như Củ Cải Trắng vào trước, sau đó là Đậu Bắp (ID 102).',
           FALSE,
           5,
           now(),
           5
       );

-- Bước 6: Hoàn thiện Vị
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thả Hoa Chuối vào nồi (chỉ cần nhúng). Nêm nếm lại lần cuối. Tắt bếp khi cá và rau đã chín tới.',
           FALSE,
           6,
           now(),
           5
       );

-- Bước 7: Trình bày và Thưởng thức
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc canh ra tô. Rắc Ngò Gai và Ớt Tươi cắt lát lên trên. Món này dùng nóng với cơm trắng và một chén nước mắm ớt rất ngon.',
           FALSE,
           7,
           now(),
           5
       );


-- Recipe ID: 6
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           10,
           '2025-10-28 07:00:00',
           'Công thức Bánh Mì Trứng Ốp La cực nhanh gọn, chỉ mất 10 phút để hoàn thành. Đây là lựa chọn hoàn hảo cho bữa sáng bận rộn, cung cấp đầy đủ năng lượng với protein từ trứng và carbohydrate từ bánh mì.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Bánh Mì Trứng Ốp La 10 Phút',
           '2025-10-28 07:00:00',
           0,
           13,
           10
       );

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh mì sandwich hoặc bánh mì Việt Nam.', 2, TRUE, 'lát', now(), 52, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để ốp la.', 2, TRUE, 'quả', now(), 14, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phết bánh mì hoặc rán trứng.', 10, TRUE, 'gram', now(), 63, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'nhúm', now(), 71, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'nhúm', now(), 73, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sốt ăn kèm.', 15, TRUE, 'gram', now(), 81, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sốt ăn kèm.', 15, TRUE, 'gram', now(), 96, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát, cho vào kẹp bánh mì (tùy chọn).', 50, FALSE, 'gram', now(), 27, 6);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát, cho vào kẹp bánh mì (tùy chọn).', 50, FALSE, 'gram', now(), 26, 6);

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/ru2kqdxhxcezuswnmv1z', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763903434/cooki-note/recipes/ru2kqdxhxcezuswnmv1z.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 26, 6);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phết một lớp Bơ Lạt mỏng lên 2 lát Bánh Mì. Nướng bánh mì trong lò nướng, nồi chiên không dầu hoặc áp chảo nhanh khoảng 2-3 phút cho đến khi bánh mì giòn và vàng nhẹ.',
           FALSE,
           1,
           now(),
           6
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với một chút Dầu Ăn Thực Vật hoặc Bơ Lạt (nếu cần). Đập 2 quả Trứng Gà vào chảo. Rán trứng ốp la theo độ chín mong muốn (lòng đào hoặc chín kỹ). Nêm chút Muối và Tiêu Đen lên trứng.',
           FALSE,
           2,
           now(),
           6
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thái lát Dưa Chuột và Cà Chua (nếu sử dụng).',
           FALSE,
           3,
           now(),
           6
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt trứng ốp la lên một lát bánh mì đã nướng. Xếp Dưa Chuột và Cà Chua thái lát lên trên (nếu có).',
           FALSE,
           4,
           now(),
           6
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phết Sốt Mayonnaise và Tương Ớt lên trứng. Gấp lát bánh mì còn lại lên trên (nếu dùng sandwich) hoặc dùng kèm ngay lập tức.',
           FALSE,
           5,
           now(),
           6
       );

-- Recipe ID: 7
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           5,
           '2025-11-09 06:30:00',
           'Công thức Yến Mạch Ngâm Qua Đêm (Overnight Oats) thuần chay, không sữa động vật, không nấu nướng. Bữa sáng hoàn hảo cho người ăn chay, Eat Clean, chỉ cần 5 phút chuẩn bị vào tối hôm trước và ăn ngay vào sáng hôm sau.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Yến Mạch Ngâm Qua Đêm',
           '2025-11-09 06:30:00',
           0,
           13,
           8
       );

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Yến mạch cán dẹt (Old-fashioned oats) để ngâm.', 50, TRUE, 'gram', now(), 151, 7);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sữa hạnh nhân, sữa yến mạch hoặc sữa đậu nành.', 100, TRUE, 'ml', now(), 164, 7);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nghiền nát để tạo vị ngọt tự nhiên, hoặc cắt lát để trang trí.', 1, TRUE, 'trái', now(), 123, 7);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát, dùng để ngâm hoặc trang trí.', 50, TRUE, 'gram', now(), 129, 7);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giúp hỗn hợp ngâm đặc và sánh hơn.', 1, TRUE, 'muỗng canh', now(), 143, 7);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sử dụng nếu không quá khắt khe về thuần chay; có thể thay bằng Đường Cát (ID 58) hoặc Siro Phong.', 1, FALSE, 'muỗng cà phê', now(), 57, 7);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tăng hương vị.', 1, FALSE, 'giọt', now(), 193, 7);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm topping (có thể thay bằng hạt hạnh nhân/óc chó).', 10, FALSE, 'gram', now(), 145, 7);

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/a9349dzjt8fbklrixsud', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763903866/cooki-note/recipes/a9349dzjt8fbklrixsud.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 27, 7);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho 50g Yến Mạch và 1 muỗng canh Hạt Chia vào hũ hoặc hộp đựng thực phẩm có nắp đậy. Trộn đều hai nguyên liệu khô này lại với nhau.',
           FALSE,
           1,
           now(),
           7
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ 100ml Sữa Hạt (như sữa hạnh nhân hoặc sữa đậu nành) và thêm 1 muỗng cà phê Mật Ong (hoặc chất tạo ngọt thuần chay khác) vào hỗn hợp khô. Thêm 1 giọt Tinh Dầu Vani nếu muốn tăng hương thơm.',
           FALSE,
           2,
           now(),
           7
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nghiền nát 1/2 trái Chuối và cho vào hỗn hợp để tạo độ ngọt tự nhiên và độ sánh. Đậy nắp hũ lại và lắc đều hoặc dùng muỗng khuấy kỹ.',
           FALSE,
           3,
           now(),
           7
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt hũ yến mạch vào ngăn mát tủ lạnh. Ngâm tối thiểu 6 tiếng hoặc lý tưởng nhất là qua đêm. Quá trình này giúp yến mạch và hạt chia nở ra, tạo độ sệt hoàn hảo.',
           FALSE,
           4,
           now(),
           7
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sáng hôm sau, mở nắp và kiểm tra độ sệt. Thêm Chuối cắt lát, Dâu Tây cắt lát và rắc Hạt Hướng Dương (hoặc các loại hạt tùy thích) lên trên. Thưởng thức lạnh.',
           FALSE,
           5,
           now(),
           7
       );

-- Recipe ID: 8
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-12-01 08:00:00',
           'Công thức Cháo Trắng Thịt Bằm cơ bản, dễ làm, hoàn hảo cho bữa sáng ấm bụng hoặc khi cần món ăn nhẹ. Thịt bằm được ướp và xào sơ tạo hương vị đậm đà cho cháo.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Cháo Trắng Thịt Bằm Đơn Giản',
           '2025-12-01 08:00:00',
           0,
           13,
           12
       );

INSERT INTO media (created_at, public_id, type, updated_at, url)
VALUES (now(), 'cooki-note/recipes/vqlypdvsojwn0zswwgck', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763904157/cooki-note/recipes/vqlypdvsojwn0zswwgck.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 28, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gạo tẻ ngon để nấu cháo.', 150, TRUE, 'gram', now(), 47, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt nạc vai băm nhỏ.', 200, TRUE, 'gram', now(), 1, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, dùng để ướp và phi thơm.', 2, TRUE, 'củ', now(), 38, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ, dùng để rắc.', 50, TRUE, 'gram', now(), 37, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, dùng để ướp thịt (tùy chọn).', 10, FALSE, 'gram', now(), 40, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và nêm cháo.', 3, TRUE, 'muỗng canh', now(), 75, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm cháo.', 1, TRUE, 'muỗng cà phê', now(), 71, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và rắc cháo.', 1, TRUE, 'muỗng cà phê', now(), 73, 8);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào thịt.', 1, TRUE, 'muỗng canh', now(), 66, 8);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Vo sạch Gạo Tẻ. Cho gạo và khoảng 1.5 - 2 lít nước vào nồi. Nấu sôi, sau đó hạ lửa nhỏ và hầm liu riu. Thỉnh thoảng khuấy đều để cháo không bị bén đáy nồi. Nêm một chút Muối vào cháo.',
           FALSE,
           1,
           now(),
           8
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Ướp Thịt Heo băm với một nửa lượng Tỏi băm, 1/2 muỗng cà phê Nước Mắm, và một chút Tiêu Đen. Trộn đều và để thịt ngấm gia vị trong lúc nấu cháo.',
           FALSE,
           2,
           now(),
           8
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn Thực Vật trong chảo. Phi thơm phần Tỏi băm còn lại. Cho thịt bằm đã ướp vào xào nhanh, đảo đều tay cho đến khi thịt săn lại và chín hoàn toàn. Nêm thêm chút Nước Mắm nếu cần.',
           FALSE,
           3,
           now(),
           8
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi hạt cháo nở bung và cháo đạt độ sánh mong muốn, cho phần thịt bằm đã xào (Bước 3) vào nồi cháo. Khuấy đều và đun thêm 2-3 phút. Nêm nếm lại bằng Muối hoặc Hạt Nêm (nếu có) và Nước Mắm cho vừa miệng.',
           FALSE,
           4,
           now(),
           8
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc cháo ra tô. Rắc nhiều Hành Lá cắt nhỏ và Tiêu Đen lên trên. Món này thường được ăn kèm với quẩy hoặc trứng vịt muối.',
           FALSE,
           5,
           now(),
           8
       );

-- Recipe ID: 9
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           60,
           '2025-12-01 16:00:00',
           'Công thức Nem Rán (Chả Giò) giòn rụm hoàn hảo, sử dụng kỹ thuật chiên hai lần (Double-Frying) để đảm bảo lớp vỏ vàng, giòn lâu, không bị ỉu. Nhân thập cẩm đậm đà, chuẩn vị miền Nam.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Chả Giò (Nem Rán) Chiên Hai Lần Giòn Lâu',
           '2025-12-01 16:00:00',
           0,
           14,
           16
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/zrrnrygjy3v3xo7sn5im', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763919933/cooki-note/recipes/zrrnrygjy3v3xo7sn5im.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 29, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt nạc vai băm, có chút mỡ.', 300, TRUE, 'gram', now(), 1, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tôm bóc vỏ, băm nhỏ.', 100, TRUE, 'gram', now(), 7, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm nở, thái sợi mỏng.', 30, TRUE, 'gram', now(), 131, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bào sợi nhỏ.', 100, TRUE, 'gram', now(), 28, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu, vắt bớt nước.', 50, TRUE, 'gram', now(), 36, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đánh tan, trộn vào nhân.', 1, TRUE, 'quả', now(), 14, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giúp nhân kết dính và hút nước, giữ chả giò giòn lâu.', 1, TRUE, 'muỗng canh', now(), 135, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nhân.', 1, TRUE, 'muỗng canh', now(), 75, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nhân.', 1, TRUE, 'muỗng cà phê', now(), 73, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh tráng loại cuốn chả giò.', 15, TRUE, 'cái', now(), 156, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Để chiên ngập dầu.', 500, TRUE, 'ml', now(), 66, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ăn kèm.', 1, TRUE, 'cây', now(), 25, 9);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau thơm ăn kèm.', 50, TRUE, 'gram', now(), 41, 9);

-- Bước 1: Chuẩn bị Nhân Chả Giò
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn đều Thịt Heo băm, Tôm Tươi băm, Nấm Mèo thái sợi, Cà Rốt bào sợi và Hành Tây thái hạt lựu. Đập 1 quả Trứng Gà vào, thêm Bột Chiên Giòn để kết dính. Nêm nếm với Nước Mắm (1 muỗng canh) và Tiêu Đen. Trộn nhẹ nhàng và để nhân nghỉ 15 phút.',
           FALSE,
           1,
           now(),
           9
       );

-- Bước 2: Chuẩn bị Bánh Tráng
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha một chén nước lọc ấm, thêm vài giọt giấm hoặc đường. Nhúng Bánh Tráng qua nước thật nhanh (không nhúng quá lâu). Hoặc dùng khăn ẩm đắp lên bánh tráng để làm mềm từ từ.',
           FALSE,
           2,
           now(),
           9
       );

-- Bước 3: Cuốn Chả Giò
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt bánh tráng đã làm mềm lên mặt phẳng. Cho một lượng nhân vừa đủ (khoảng 1 muỗng canh) vào gần mép bánh tráng. Gấp hai mép bánh tráng vào, sau đó cuộn chặt tay từ dưới lên. Cuốn cho đến khi hết nhân.',
           FALSE,
           3,
           now(),
           9
       );

-- Bước 4: Chiên Lần 1 (Sơ Chín)
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun nóng Dầu Ăn Thực Vật ở nhiệt độ **thấp** (khoảng 130°C - 140°C). Cho chả giò vào chiên sơ lần 1 cho đến khi chả giò vừa chín, vỏ hơi se lại và chuyển sang màu vàng nhạt. Vớt chả giò ra và để ráo dầu. Bước này giúp chả giò chín đều từ trong ra ngoài.',
           FALSE,
           4,
           now(),
           9
       );

-- Bước 5: Chiên Lần 2 (Tạo Độ Giòn)
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sau khi chả giò đã nguội hoàn toàn (khoảng 15-20 phút), tăng nhiệt độ dầu lên **cao** (khoảng 170°C - 180°C). Cho chả giò vào chiên lần 2. Chiên nhanh cho đến khi chả giò có màu vàng nâu đậm, giòn rụm. Vớt ra và đặt lên giấy thấm dầu.',
           FALSE,
           5,
           now(),
           9
       );

-- Bước 6: Pha Nước Chấm
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha Nước Mắm chua ngọt: Pha theo tỷ lệ 1 phần Nước Mắm, 1 phần Đường, 1 phần Nước Cốt Chanh và 3-4 phần nước lọc ấm. Thêm tỏi và ớt băm tùy khẩu vị.',
           FALSE,
           6,
           now(),
           9
       );

-- Bước 7: Trình bày và Thưởng thức
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trình bày chả giò ra đĩa. Ăn kèm với Xà Lách, Húng Quế và các loại rau sống khác. Chấm với nước mắm chua ngọt (Bước 6).',
           FALSE,
           7,
           now(),
           9
       );

-- Recipe ID: 10
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           50,
           '2025-11-21 11:00:00',
           'Công thức Bánh Xèo Miền Tây với vỏ bánh mỏng, giòn tan nhờ dùng bột gạo và nước cốt dừa. Nhân tôm, thịt heo và giá đỗ tươi ngon. Ăn kèm rau sống và nước chấm chua ngọt.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Bánh Xèo Giòn Rụm Nhân Tôm Thịt',
           '2025-12-21 11:00:00',
           0,
           14,
           6
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/bvcmafoatd8jffk0ocyz', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763920298/cooki-note/recipes/bvcmafoatd8jffk0ocyz.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 30, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột gạo loại thường.', 200, TRUE, 'gram', now(), 146, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo độ béo cho vỏ bánh.', 100, TRUE, 'ml', now(), 198, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo màu vàng cho vỏ bánh.', 1, TRUE, 'muỗng cà phê', now(), 147, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, cho vào bột.', 30, TRUE, 'gram', now(), 37, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ hoặc nạc vai thái lát mỏng.', 150, TRUE, 'gram', now(), 1, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bóc vỏ, làm sạch.', 200, TRUE, 'gram', now(), 7, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rửa sạch, để ráo.', 200, TRUE, 'gram', now(), 31, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát mỏng.', 50, TRUE, 'gram', now(), 36, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xào nhân và đổ bánh.', 100, TRUE, 'ml', now(), 66, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và tôm.', 2, TRUE, 'muỗng canh', now(), 75, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau cuốn.', 1, TRUE, 'cây', now(), 25, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau thơm cuốn kèm.', 50, TRUE, 'gram', now(), 113, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 2, TRUE, 'muỗng canh', now(), 79, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 3, TRUE, 'muỗng canh', now(), 58, 10);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát, pha nước chấm.', 2, TRUE, 'trái', now(), 83, 10);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn Bột Gạo Tẻ, Bột Nghệ và một chút muối. Từ từ đổ Nước cốt dừa lon và nước lọc vào hỗn hợp, khuấy đều cho bột tan hết (hỗn hợp bột phải thật lỏng, gần như nước). Cho Hành Lá thái nhỏ vào bột. Để bột nghỉ ít nhất 30 phút hoặc tốt nhất là 1-2 giờ để bột đạt độ giòn tối đa.',
           FALSE,
           1,
           now(),
           10
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Heo thái lát mỏng, Tôm Tươi làm sạch. Ướp Tôm và Thịt với một chút Nước Mắm, tiêu và Hành tím (nếu có). Rửa sạch Xà Lách, Lá Bạc Hà và Giá Đỗ, để ráo nước.',
           FALSE,
           2,
           now(),
           10
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ăn Thực Vật. Cho Hành Tây thái lát mỏng vào phi thơm. Tiếp theo cho Thịt Heo và Tôm vào xào nhanh, nêm nếm lại cho vừa ăn. Múc nhân ra đĩa, chừa lại một chút dầu trong chảo.',
           FALSE,
           3,
           now(),
           10
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo thật nóng (ưu tiên dùng chảo chống dính). Cho một ít Dầu Ăn Thực Vật vào. Múc một vá bột (khoảng 1/2 chén) đổ nhanh vào chảo, nghiêng chảo để bột tráng mỏng và tròn đều. Đậy nắp chảo trong khoảng 1 phút.',
           FALSE,
           4,
           now(),
           10
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi vỏ bánh khô ráo và bắt đầu giòn, mở nắp. Cho một lượng nhân (Tôm, Thịt đã xào) và một nắm Giá Đỗ vào nửa bên của bánh. Gấp đôi bánh lại và tiếp tục chiên thêm 1-2 phút cho bánh thật giòn rồi vớt ra.',
           FALSE,
           5,
           now(),
           10
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lau chảo (nếu cần) và lặp lại Bước 4 và 5 cho đến khi hết bột và nhân. Luôn đảm bảo chảo thật nóng trước khi đổ bột để bánh được giòn.',
           FALSE,
           6,
           now(),
           10
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước chấm chua ngọt: Trộn Nước Mắm, Đường Cát, Nước Cốt Chanh và nước lọc ấm theo tỷ lệ vừa ăn. Thêm Ớt Tươi và tỏi băm. Bánh Xèo được ăn nóng, cuốn với Xà Lách và Lá Bạc Hà, chấm ngập trong nước chấm chua ngọt.',
           FALSE,
           7,
           now(),
           10
       );

-- Recipe ID: 11
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           100,
           '2025-11-15 10:00:00',
           'Bò Kho truyền thống với nước dùng đậm đà, thịt bò mềm tan trong miệng và hương thơm của sả, gừng. Món này thường được ăn kèm với bánh mì, hủ tiếu hoặc cơm nóng.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Bò Kho Nước Dừa',
           '2025-11-15 10:00:00',
           0,
           14,
           13
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/s0pe5czulgq7rgrza3uq', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763920638/cooki-note/recipes/s0pe5czulgq7rgrza3uq.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 31, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bắp bò hoặc nạm bò, cắt khối vuông 3-4cm.', 800, TRUE, 'gram', now(), 3, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khúc vừa ăn, bo tròn cạnh.', 300, TRUE, 'gram', now(), 106, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khối vuông, ngâm nước muối loãng.', 200, TRUE, 'gram', now(), 150, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tăng độ béo, cho vào cuối cùng.', 100, TRUE, 'ml', now(), 198, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Một phần đập dập hầm, một phần băm nhỏ ướp.', 50, TRUE, 'gram', now(), 40, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Khử mùi tanh và ướp thịt.', 20, TRUE, 'gram', now(), 39, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gia vị đặc trưng.', 1, TRUE, 'muỗng cà phê', now(), 185, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha loãng để tạo độ sánh cho nước dùng.', 1, TRUE, 'muỗng canh', now(), 134, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và nêm nếm.', 3, TRUE, 'muỗng canh', now(), 75, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và nêm nếm.', 2, TRUE, 'muỗng canh', now(), 58, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Để xào thịt.', 1, TRUE, 'muỗng canh', now(), 66, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo màu và vị cay nhẹ (tùy chọn).', 1, FALSE, 'muỗng cà phê', now(), 81, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ăn kèm.', 4, FALSE, 'cái', now(), 52, 11);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ, rắc trang trí.', 30, FALSE, 'gram', now(), 37, 11);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Bò rửa sạch, cắt khối vuông 3-4cm. Trụng sơ thịt qua nước sôi có lát Gừng đập dập để khử mùi. Ướp thịt với Bột Ngũ Vị Hương, Nước Mắm, Đường Cát, Tương Ớt (nếu dùng), và phần Sả băm nhỏ. Để thịt nghỉ ít nhất 30 phút.',
           FALSE,
           1,
           now(),
           11
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cà Rốt và Khoai Tây gọt vỏ, cắt khúc vừa ăn. Ngâm Khoai Tây trong nước muối loãng để không bị thâm. Sả còn lại đập dập, cắt khúc 5cm.',
           FALSE,
           2,
           now(),
           11
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn Thực Vật trong nồi, phi thơm phần Gừng và Sả đập dập. Cho Thịt Bò đã ướp vào xào săn lại ở lửa lớn trong khoảng 5 phút. Việc này giúp thịt bò không bị ra nước khi hầm.',
           FALSE,
           3,
           now(),
           11
       );

-- Bước 4: Thêm Nước và Hầm Thịt
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ nước lọc hoặc nước dừa tươi (tùy chọn) vào ngập thịt. Đun sôi, sau đó hạ lửa nhỏ và hầm thịt. Hầm khoảng **60-70 phút** cho đến khi thịt bò bắt đầu mềm. Lưu ý vớt bọt thường xuyên để nước dùng được trong.',
           FALSE,
           4,
           now(),
           11
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi thịt bò gần mềm, cho Cà Rốt và Khoai Tây vào hầm chung. Tiếp tục hầm cho đến khi cả thịt và củ quả đều chín mềm (khoảng **20-30 phút** nữa).',
           FALSE,
           5,
           now(),
           11
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Hòa Bột Bắp (hoặc Bột Năng) với một chút nước lạnh. Từ từ đổ hỗn hợp này vào nồi, khuấy đều để nước dùng sánh lại. Thêm Nước cốt dừa lon vào, đun sôi nhẹ rồi tắt bếp. Nêm nếm lại lần cuối.',
           FALSE,
           6,
           now(),
           11
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Bò Kho ra tô, rắc Hành Lá thái nhỏ và Tiêu Đen lên trên. Bò Kho được ăn nóng, kèm với Bánh Mì nướng giòn, hủ tiếu, hoặc cơm trắng.',
           FALSE,
           7,
           now(),
           11
       );

-- Recipe ID: 12
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           70,
           '2025-11-13 09:30:00',
           'Cá Kho Tộ truyền thống với thịt cá săn chắc, nước sốt kẹo lại màu cánh gián đậm đà, thơm mùi tiêu đen và hành lá. Thích hợp ăn kèm với cơm nóng và dưa chuột.',
           'MEDIUM',
           FALSE,
           TRUE,
           3,
           'Cá Kho Tộ Đậm Đà',
           '2025-11-13 09:30:00',
           0,
           14,
           15
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/acjoqzgpl7q5elqbdo7l', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763921054/cooki-note/recipes/acjoqzgpl7q5elqbdo7l.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 32, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá lóc hoặc cá basa/cá hú, cắt khúc dày 2-3cm.', 600, TRUE, 'gram', now(), 10, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước mắm cốt để ướp và kho cá.', 5, TRUE, 'muỗng canh', now(), 75, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để thắng nước màu (caramel) và nêm nếm.', 4, TRUE, 'muỗng canh', now(), 58, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp và rắc sau cùng (phần lớn).', 2, TRUE, 'muỗng cà phê', now(), 73, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phần đầu trắng băm nhỏ ướp, phần lá cắt khúc rắc cuối.', 50, TRUE, 'gram', now(), 37, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ để phi thơm.', 30, TRUE, 'gram', now(), 38, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát hoặc để nguyên trái kho cùng.', 3, FALSE, 'trái', now(), 83, 12);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để làm nước màu.', 1, TRUE, 'muỗng canh', now(), 66, 12);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cá Lóc rửa sạch, cắt khúc. Dùng Muối và Gừng (nếu có) chà xát để khử mùi tanh. Ướp cá với 1/2 lượng Nước Mắm, 1/2 lượng Đường Cát, Tiêu Đen, và phần đầu trắng của Hành Lá (ID 37) băm. Để cá thấm gia vị khoảng **20-30 phút**.',
           FALSE,
           1,
           now(),
           12
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho 1 muỗng canh Đường Cát (ID 58) và 1 muỗng canh Dầu Ăn Thực Vật (ID 66) vào niêu đất (tộ) hoặc nồi nhỏ. Đun trên lửa vừa đến khi đường tan chảy, chuyển sang màu cánh gián đậm thì tắt bếp. Cẩn thận không để đường bị cháy khét.',
           FALSE,
           2,
           now(),
           12
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho phần Tỏi (ID 38) băm vào nồi nước màu vừa thắng (Bước 2), phi thơm. Cho cá đã ướp (Bước 1) vào, xào sơ trên lửa lớn trong khoảng 2 phút để cá săn lại và thấm màu nhanh chóng.',
           FALSE,
           3,
           now(),
           12
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thêm phần Nước Mắm và Đường Cát còn lại vào nồi. Đổ một chút nước nóng (khoảng 1/2 chén) vào cho ngập cá. Cho Ớt Tươi nguyên trái (nếu dùng) vào.',
           FALSE,
           4,
           now(),
           12
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Kho cá trên lửa lớn đến khi nước sốt sôi bùng. Sau đó, hạ lửa xuống mức **nhỏ nhất** (liu riu), đậy nắp nồi. Kho trong khoảng 30 phút. Lưu ý không đảo cá để tránh làm nát cá.',
           FALSE,
           5,
           now(),
           12
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Mở nắp nồi. Tiếp tục kho thêm 30 phút nữa, thỉnh thoảng nghiêng nhẹ nồi để nước sốt ngấm đều. Khi nước sốt đã cạn và kẹo lại sánh mịn, bám đều quanh miếng cá, thì tắt bếp.',
           FALSE,
           6,
           now(),
           12
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rắc phần Tiêu Đen còn lại và Hành Lá thái nhỏ lên trên mặt cá khi còn nóng. Món Cá Kho Tộ ngon nhất khi được ăn nóng cùng cơm trắng.',
           FALSE,
           7,
           now(),
           12
       );

-- Recipe ID: 13
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           150,
           '2025-11-04 14:00:00',
           'Bún Bò Huế chuẩn vị với nước dùng hầm xương bò, chân giò heo, sả, gừng và mắm ruốc đặc trưng. Món ăn này cần thời gian nấu lâu để nước dùng đậm đà và cay nồng.',
           'HARD',
           FALSE,
           TRUE,
           4,
           'Bún Bò Huế',
           '2025-11-04 14:00:00',
           0,
           14,
           18
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/nmhsxdfklwqc1zxmp1qy', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763921376/cooki-note/recipes/nmhsxdfklwqc1zxmp1qy.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 33, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xương ống bò để hầm nước dùng. Cần chần qua nước sôi.', 1, TRUE, 'kg', now(), 13, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chân giò bó, luộc chung với xương bò.', 500, TRUE, 'gram', now(), 1, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gồm nạm bò (hầm) và thịt thăn (thái mỏng nhúng tái).', 500, TRUE, 'gram', now(), 3, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nguyên liệu quyết định hương vị Bún Bò Huế. Cần khuấy với nước ấm, lọc lấy nước cốt.', 3, TRUE, 'muỗng canh', now(), 188, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Một phần để hầm nước dùng, một phần để làm ớt sả.', 100, TRUE, 'gram', now(), 40, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nướng sơ hoặc đập dập để hầm cùng xương.', 50, TRUE, 'gram', now(), 39, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tăng hương vị cho phần ớt sả.', 1, TRUE, 'muỗng cà phê', now(), 185, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo màu đỏ đặc trưng cho nước dùng.', 2, TRUE, 'muỗng canh', now(), 132, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bún tươi sợi to, còn gọi là bún bò.', 1, TRUE, 'kg', now(), 155, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát, cho vào topping.', 200, TRUE, 'gram', now(), 162, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc chín, cắt khối vuông, cho vào topping.', 200, TRUE, 'gram', now(), 163, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ăn kèm.', 200, TRUE, 'gram', now(), 31, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi mỏng (có thể thay bằng bắp chuối).', 200, TRUE, 'gram', now(), 24, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Vắt thêm khi ăn.', 1, FALSE, 'trái', now(), 79, 13);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát thêm vào tô.', 3, FALSE, 'trái', now(), 83, 13);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chần Xương Bò, Thịt Heo (Chân Giò) và Nạm Bò qua nước sôi khoảng 5 phút. Rửa sạch lại, sau đó cho vào nồi lớn cùng Sả đập dập, Gừng nướng và 3-4 lít nước. Hầm ở lửa nhỏ trong ít nhất **2 giờ** để lấy nước dùng ngọt thanh. Vớt bọt thường xuyên.',
           FALSE,
           1,
           now(),
           13
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sau khi hầm 1 giờ, vớt Chân Giò ra và ngâm vào tô nước lạnh để thịt săn lại. Tiếp tục hầm Nạm Bò cho đến khi mềm (tổng cộng 2 giờ). Chân giò sau đó được thái lát mỏng, Nạm Bò thái miếng vuông.',
           FALSE,
           2,
           now(),
           13
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khuấy đều 3 muỗng canh Mắm Ruốc Huế với 1 chén nước ấm. Để yên 15 phút, sau đó lọc qua rây để loại bỏ cặn. Cho nước cốt mắm ruốc này vào nồi nước dùng (Bước 1) và nêm nếm lại bằng Muối, Đường cho vừa khẩu vị.',
           FALSE,
           3,
           now(),
           13
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phi thơm Sả băm và Ớt Tươi băm (hoặc bột ớt) với Dầu Ăn Thực Vật. Cho Dầu Điều và 1 muỗng cà phê Bột Ngũ Vị Hương vào xào nhanh để tạo màu và hương thơm. Tắt bếp và giữ hỗn hợp này riêng.',
           FALSE,
           4,
           now(),
           13
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ một nửa Sốt Ớt Sả (Bước 4) vào nồi nước dùng để tạo màu đỏ và vị cay. Thêm Tiết Heo (luộc chín) vào nồi. Giữ nồi nước dùng sôi liu riu trên bếp.',
           FALSE,
           5,
           now(),
           13
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trụng Bún Sợi Lớn qua nước sôi rồi cho vào tô. Xếp Chân Giò, Nạm Bò, Chả Lụa và Thịt Bò thăn (thái mỏng) lên trên bún.',
           FALSE,
           6,
           now(),
           13
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chế nước dùng nóng hổi ngập tô bún. Rắc Hành Lá và một chút tiêu lên trên. Bún Bò Huế được ăn kèm với Giá Đỗ, Bắp Cải thái sợi, Nước Cốt Chanh và Sốt Ớt Sả còn lại (tùy theo sở thích cay).',
           FALSE,
           7,
           now(),
           13
       );

-- Recipe ID: 14
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           12,
           '2025-11-05 07:30:00',
           'Bánh Mì Kẹp Phô Mai Nướng (Grilled Cheese Sandwich) với vỏ bánh mì giòn tan, lớp phô mai tan chảy béo ngậy bên trong. Công thức cổ điển của ẩm thực phương Tây, chỉ mất 12 phút để hoàn thành.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Bánh Mì Kẹp Phô Mai Nướng',
           '2025-11-05 07:30:00',
           0,
           13,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/myybhqcsgmumwtvqpylw', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763921693/cooki-note/recipes/myybhqcsgmumwtvqpylw.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 34, 14);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh mì sandwich cắt lát dày.', 2, TRUE, 'lát', now(), 52, 14);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phô mai Cheddar cắt lát hoặc bào sợi.', 60, TRUE, 'gram', now(), 172, 14);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thêm để tăng độ kéo sợi và độ béo.', 30, FALSE, 'gram', now(), 173, 14);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phết bên ngoài bánh mì trước khi nướng.', 1, TRUE, 'muỗng canh', now(), 196, 14);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn vào bơ để tăng hương vị (tùy chọn).', 0.25, FALSE, 'muỗng cà phê', now(), 175, 14);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm (tùy chọn).', 1, FALSE, 'nhúm', now(), 71, 14);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phết đều Bơ Lạt (ID 196) lên một mặt của mỗi lát Bánh Mì (ID 52). Nếu muốn, trộn thêm Bột Tỏi (ID 175) vào bơ trước khi phết. Mặt có phết bơ là mặt sẽ tiếp xúc với chảo/lò nướng.',
           FALSE,
           1,
           now(),
           14
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt 1 lát bánh mì xuống (mặt không bơ hướng lên). Xếp Phô Mai Cheddar (ID 172) và Phô Mai Mozzarella (ID 173) (nếu dùng) đều lên trên. Rắc một nhúm Muối (ID 71) nếu sử dụng phô mai nhạt.',
           FALSE,
           2,
           now(),
           14
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Úp lát bánh mì còn lại lên trên, **mặt bơ hướng lên ngoài cùng**. Bánh mì lúc này đã được kẹp kín, với hai mặt ngoài cùng đều có phết bơ.',
           FALSE,
           3,
           now(),
           14
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo chống dính ở lửa **nhỏ-vừa**. Đặt bánh mì kẹp vào chảo. Nướng/Áp chảo mỗi mặt khoảng 4-6 phút cho đến khi vỏ bánh giòn vàng đều và phô mai bên trong tan chảy hoàn toàn. **Quan trọng: Không dùng lửa lớn để tránh làm cháy bánh mì trước khi phô mai kịp tan**.',
           FALSE,
           4,
           now(),
           14
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy bánh mì ra khỏi chảo. Cắt đôi bánh theo đường chéo để thấy rõ lớp phô mai tan chảy kéo sợi. Thưởng thức ngay khi còn nóng, có thể dùng kèm súp cà chua (Tomato Soup) hoặc nước sốt ưa thích.',
           FALSE,
           5,
           now(),
           14
       );

-- Recipe ID: 15
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           50,
           '2025-11-06 08:00:00',
           'Bánh Cuốn Nóng với lớp vỏ bánh làm từ bột gạo mỏng, mịn, nhân thịt heo băm và nấm mèo (mộc nhĩ) thơm lừng. Thưởng thức kèm nước chấm chua ngọt và hành phi giòn.',
           'MEDIUM',
           FALSE,
           TRUE,
           3,
           'Bánh Cuốn Nóng Nhân Thịt Mộc Nhĩ',
           '2025-11-06 08:00:00',
           0,
           13,
           17
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/ia9ieuyjlhmgjpxkx1d7', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763921940/cooki-note/recipes/ia9ieuyjlhmgjpxkx1d7.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 35, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột gạo dùng để làm vỏ bánh.', 200, TRUE, 'gram', now(), 146, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn với bột gạo để bánh dẻo hơn.', 30, TRUE, 'gram', now(), 158, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt nạc vai băm nhỏ.', 200, TRUE, 'gram', now(), 1, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm nở, rửa sạch, thái sợi.', 30, TRUE, 'gram', now(), 131, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu, xào cùng nhân.', 50, TRUE, 'gram', now(), 36, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rắc lên bánh khi ăn.', 50, TRUE, 'gram', now(), 159, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để pha nước chấm.', 3, TRUE, 'muỗng canh', now(), 75, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để pha nước chấm.', 2, TRUE, 'muỗng canh', now(), 58, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để pha nước chấm.', 1, TRUE, 'muỗng canh', now(), 79, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát thêm vào nước chấm (tùy chọn).', 1, FALSE, 'trái', now(), 83, 15);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xào nhân và làm mỡ hành.', 50, TRUE, 'ml', now(), 66, 15);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn đều Bột Gạo Tẻ (ID 146) và Bột Năng (ID 158) với khoảng 400-450ml nước lạnh và một chút muối. Khuấy đều cho bột tan hoàn toàn. Để bột nghỉ ít nhất **2-3 giờ** hoặc qua đêm trong tủ lạnh để bánh được dẻo và mịn.',
           FALSE,
           1,
           now(),
           15
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phi thơm một chút Tỏi/Hành băm với Dầu Ăn Thực Vật (ID 66). Cho Thịt Heo băm (ID 1) vào xào săn, nêm chút nước mắm và tiêu. Thêm Nấm Mèo (ID 131) và Hành Tây (ID 36) thái hạt lựu vào xào nhanh. Tắt bếp và để nhân nguội.',
           FALSE,
           2,
           now(),
           15
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chuẩn bị bộ nồi tráng bánh cuốn chuyên dụng (hoặc chảo chống dính). Đun sôi nước. Đặt vải tráng bánh lên. Khuấy bột (Bước 1) một lần nữa. Múc một vá bột, đổ nhanh và tráng mỏng, đều trên mặt vải. Đậy nắp khoảng 30-45 giây cho bánh chín.',
           FALSE,
           3,
           now(),
           15
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng que tre hoặc đũa gắp bánh ra mâm đã thoa dầu. Cho một lượng nhân (Bước 2) vừa đủ vào, cuốn lại nhẹ nhàng. Lặp lại cho đến khi hết bột. Phi thơm Hành Lá với Dầu Ăn Thực Vật còn lại để làm mỡ hành.',
           FALSE,
           4,
           now(),
           15
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha Nước Chấm (ID 75) chua ngọt: Pha nước mắm, Đường Cát (ID 58), Nước Cốt Chanh (ID 79) và nước ấm theo tỷ lệ vừa ăn (thường là 1 phần mắm, 1 phần đường, 1/2 phần chanh, 4 phần nước). Thêm Ớt Tươi (ID 83) và tỏi băm (nếu có).',
           FALSE,
           5,
           now(),
           15
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp Bánh Cuốn ra đĩa. Rưới một chút Mỡ Hành lên. Rắc Hành Phi (ID 159) giòn lên trên cùng. Ăn kèm với chả lụa (nếu có), rau thơm và chấm với nước chấm chua ngọt đã pha.',
           FALSE,
           6,
           now(),
           15
       );

-- Recipe ID: 16
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           15,
           '2025-10-27 08:30:00',
           'Trứng Cuộn Rau Củ (Gyeran Mari) mềm mịn, nhiều màu sắc, bổ sung protein và chất xơ. Một món ăn sáng hoặc ăn nhẹ lành mạnh, dễ chuẩn bị chỉ trong 15 phút.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Trứng Cuộn Rau Củ Kiểu Hàn Quốc (Gyeran Mari)',
           '2025-10-27 08:30:00',
           0,
           13,
           17
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/grm3edkmnhlch7fm0vqm', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763922302/cooki-note/recipes/grm3edkmnhlch7fm0vqm.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 36, 16);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trứng gà tươi.', 4, TRUE, 'quả', now(), 14, 16);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cà rốt băm nhỏ (giúp bánh dễ cuộn).', 30, TRUE, 'gram', now(), 17, 16);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ.', 20, TRUE, 'gram', now(), 37, 16);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu nhỏ (thêm màu sắc).', 30, TRUE, 'gram', now(), 30, 16);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 16);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để tráng chảo (lành mạnh hơn dầu ăn thông thường).', 1, TRUE, 'muỗng canh', now(), 157, 16);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm vào trứng (tùy chọn).', 0.25, FALSE, 'muỗng cà phê', now(), 183, 16);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đập 4 quả Trứng Gà (ID 14) vào tô. Cho Cà Rốt (ID 17), Hành Lá (ID 37) và Ớt Chuông Xanh (ID 30) đã thái nhỏ vào. Thêm Muối (ID 71) và Tiêu Xay (ID 183). Dùng đũa hoặc phới lồng đánh tan hỗn hợp trứng cho đến khi các nguyên liệu trộn đều.',
           FALSE,
           1,
           now(),
           16
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo chữ nhật hoặc chảo chống dính thường ở lửa **nhỏ**. Cho một chút Dầu Olive (ID 157) vào tráng đều. Đổ **1/3** hỗn hợp trứng vào chảo, nghiêng nhẹ để trứng dàn đều thành một lớp mỏng.',
           FALSE,
           2,
           now(),
           16
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi lớp trứng vừa se mặt (vẫn còn hơi ướt nhẹ), dùng spatula cuộn trứng lại khoảng **1/3** chiều dài của miếng trứng, đặt cuộn trứng về một phía của chảo.',
           FALSE,
           3,
           now(),
           16
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho một chút dầu vào phần chảo còn trống. Đổ tiếp **1/3** hỗn hợp trứng vào, để trứng chảy xuống dưới cuộn trứng đã có (nhấc nhẹ cuộn trứng lên để trứng mới chảy xuống). Khi trứng mới se mặt, cuộn tiếp cuộn trứng cũ về phía trước để bọc lấy lớp trứng mới. Lặp lại với 1/3 hỗn hợp trứng còn lại.',
           FALSE,
           4,
           now(),
           16
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sau khi hoàn thành cuộn trứng, lật cuộn trứng liên tục trên chảo ở lửa nhỏ để trứng chín đều và có màu vàng đẹp. Gắp trứng ra khỏi chảo, để nguội bớt rồi cắt thành các lát dày khoảng 1-2cm. Dùng nóng kèm tương ớt hoặc tương cà.',
           FALSE,
           5,
           now(),
           16
       );

-- Recipe ID: 17
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           5,
           '2025-11-08 07:00:00',
           'Sữa chua trái cây và hạt, được xếp lớp đẹp mắt, là bữa sáng nhanh, đầy đủ dinh dưỡng với protein từ sữa chua, chất xơ và vitamin từ trái cây, cùng chất béo lành mạnh từ các loại hạt.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Sữa Chua Trái Cây',
           '2025-11-08 07:00:00',
           0,
           13,
           17
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/iofatmbmg2vpyammfylt', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763922753/cooki-note/recipes/iofatmbmg2vpyammfylt.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 37, 17);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sữa chua không đường, giàu protein.', 150, TRUE, 'gram', now(), 192, 17);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát mỏng.', 50, TRUE, 'gram', now(), 109, 17);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rửa sạch.', 30, TRUE, 'gram', now(), 110, 17);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cung cấp chất xơ và độ giòn.', 30, TRUE, 'gram', now(), 174, 17);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm nở trước khi dùng (tùy chọn).', 1, FALSE, 'muỗng cà phê', now(), 178, 17);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thêm độ ngọt tự nhiên (tùy chọn).', 1, FALSE, 'muỗng cà phê', now(), 179, 17);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rửa sạch Dâu Tây (ID 109) và Việt Quất (ID 110). Cắt Dâu Tây thành lát mỏng. Nếu dùng Hạt Chia (ID 178), hãy ngâm hạt chia với một chút nước ấm khoảng 10 phút để hạt nở ra.',
           FALSE,
           1,
           now(),
           17
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy một ly hoặc cốc thủy tinh cao. Cho một lớp Sữa Chua Hy Lạp (ID 192) vào dưới đáy. Thêm một chút Mật Ong (ID 179) lên trên sữa chua (tùy chọn).',
           FALSE,
           2,
           now(),
           17
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tiếp theo, rải một lớp Yến Mạch Granola (ID 174) lên trên sữa chua. Xếp một nửa lượng Dâu Tây (ID 109) và Việt Quất (ID 110) lên trên granola. Thêm Hạt Chia đã ngâm (nếu dùng).',
           FALSE,
           3,
           now(),
           17
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lặp lại quy trình: thêm một lớp Sữa Chua Hy Lạp lên trên lớp trái cây. Tiếp đến là Granola và phần trái cây còn lại. Có thể trang trí bằng một lát dâu tây ở trên cùng.',
           FALSE,
           4,
           now(),
           17
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Món Sữa Chua Trái Cây (Yogurt Parfait) nên được dùng lạnh. Ăn ngay sau khi làm hoặc để trong tủ lạnh một thời gian ngắn. Có thể chuẩn bị trước vào buổi tối (Meal Prep) và dùng cho bữa sáng hôm sau.',
           FALSE,
           5,
           now(),
           17
       );

-- Recipe ID: 18
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-09 11:30:00',
           'Cơm Gà Xé Phay Lành Mạnh là món ăn giàu protein, ít chất béo, phù hợp cho bữa trưa công sở hoặc chế độ Eat Clean. Gà được luộc, xé phay và trộn với rau củ tươi cùng nước mắm chua ngọt nhẹ.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Cơm Gà Xé Phay Trộn Gỏi',
           '2025-11-09 11:30:00',
           0,
           12,
           4
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/lnligauvc74tqru5m0oz', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763923201/cooki-note/recipes/lnligauvc74tqru5m0oz.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 38, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ức gà lọc da và xương, dùng để luộc và xé phay.', 400, TRUE, 'gram', now(), 11, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gạo trắng hoặc gạo lứt, nấu cơm.', 200, TRUE, 'gram', now(), 148, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cà rốt bào sợi mỏng.', 100, TRUE, 'gram', now(), 16, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái mỏng, ngâm nước đá lạnh để giảm hăng.', 50, TRUE, 'gram', now(), 21, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau xanh ăn kèm.', 100, TRUE, 'gram', now(), 17, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau răm hoặc húng lủi, thái nhỏ.', 30, FALSE, 'gram', now(), 37, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước trộn gỏi.', 3, TRUE, 'muỗng canh', now(), 75, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước trộn gỏi.', 2, TRUE, 'muỗng canh', now(), 58, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước trộn gỏi.', 1.5, TRUE, 'muỗng canh', now(), 79, 18);


INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát, cho vào nước trộn (tùy chọn).', 1, FALSE, 'trái', now(), 83, 18);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rắc lên gỏi để tăng độ giòn.', 20, FALSE, 'gram', now(), 159, 18);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rửa sạch Ức Gà, luộc chín với một chút muối và gừng (nếu có) trong khoảng **15-20 phút**. Vớt gà ra, ngâm ngay vào tô nước đá lạnh để thịt săn chắc và trắng. Nấu Gạo thành cơm trắng hoặc cơm lứt.',
           FALSE,
           1,
           now(),
           18
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Gà sau khi nguội, dùng tay xé thành sợi vừa ăn. Hành Tây thái lát mỏng, ngâm trong nước đá lạnh hoặc nước giấm pha loãng để giảm độ hăng. Cà Rốt Sợi rửa sạch, vắt ráo.',
           FALSE,
           2,
           now(),
           18
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước trộn gỏi theo tỷ lệ: Nước Mắm, Đường Cát, Nước Cốt Chanh và một chút nước lọc ấm. Khuấy đều cho đường tan hết, thêm Ớt Tươi thái lát và tỏi băm (nếu có). Nêm nếm lại cho vừa vị chua, cay, mặn, ngọt.',
           FALSE,
           3,
           now(),
           18
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho thịt gà xé, Hành Tây, Cà Rốt Sợi, và Rau Thơm đã thái nhỏ vào tô lớn. Từ từ rưới khoảng **2/3** lượng nước trộn gỏi (Bước 3) vào, trộn nhẹ tay và đều để các nguyên liệu thấm gia vị. Tránh trộn quá lâu làm rau bị mềm.',
           FALSE,
           4,
           now(),
           18
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xới cơm ra đĩa hoặc hộp đựng. Đặt phần gỏi gà xé đã trộn lên trên. Rắc Hành Phi giòn lên trên cùng để tăng hương vị và độ giòn. Món này dùng lạnh hoặc ấm đều ngon.',
           FALSE,
           5,
           now(),
           18
       );

-- Recipe ID: 19
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           100,
           '2025-11-20 11:00:00',
           'Thịt Kho Trứng (Kho Tàu) với thịt ba chỉ mềm tan, trứng luộc thấm vị mặn ngọt đậm đà, nước kho màu cánh gián đẹp mắt. Món ăn truyền thống ăn kèm cơm trắng và dưa giá.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Thịt Kho Trứng Cút Nước Dừa',
           '2025-11-20 11:00:00',
           0,
           12,
           15
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/iapypjfm4yh9t3bf2do3', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763923635/cooki-note/recipes/iapypjfm4yh9t3bf2do3.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 39, 19);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ (ba rọi), cắt khối vuông 4-5cm.', 600, TRUE, 'gram', now(), 1, 19);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trứng gà hoặc trứng cút, luộc chín, bóc vỏ.', 8, TRUE, 'quả', now(), 14, 19);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước dừa xiêm, giúp nước kho trong và thịt mềm ngọt.', 500, TRUE, 'ml', now(), 198, 19);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước mắm ngon.', 5, TRUE, 'muỗng canh', now(), 75, 19);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để thắng nước màu và nêm nếm.', 4, TRUE, 'muỗng canh', now(), 58, 19);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ để ướp thịt.', 20, TRUE, 'gram', now(), 38, 19);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và rắc sau khi kho.', 1, TRUE, 'muỗng cà phê', now(), 183, 19);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Heo rửa sạch, cắt miếng vuông. Luộc sơ qua nước sôi có chút muối. Ướp thịt với một nửa lượng Nước Mắm, Tiêu Xay, và Tỏi băm. Để thịt nghỉ ít nhất **30 phút**.',
           FALSE,
           1,
           now(),
           19
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho 2 muỗng canh Đường Cát và 1 muỗng canh nước vào nồi. Đun trên lửa nhỏ đến khi đường chuyển sang màu cánh gián đậm thì cho một chút nước lọc vào để dừng quá trình caramel hóa (tạo nước màu).',
           FALSE,
           2,
           now(),
           19
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho thịt đã ướp (Bước 1) vào nồi nước màu (Bước 2), xào săn. Thêm phần Nước Mắm còn lại. Tiếp đến, đổ Nước Dừa Tươi vào ngập mặt thịt. Đun sôi rồi hạ lửa nhỏ nhất (liu riu).',
           FALSE,
           3,
           now(),
           19
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sau khi kho khoảng 30 phút, cho Trứng Gà luộc đã bóc vỏ vào kho cùng. Tiếp tục kho liu riu thêm **60 phút** nữa. Thỉnh thoảng trở thịt và trứng để thấm đều màu và gia vị.',
           FALSE,
           4,
           now(),
           19
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi thịt đã mềm như ý và nước kho đã kẹo lại, nêm nếm lại lần cuối với chút muối hoặc đường nếu cần. Món Thịt Kho Trứng được ăn nóng cùng cơm trắng và dưa giá (hoặc rau luộc). Rắc một chút tiêu lên trên khi dọn ra.',
           FALSE,
           5,
           now(),
           19
       );

-- Recipe ID: 20
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           55,
           '2025-11-11 12:00:00',
           'Bún Thịt Nướng với thịt heo được ướp đậm đà, nướng thơm lừng trên than hoặc bằng lò nướng. Món ăn này được trộn với bún tươi, rau sống giòn và nước chấm chua ngọt cay nhẹ.',
           'MEDIUM',
           FALSE,
           TRUE,
           3,
           'Bún Thịt Nướng',
           '2025-11-11 12:00:00',
           0,
           12,
           18
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/zi6fj5bb8b8xrhjxswwd', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763924406/cooki-note/recipes/zi6fj5bb8b8xrhjxswwd.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 40, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ hoặc thịt nạc vai, thái lát mỏng vừa để nướng.', 500, TRUE, 'gram', now(), 1, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhuyễn, chỉ dùng để ướp thịt.', 30, TRUE, 'gram', now(), 40, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhuyễn, dùng cho cả ướp thịt và pha nước chấm.', 20, TRUE, 'gram', now(), 38, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tổng cộng 5 muỗng canh (2 ướp thịt, 3 pha nước chấm).', 5, TRUE, 'muỗng canh', now(), 75, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tổng cộng 3 muỗng canh (1 ướp thịt, 2 pha nước chấm).', 3, TRUE, 'muỗng canh', now(), 58, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giúp thịt nướng mềm và lên màu đẹp.', 1, TRUE, 'muỗng canh', now(), 179, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giúp thịt đậm đà hơn.', 1, TRUE, 'muỗng canh', now(), 171, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bún tươi sợi nhỏ.', 600, TRUE, 'gram', now(), 155, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau sống ăn kèm.', 100, TRUE, 'gram', now(), 17, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi hoặc lát mỏng.', 1, TRUE, 'quả', now(), 32, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rang chín, giã dập, rắc lên trên.', 50, TRUE, 'gram', now(), 177, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rắc lên bún (tùy chọn).', 30, FALSE, 'gram', now(), 159, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 1, TRUE, 'muỗng canh', now(), 79, 20);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước lọc hoặc nước dừa tươi để pha loãng nước chấm.', 5, TRUE, 'muỗng canh', now(), 153, 20);


INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, dùng để pha nước chấm (tùy chọn).', 1, FALSE, 'phần', now(), 83, 20);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thái Thịt Ba Chỉ (hoặc nạc vai) thành lát mỏng vừa. Trộn thịt với Sả băm, Tỏi băm, Nước Mắm, Đường Cát, Mật Ong và Dầu Hào. Trộn đều và để thịt nghỉ ít nhất **1 giờ** (hoặc qua đêm trong tủ lạnh) cho thấm gia vị.',
           FALSE,
           1,
           now(),
           20
       );

-- Bước 2: Chuẩn bị Rau và Bún
INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rau Xà Lách và Dưa Chuột rửa sạch. Dưa chuột thái sợi hoặc thái lát mỏng. Bún Tươi trụng sơ qua nước nóng, để ráo. Chuẩn bị Lạc Rang giã dập và Hành Phi (tùy chọn).',
           FALSE,
           2,
           now(),
           20
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước chấm chua ngọt: Hòa tan Đường Cát trong Nước Lọc ấm. Thêm Nước Mắm và Nước Cốt Chanh. Khuấy đều. Cho Ớt và Tỏi băm nhỏ vào sau cùng. Nêm nếm lại cho vừa vị chua ngọt đậm đà.',
           FALSE,
           3,
           now(),
           20
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp thịt đã ướp lên vỉ nướng hoặc khay nướng. Nướng/áp chảo thịt cho đến khi chín vàng đều, thơm lừng và có màu đẹp. Trong quá trình nướng, có thể phết thêm một chút dầu ăn hoặc nước ướp còn lại để thịt không bị khô.',
           FALSE,
           4,
           now(),
           20
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho một lớp Rau Xà Lách và rau thơm vào tô, tiếp đến là Bún Tươi và Dưa Chuột. Xếp Thịt Nướng đã cắt miếng vừa ăn lên trên cùng. Rắc Lạc Rang giã dập và Hành Phi. Khi ăn, rưới nước chấm chua ngọt đã pha vào tô và trộn đều.',
           FALSE,
           5,
           now(),
           20
       );

-- Recipe ID: 21
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           45,
           '2025-11-21 11:30:00',
           'Sườn Xào Chua Ngọt với cốt sườn mềm thấm vị, nước sốt sánh đậm đà. Món ăn truyền thống hấp dẫn, dễ dàng kết hợp với cơm trắng trong bữa trưa.',
           'MEDIUM',
           FALSE,
           TRUE,
           3,
           'Sườn Non Xào Chua Ngọt',
           '2025-12-21 11:30:00',
           0,
           12,
           15
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/feedw3iwuwtvgogra99y', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763924999/cooki-note/recipes/feedw3iwuwtvgogra99y.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 41, 21);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sườn non (sườn cọng), chặt miếng vừa ăn.', 500, TRUE, 'gram', now(), 2, 21);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để làm nước màu và pha sốt chua ngọt.', 4, TRUE, 'muỗng canh', now(), 58, 21);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để ướp sườn và pha sốt.', 3, TRUE, 'muỗng canh', now(), 75, 21);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giấm trắng để tạo vị chua.', 3, TRUE, 'muỗng canh', now(), 70, 21);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tăng độ sánh và màu đỏ đẹp mắt cho sốt.', 2, TRUE, 'muỗng canh', now(), 176, 21);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, dùng để phi thơm.', 20, TRUE, 'gram', now(), 38, 21);

-- 7. Bột Năng (ID: 152)
INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp sơ sườn và giúp sốt sánh mịn hơn.', 1, TRUE, 'muỗng cà phê', now(), 152, 21);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để chiên sườn.', 50, TRUE, 'ml', now(), 66, 21);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sườn Heo rửa sạch, chần sơ qua nước sôi khoảng 2 phút để loại bỏ tạp chất, sau đó rửa lại. Ướp sườn với 1 muỗng canh Nước Mắm, 1/2 muỗng cà phê Đường Cát, một chút Tiêu và Bột Năng. Trộn đều và để nghỉ khoảng 15-20 phút.',
           FALSE,
           1,
           now(),
           21
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn Thực Vật. Cho sườn đã ướp vào chiên ngập dầu hoặc áp chảo với ít dầu cho đến khi sườn chín vàng đều các mặt. Vớt sườn ra, để ráo dầu. Lọc bớt dầu trong chảo, chỉ giữ lại một ít.',
           FALSE,
           2,
           now(),
           21
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một bát, trộn đều phần Đường Cát còn lại (khoảng 3.5 muỗng canh), Nước Mắm còn lại (2 muỗng canh), Giấm Gạo và Tương Cà. Đây là phần **nước sốt chua ngọt** chính. **Thắng nước màu:** Dùng một muỗng canh Đường Cát (nếu chưa dùng hết) và một chút nước trong chảo, đun đến khi chuyển màu cánh gián.',
           FALSE,
           3,
           now(),
           21
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phi thơm Tỏi băm với chút dầu còn lại trong chảo. Đổ sườn đã chiên (Bước 2) vào xào nhanh. Sau đó, đổ hỗn hợp nước sốt chua ngọt (Bước 3) vào. Đun lửa vừa.',
           FALSE,
           4,
           now(),
           21
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun sườn trên lửa nhỏ, đảo đều cho sốt bám và kẹo lại. Có thể thêm một chút nước hòa với Bột Năng (tùy chọn) để sốt sánh hơn. Khi sốt đã cô đặc, bám đều quanh miếng sườn, tắt bếp. Món Sườn Xào Chua Ngọt ăn nóng cùng cơm trắng.',
           FALSE,
           5,
           now(),
           21
       );

-- Recipe ID: 22
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-08 11:45:00',
           'Canh Bí Đỏ Nấu Thịt Băm là món canh thanh mát, bổ dưỡng, với bí đỏ mềm ngọt và thịt băm đậm đà. Rất dễ nấu và phù hợp với mọi lứa tuổi.',
           'EASY',
           FALSE,
           TRUE,
           4,
           'Canh Bí Đỏ Thịt Băm',
           '2025-11-08 11:45:00',
           0,
           12,
           15
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/yfbsgtyua3rzgmvgjtm6', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763925364/cooki-note/recipes/yfbsgtyua3rzgmvgjtm6.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 42, 22);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bí đỏ hồ lô hoặc bí đỏ loại khác, gọt vỏ, bỏ ruột, thái miếng vuông vừa ăn.', 400, TRUE, 'gram', now(), 200, 22);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt nạc vai heo băm hoặc xay sẵn.', 150, TRUE, 'gram', now(), 10, 22);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, dùng để phi thơm.', 10, TRUE, 'gram', now(), 38, 22);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và nêm canh.', 1, TRUE, 'muỗng canh', now(), 75, 22);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để nêm canh.', 1, FALSE, 'muỗng cà phê', now(), 58, 22);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để nấu canh.', 1, TRUE, 'lít', now(), 153, 22);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, rắc lên trên khi hoàn thành.', 1, FALSE, 'ít', now(), 39, 22);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Băm ướp với một chút Nước Mắm và Tiêu xay (nếu có) trong khoảng 10 phút. Bí Đỏ gọt vỏ, bỏ ruột và thái miếng vuông vừa ăn.',
           FALSE,
           1,
           now(),
           22
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phi thơm Tỏi băm với một chút Dầu Ăn. Cho Thịt Băm đã ướp vào xào nhanh tay cho săn lại. Nêm thêm một chút Nước Mắm cho thịt đậm đà, sau đó múc thịt ra bát, để riêng.',
           FALSE,
           2,
           now(),
           22
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Nước Lọc vào nồi, đun sôi. Cho Bí Đỏ vào, hạ lửa vừa. Nấu cho đến khi bí mềm (khoảng 15-20 phút).  ',
           FALSE,
           3,
           now(),
           22
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi bí đã mềm, cho Thịt Băm đã xào (Bước 2) vào nồi canh. Nêm nếm lại với Nước Mắm và Đường Cát cho vừa khẩu vị. Đun sôi trở lại rồi tắt bếp.',
           FALSE,
           4,
           now(),
           22
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc canh ra tô. Rắc Hành Lá thái nhỏ và một chút Tiêu xay lên trên. Dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           22
       );

-- Recipe ID: 23
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-12-03 12:00:00',
           'Thịt Bò Xào Rau Củ là món ăn nhanh gọn, bổ dưỡng. Thịt bò mềm ngọt được xào cùng các loại rau củ giòn tươi, thấm vị. Rất phù hợp cho chế độ ăn lành mạnh.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Thịt Bò Xào Rau Củ Thập Cẩm',
           '2025-12-03 12:00:00',
           0,
           12,
           4
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/x5meiyp42lb1bzzqsp9p', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763925812/cooki-note/recipes/x5meiyp42lb1bzzqsp9p.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 43, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt bò thăn hoặc phi lê, thái lát mỏng.', 250, TRUE, 'gram', now(), 3, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ớt chuông đỏ và xanh, thái miếng vuông.', 150, TRUE, 'gram', now(), 30, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát mỏng vừa.', 50, TRUE, 'gram', now(), 16, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa ăn, chần sơ qua nước sôi.', 100, TRUE, 'gram', now(), 28, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và nêm sốt.', 2, TRUE, 'muỗng canh', now(), 75, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt giúp mềm và sốt đậm đà.', 1, TRUE, 'muỗng canh', now(), 172, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xào (thay thế dầu ăn thông thường).', 1, TRUE, 'muỗng canh', now(), 175, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt giúp giữ nước và mềm.', 1, FALSE, 'muỗng cà phê', now(), 152, 23);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt.', 1, TRUE, 'muỗng cà phê', now(), 183, 23);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Bò Thăn thái lát mỏng ngang thớ. Ướp thịt với Nước Tương, Dầu Hào, Bột Năng và Tiêu Xay. Trộn đều, thêm một chút Dầu Olive để giữ ẩm. Để thịt nghỉ khoảng **15 phút**.',
           FALSE,
           1,
           now(),
           23
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Ớt Chuông và Cà Rốt thái miếng vừa ăn. Bông Cải Xanh tách nhánh, chần sơ qua nước sôi khoảng 1-2 phút cho xanh và giòn, sau đó vớt ra ngâm nước lạnh. Tỏi băm nhỏ.',
           FALSE,
           2,
           now(),
           23
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với một chút Dầu Olive. Cho Tỏi băm vào phi thơm. Cho thịt bò đã ướp vào xào trên lửa lớn **khoảng 1-2 phút** cho đến khi thịt vừa tái. Múc thịt bò ra đĩa, giữ lại nước xào.',
           FALSE,
           3,
           now(),
           23
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng lại chảo vừa xào thịt, thêm chút dầu nếu cần. Cho Cà Rốt và Bông Cải Xanh vào xào trước (khoảng 2 phút). Sau đó cho Ớt Chuông vào, xào nhanh tay. Nêm thêm một chút gia vị (Nước Tương/Dầu Hào) nếu cần.',
           FALSE,
           4,
           now(),
           23
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Thịt Bò đã xào tái (Bước 3) vào chảo rau củ (Bước 4). Đảo nhanh tay **khoảng 30 giây** để thịt và rau củ quyện đều. Tắt bếp. Trình bày ra đĩa, rắc thêm Tiêu xay. Dùng nóng với cơm trắng hoặc cơm lứt.',
           FALSE,
           5,
           now(),
           23
       );

-- Recipe ID: 4
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-11-14 10:00:00',
           'Thịt Kho Tiêu (Thịt Ram Mặn) với thịt ba chỉ hoặc thịt nạc dăm được kho/ram săn lại, thấm vị mặn ngọt, cay nồng của tiêu đen và ớt. Món ăn đơn giản nhưng cực kỳ hao cơm.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Thịt Kho Tiêu',
           '2025-11-14 10:00:00',
           0,
           12,
           15
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/z4eqgkvxop1zmeq9taqs', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763956921/cooki-note/recipes/z4eqgkvxop1zmeq9taqs.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 44, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ hoặc thịt nạc dăm, thái lát mỏng vừa để ram.', 400, TRUE, 'gram', now(), 1, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để ướp và kho.', 3, TRUE, 'muỗng canh', now(), 75, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để thắng nước màu và nêm nếm.', 2, TRUE, 'muỗng canh', now(), 58, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tiêu đen xay, dùng ướp và rắc sau cùng.', 2, TRUE, 'muỗng cà phê', now(), 183, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, dùng để ướp thịt.', 10, TRUE, 'gram', now(), 38, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát, cho vào kho cùng (tùy chọn).', 1, FALSE, 'quả', now(), 83, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lấy phần đầu trắng, đập dập để ướp thịt.', 1, FALSE, 'nhánh', now(), 39, 24);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để ram/xào thịt.', 1, TRUE, 'muỗng canh', now(), 66, 24);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Heo rửa sạch, thái miếng mỏng vừa ăn. Ướp thịt với Tỏi băm, một nửa lượng Nước Mắm, 1 muỗng cà phê Tiêu Xay, và phần đầu trắng Hành Lá đập dập. Để thịt nghỉ khoảng **15 phút**.',
           FALSE,
           1,
           now(),
           24
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho 1 muỗng canh Đường Cát và một chút nước lọc vào nồi hoặc chảo. Đun trên lửa nhỏ đến khi đường chuyển sang màu cánh gián đậm. Thêm một chút nước lọc vào để dừng quá trình caramel hóa (tạo nước màu).',
           FALSE,
           2,
           now(),
           24
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Thịt Heo đã ướp vào nồi nước màu, đảo nhanh tay cho thịt săn lại và lên màu đẹp. Thêm phần Nước Mắm còn lại và phần Đường Cát còn lại vào. Đảo đều.',
           FALSE,
           3,
           now(),
           24
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thêm khoảng 1/3 chén nước lọc vào nồi (hoặc nước sôi), hạ lửa nhỏ nhất và rim thịt. Khi nước cạn và sốt sánh lại, bám đều vào thịt, nêm nếm lại cho vừa vị mặn ngọt. Cho Ớt Tươi thái lát (nếu dùng) vào. Tắt bếp.',
           FALSE,
           4,
           now(),
           24
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Thịt Kho Tiêu ra đĩa. Rắc đều phần Tiêu Xay còn lại lên trên để tạo hương thơm. Món này ăn nóng cùng cơm trắng là ngon nhất.',
           FALSE,
           5,
           now(),
           24
       );

--  Recipe ID: 25
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-20 10:00:00',
           'Thịt Bò Lúc Lắc là món ăn với thịt bò được cắt khối vuông, xào nhanh trên lửa lớn cùng rau củ, thấm vị đậm đà và giữ được độ mềm bên trong. Món ăn giàu protein, thích hợp cho bữa trưa nhanh gọn.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Thịt Bò Lúc Lắc',
           '2025-11-20 10:00:00',
           0,
           12,
           4
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/yxa8bdbkzmztabsjqary', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763957247/cooki-note/recipes/yxa8bdbkzmztabsjqary.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 45, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Thịt bò thăn hoặc phi lê, cắt khối vuông 2-3cm.', 300, TRUE, 'gram', '2025-11-20 10:00:00', 3, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Cắt miếng vuông vừa.', 1, TRUE, 'củ', '2025-11-20 10:00:00', 21, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Sử dụng ớt chuông đỏ hoặc vàng, cắt miếng vuông.', 1, TRUE, 'quả', '2025-11-20 10:00:00', 30, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Băm nhỏ.', 15, TRUE, 'gram', '2025-11-20 10:00:00', 38, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Dùng để xào bò, tăng hương vị.', 10, TRUE, 'gram', '2025-11-20 10:00:00', 178, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Ướp thịt.', 2, TRUE, 'muỗng canh', '2025-11-20 10:00:00', 75, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Ướp thịt.', 1, FALSE, 'muỗng canh', '2025-11-20 10:00:00', 172, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Tiêu đen xay, ướp thịt.', 1, TRUE, 'muỗng cà phê', '2025-11-20 10:00:00', 183, 25);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES ('2025-11-20 10:00:00', 'Xào rau củ.', 2, TRUE, 'muỗng canh', '2025-11-20 10:00:00', 186, 25);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Bò Thăn cắt thành các khối vuông khoảng 2-3cm. Ướp thịt với Nước Tương, Dầu Hào, 1/2 lượng Tiêu Xay, và một chút Tỏi băm. Trộn đều và để thịt nghỉ khoảng **15-20 phút**.',
           FALSE,
           1,
           now(),
           25
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Hành Tây và Ớt Chuông thái miếng vuông có kích cỡ tương đương với thịt bò. Phần tỏi băm còn lại giữ để phi thơm.',
           FALSE,
           2,
           now(),
           25
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ăn. Cho Hành Tây và Ớt Chuông vào xào nhanh trên lửa lớn **khoảng 1-2 phút** để rau củ vừa chín tới và giữ được độ giòn. Nêm một chút gia vị (muối/đường) cho đậm đà. Múc rau củ ra đĩa, để riêng.',
           FALSE,
           3,
           now(),
           25
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Vẫn dùng chảo đó, cho thêm Bơ Lạt vào đun chảy. Khi bơ nóng, cho Tỏi băm còn lại vào phi thơm. Tiếp theo, cho Thịt Bò đã ướp vào, xào trên **lửa thật lớn**. Đảo nhanh tay (lúc lắc) trong **khoảng 1-1.5 phút** để thịt bò cháy xém bên ngoài nhưng vẫn còn hồng bên trong.',
           FALSE,
           4,
           now(),
           25
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ rau củ đã xào (Bước 3) trở lại chảo thịt bò (Bước 4). Đảo nhanh **khoảng 30 giây** cho thịt và rau củ quyện vào nhau. Nêm nếm lại nếu cần. Tắt bếp, rắc phần Tiêu Xay còn lại lên trên. Món này thường ăn kèm với cơm hoặc khoai tây chiên, nhưng để ăn Eat Clean có thể dùng kèm salad.',
           FALSE,
           5,
           now(),
           25
       );

-- Recipe ID: 26
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-11-21 18:00:00',
           'Canh Khoai Mỡ Tôm Thịt với màu tím đẹp mắt, vị ngọt bùi của khoai mỡ, kết hợp vị đậm đà của tôm và thịt băm. Món canh thanh mát, dễ ăn, rất thích hợp cho bữa cơm tối gia đình.',
           'EASY',
           FALSE,
           TRUE,
           4,
           'Canh Khoai Mỡ Tôm Thịt',
           '2025-11-21 18:00:00',
           0,
           11,
           9
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/px364ukory7pvio4ylxc', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763957507/cooki-note/recipes/px364ukory7pvio4ylxc.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 46, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Khoai mỡ gọt vỏ, xay hoặc băm nhuyễn.', 400, TRUE, 'gram', now(), 120, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bóc vỏ, băm nhỏ.', 100, TRUE, 'gram', now(), 7, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt nạc vai băm nhỏ.', 100, TRUE, 'gram', now(), 1, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước dùng nấu canh.', 1, TRUE, 'lít', now(), 153, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp tôm thịt và nêm canh.', 1, TRUE, 'muỗng canh', now(), 75, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm canh.', 1, TRUE, 'muỗng cà phê', now(), 72, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm canh.', 0.5, FALSE, 'muỗng cà phê', now(), 58, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, rắc lên trên.', 1, FALSE, 'ít', now(), 37, 26);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào tôm thịt.', 1, TRUE, 'muỗng canh', now(), 66, 26);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tôm Tươi và Thịt Heo băm nhỏ trộn chung, ướp với một chút Nước Mắm, Hạt Nêm và Tiêu xay (nếu có). Khoai Mỡ gọt vỏ, rửa sạch, sau đó xay nhuyễn hoặc băm nhuyễn.',
           FALSE,
           1,
           now(),
           26
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn, phi thơm Tỏi băm. Cho hỗn hợp Tôm Thịt đã ướp vào xào nhanh tay cho săn lại và tôm chuyển màu hồng. Nêm thêm một chút gia vị (Nước Mắm) cho đậm đà.',
           FALSE,
           2,
           now(),
           26
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Nước Lọc vào nồi, đun sôi. Khi nước sôi, cho Tôm Thịt đã xào (Bước 2) vào. Khi nước sôi trở lại, từ từ cho Khoai Mỡ đã băm nhuyễn vào nồi. Dùng muỗng khuấy đều để khoai không bị vón cục.',
           FALSE,
           3,
           now(),
           26
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nấu canh khoảng 5-7 phút cho khoai chín mềm, có độ sánh và chuyển màu tím đẹp mắt. Nêm nếm lại với Hạt Nêm, Nước Mắm và Đường Cát cho vừa khẩu vị. Đun sôi nhẹ rồi tắt bếp.',
           FALSE,
           4,
           now(),
           26
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc canh ra tô. Rắc Hành Lá thái nhỏ và một chút Tiêu xay lên trên. Dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           26
       );

-- Recipe ID: 27
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-22 18:30:00',
           'Gà Kho Sả Ớt với thịt gà mềm, thấm đều gia vị, có vị cay nhẹ từ ớt và hương thơm nồng của sả. Món ăn này có thể ăn kèm với cơm nóng hoặc xôi trắng, rất hợp cho bữa tối.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Gà Kho Sả Ớt Cay Nồng',
           '2025-11-22 18:30:00',
           0,
           11,
           13
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/msb2eegx78mzbfgv6wx6', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763957770/cooki-note/recipes/msb2eegx78mzbfgv6wx6.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 47, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đùi, cánh hoặc thịt gà đã chặt miếng vừa ăn.', 500, TRUE, 'gram', now(), 3, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Một phần băm nhỏ (30g) để ướp, phần còn lại đập dập để kho.', 50, TRUE, 'gram', now(), 40, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát hoặc băm nhỏ tùy độ cay mong muốn.', 3, TRUE, 'trái', now(), 83, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp và kho gà.', 3, TRUE, 'muỗng canh', now(), 75, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để thắng nước màu và nêm nếm.', 2, TRUE, 'muỗng canh', now(), 58, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 15, TRUE, 'gram', now(), 38, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp gà.', 1, FALSE, 'muỗng canh', now(), 172, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo màu (dùng ID gần nhất).', 0.5, FALSE, 'muỗng cà phê', now(), 173, 27);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để phi sả/ớt.', 2, TRUE, 'muỗng canh', now(), 66, 27);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Gà rửa sạch, chặt miếng vừa. Ướp gà với Nước Mắm, Dầu Hào, Tỏi băm, một nửa lượng Sả băm và Bột Nghệ. Để gà nghỉ ít nhất **20 phút** cho thấm gia vị.',
           FALSE,
           1,
           now(),
           27
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong nồi hoặc chảo sâu, thắng 1 muỗng canh Đường Cát với một chút nước lọc để tạo nước màu cánh gián. Thêm Dầu Ăn Thực Vật. Cho phần Sả băm còn lại và Ớt Tươi cắt lát vào phi thơm.',
           FALSE,
           2,
           now(),
           27
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho gà đã ướp (Bước 1) vào nồi nước màu và sả ớt (Bước 2). Xào nhanh tay trên lửa lớn cho thịt gà săn lại và thấm đều màu.',
           FALSE,
           3,
           now(),
           27
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thêm phần Đường Cát còn lại và một chút nước nóng (hoặc nước dừa tươi nếu có) vào nồi, sao cho nước xâm xấp mặt thịt. Đun sôi rồi hạ lửa nhỏ nhất (liu riu). Cho Sả đập dập vào kho cùng.',
           FALSE,
           4,
           now(),
           27
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Kho gà trong khoảng **25-30 phút** cho đến khi nước kho cạn, sốt sệt lại và thịt gà mềm, thấm gia vị. Nêm nếm lại nếu cần. Tắt bếp, rắc Tiêu Xay (nếu có) lên trên. Dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           27
       );

-- Recipe ID: 28
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-23 19:00:00',
           'Cá Hồi Áp Chảo với lớp da giòn, thịt bên trong mềm ẩm, dùng kèm sốt bơ tỏi và rau củ luộc/hấp. Món ăn này giàu Omega-3, rất tốt cho sức khỏe và phù hợp cho bữa tối Eat Clean.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Cá Hồi Áp Chảo Sốt Bơ Tỏi Tiêu',
           '2025-11-23 19:00:00',
           0,
           11,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/lmgiz7qq80yitfpebdwq', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763958022/cooki-note/recipes/lmgiz7qq80yitfpebdwq.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 48, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá hồi cắt miếng dày 2-3cm, giữ nguyên da.', 300, TRUE, 'gram', now(), 11, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để áp chảo và làm sốt.', 30, TRUE, 'gram', now(), 178, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 15, TRUE, 'gram', now(), 38, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc/hấp ăn kèm.', 100, TRUE, 'gram', now(), 28, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát, luộc/hấp ăn kèm.', 50, TRUE, 'gram', now(), 16, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lấy nước cốt và vỏ bào (dùng ID Hành Tây nếu không có Chanh Vàng, hoặc ID Chanh Vàng 121).', 1, TRUE, 'trái', now(), 21, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp cá và nêm sốt.', 1, TRUE, 'muỗng cà phê', now(), 71, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tiêu đen xay, ướp cá và sốt.', 1, TRUE, 'muỗng cà phê', now(), 183, 28);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ, rắc lên sốt và trang trí.', 1, FALSE, 'ít', now(), 192, 28);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rửa sạch Cá Hồi, thấm khô hoàn toàn bằng giấy ăn. Ướp cá với Muối và Tiêu Xay, đặc biệt là phần da. Bông Cải Xanh và Cà Rốt cắt miếng vừa, luộc hoặc hấp chín tới.',
           FALSE,
           1,
           now(),
           28
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo chống dính. Cho một chút Dầu Olive (nếu có) vào chảo. Đặt cá hồi vào chảo, **mặt da úp xuống**. Áp chảo khoảng 3-4 phút cho da cá vàng giòn. Giảm lửa, trở mặt cá, áp chảo tiếp 2-3 phút tùy độ dày.',
           FALSE,
           2,
           now(),
           28
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sau khi trở mặt cá, thêm Bơ Lạt và Tỏi băm vào chảo. Dùng thìa múc bơ đang tan chảy rưới liên tục lên bề mặt cá. Nấu sốt thêm 1 phút.',
           FALSE,
           3,
           now(),
           28
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp. Nhanh chóng thêm Nước Cốt Chanh Vàng, Muối và Tiêu Xay vào sốt bơ tỏi trong chảo. Nghiêng chảo để trộn đều sốt. Nêm nếm lại cho vừa khẩu vị.',
           FALSE,
           4,
           now(),
           28
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt cá hồi ra đĩa, đặt rau củ luộc/hấp (Bước 1) bên cạnh. Rưới phần Sốt Bơ Tỏi Tiêu lên trên cá và rau củ. Rắc Lá Mùi Tây thái nhỏ lên trên để trang trí. Dùng nóng.',
           FALSE,
           5,
           now(),
           28
       );

-- Recipe ID: 29
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-11-24 18:45:00',
           'Canh Kim Chi Thịt Heo cay nồng, đậm đà với vị chua thanh của Kim Chi lên men, thịt heo mềm, và nước dùng ấm nóng. Món ăn này hoàn hảo để ăn kèm cơm trắng và các món phụ (Banchan) vào bữa tối.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Canh Kim Chi Thịt Heo (Kimchi Jjigae)',
           '2025-11-24 18:45:00',
           0,
           11,
           13
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/bkcpa7p49ksorqlwkgkk', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763958265/cooki-note/recipes/bkcpa7p49ksorqlwkgkk.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 49, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ hoặc nạc vai, thái miếng vừa.', 150, TRUE, 'gram', now(), 1, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Kim chi đã lên men chua là ngon nhất.', 200, TRUE, 'gram', now(), 140, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đậu phụ non hoặc đậu phụ thường, cắt khối vuông.', 1, TRUE, 'bìa', now(), 150, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sử dụng nước hầm xương heo hoặc nước lọc.', 400, TRUE, 'ml', now(), 153, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát mỏng.', 0.25, FALSE, 'củ', now(), 21, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, trang trí.', 1, FALSE, 'nhánh', now(), 39, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng loại ớt bột mịn hoặc thô, điều chỉnh độ cay.', 1, TRUE, 'muỗng canh', now(), 31, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm (dùng ID Dầu Hào nếu không có).', 1, FALSE, 'muỗng canh', now(), 172, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, TRUE, 'muỗng cà phê', now(), 38, 29);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào thịt.', 1, TRUE, 'muỗng canh', now(), 186, 29);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Heo thái miếng vừa, ướp sơ với một chút Tiêu. Làm nóng Dầu Ăn, cho Tỏi băm vào phi thơm. Cho Thịt Heo vào xào săn lại.',
           FALSE,
           1,
           now(),
           29
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Kim Chi Cải Thảo đã cắt khúc vào xào chung với thịt (Bước 1). Xào khoảng 3-5 phút. Thêm Ớt Bột Hàn Quốc (Gochugaru) và Nước Tương, đảo đều để tạo nền màu đỏ đẹp mắt cho canh.',
           FALSE,
           2,
           now(),
           29
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Nước Hầm Xương (hoặc nước lọc) vào nồi. Cho Hành Tây đã thái lát vào. Đun sôi, sau đó hạ lửa nhỏ và nấu liu riu khoảng **15-20 phút** cho Kim Chi mềm và nước canh thấm vị đậm đà.',
           FALSE,
           3,
           now(),
           29
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Đậu Phụ cắt khối vuông vào nồi, đun thêm 5 phút. Nêm nếm lại canh, có thể thêm một chút nước Kim Chi hoặc gia vị nếu cần. Tránh khuấy mạnh tay để đậu phụ không bị nát.',
           FALSE,
           4,
           now(),
           29
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp. Múc canh ra tô hoặc nồi đất. Rắc Hành Lá thái nhỏ lên trên. Món này thường ăn kèm với cơm trắng và các món phụ Hàn Quốc.',
           FALSE,
           5,
           now(),
           29
       );

-- Recipe ID: 30
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           60,
           '2025-11-25 19:15:00',
           'Thịt Kho Trứng Cút (Thịt Kho Tàu biến thể) với thịt ba chỉ mềm tan, thấm vị mặn ngọt đậm đà, ăn kèm trứng cút béo bùi. Món ăn này càng kho lâu càng ngon, rất lý tưởng cho bữa tối.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Thịt Ba Chỉ Kho Trứng Cút Đậm Đà',
           '2025-11-25 19:15:00',
           0,
           11,
           15
       );

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 39, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ có cả nạc và mỡ, cắt miếng vuông 3-4cm.', 500, TRUE, 'gram', now(), 1, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trứng cút luộc chín, bóc vỏ sạch.', 20, TRUE, 'quả', now(), 14, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp và kho thịt.', 4, TRUE, 'muỗng canh', now(), 75, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thắng nước màu và nêm nếm.', 3, TRUE, 'muỗng canh', now(), 58, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, dùng để ướp thịt.', 1, TRUE, 'củ', now(), 38, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lấy phần đầu trắng, đập dập, ướp thịt.', 1, FALSE, 'nhánh', now(), 39, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng nước dừa tươi để kho sẽ ngon hơn nước lọc (dùng ID Nước Lọc).', 300, TRUE, 'ml', now(), 153, 30);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt.', 1, TRUE, 'muỗng cà phê', now(), 183, 30);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Ba Chỉ rửa sạch, chần sơ qua nước sôi với chút muối và gừng để khử mùi, sau đó cắt miếng vuông. Ướp thịt với Tỏi băm, Đầu Hành Lá đập dập, 2 muỗng canh Nước Mắm, và Tiêu Xay. Để thịt nghỉ khoảng **30 phút**.',
           FALSE,
           1,
           now(),
           30
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho 2 muỗng canh Đường Cát và một chút nước lọc vào nồi. Đun lửa nhỏ cho đường tan chảy và chuyển sang màu cánh gián đậm (nước màu). Cho Thịt Ba Chỉ đã ướp vào, đảo nhanh tay cho thịt săn lại và thấm đều màu.',
           FALSE,
           2,
           now(),
           30
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Nước Dừa Tươi (hoặc nước lọc) vào nồi, thêm 2 muỗng canh Nước Mắm còn lại và 1 muỗng canh Đường Cát còn lại. Đun sôi rồi hạ lửa nhỏ nhất (liu riu) và kho thịt trong **ít nhất 30 phút**.',
           FALSE,
           3,
           now(),
           30
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sau 30 phút, khi thịt đã mềm, cho Trứng Cút đã bóc vỏ vào kho cùng. Tiếp tục kho thêm **15-20 phút** nữa cho trứng và thịt thấm đều nước kho đậm đà, nước sốt sánh lại. Nêm nếm lại nếu cần.',
           FALSE,
           4,
           now(),
           30
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp. Múc Thịt Kho Trứng Cút ra tô. Rắc một chút Tiêu Xay lên trên. Món này dùng nóng với cơm trắng, dưa giá hoặc rau luộc sẽ rất ngon.',
           FALSE,
           5,
           now(),
           30
       );

-- Recipe ID: 31
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-26 19:00:00',
           'Tôm Rim Nước Dừa có vị mặn ngọt đậm đà, thơm béo vị dừa. Tôm săn chắc, thấm màu đẹp mắt. Món này chế biến nhanh, là lựa chọn tuyệt vời cho bữa cơm tối.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Tôm Rim',
           '2025-11-26 19:00:00',
           0,
           11,
           9
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/t5hj6ptmqolikgrzxg3s', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763958847/cooki-note/recipes/t5hj6ptmqolikgrzxg3s.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 50, 31);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tôm sú hoặc tôm thẻ, cắt râu, rửa sạch.', 400, TRUE, 'gram', now(), 7, 31);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để tạo độ béo và giúp tôm săn.', 100, TRUE, 'ml', now(), 155, 31);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp và rim tôm.', 2, TRUE, 'muỗng canh', now(), 75, 31);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thắng nước màu và nêm nếm.', 2, TRUE, 'muỗng canh', now(), 58, 31);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, TRUE, 'củ', now(), 38, 31);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, trang trí.', 1, FALSE, 'nhánh', now(), 39, 31);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để phi tỏi.', 1, TRUE, 'muỗng canh', now(), 186, 31);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tôm Tươi rửa sạch, để ráo nước. Ướp tôm với 1 muỗng canh Nước Mắm, 1 muỗng cà phê Đường Cát, và một chút Tiêu xay (nếu có). Trộn đều và để tôm nghỉ khoảng **10 phút**.',
           FALSE,
           1,
           now(),
           31
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho 1 muỗng canh Đường Cát và một chút nước lọc vào chảo. Đun trên lửa nhỏ đến khi đường chuyển sang màu cánh gián đậm (nước màu). Cho Dầu Ăn và Tỏi băm vào phi thơm.',
           FALSE,
           2,
           now(),
           31
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Tôm đã ướp (Bước 1) vào chảo nước màu, đảo nhanh tay trên lửa lớn cho tôm săn lại và chuyển sang màu đỏ. Thêm Nước Mắm và Đường Cát còn lại vào, đảo đều.',
           FALSE,
           3,
           now(),
           31
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Nước Cốt Dừa vào chảo tôm. Hạ lửa nhỏ và rim tôm. Đun khoảng **5-7 phút** cho nước cốt dừa sệt lại, bám đều vào từng con tôm và tôm thấm gia vị.',
           FALSE,
           4,
           now(),
           31
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nêm nếm lại cho vừa khẩu vị. Tắt bếp. Múc Tôm Rim ra đĩa, rắc Hành Lá thái nhỏ lên trên để trang trí. Dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           31
       );

-- Recipe ID: 32
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-27 18:00:00',
           'Cá Chiên Sốt Cà Chua là món ăn quen thuộc, với miếng cá được chiên vàng giòn, sau đó chan sốt cà chua chua ngọt đậm đà. Phù hợp cho bữa tối gia đình nhanh gọn.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Cá Chiên Sốt Cà Chua Thơm Ngon',
           '2025-11-27 18:00:00',
           0,
           11,
           9
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/icgoxcnbdgingqupubku', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763959439/cooki-note/recipes/icgoxcnbdgingqupubku.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 51, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá thu hoặc cá lóc, cắt khúc vừa ăn.', 500, TRUE, 'gram', now(), 12, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cà chua chín đỏ, băm nhỏ hoặc xay nhuyễn để làm sốt.', 300, TRUE, 'gram', now(), 26, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, trang trí.', 1, FALSE, 'nhánh', now(), 37, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp cá và nêm sốt.', 2, TRUE, 'muỗng canh', now(), 75, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm sốt.', 1, TRUE, 'muỗng canh', now(), 58, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo vị chua thanh cho sốt (tùy chọn).', 1, FALSE, 'muỗng cà phê', now(), 70, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phủ ngoài cá trước khi chiên.', 1, TRUE, 'muỗng canh', now(), 152, 32);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để chiên cá.', 100, TRUE, 'ml', now(), 66, 32);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cá Thu (hoặc cá khác) rửa sạch, thấm khô. Ướp cá với chút Muối, Tiêu và Nước Mắm. Sau đó, lăn cá qua một lớp mỏng Bột Năng.',
           FALSE,
           1,
           now(),
           32
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn Thực Vật trong chảo. Cho cá vào chiên trên lửa vừa cho đến khi cá vàng đều và giòn hai mặt. Vớt cá ra, đặt lên giấy thấm dầu.',
           FALSE,
           2,
           now(),
           32
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng lại chảo chiên cá (lọc bớt dầu nếu quá nhiều). Phi thơm Tỏi băm. Cho Cà Chua băm nhuyễn/xay vào xào. Thêm một chút nước lọc (hoặc nước dùng) nếu sốt quá đặc.',
           FALSE,
           3,
           now(),
           32
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nêm sốt với Nước Mắm, Đường Cát, Giấm Gạo (tùy chọn), và một chút Tiêu xay. Nấu sốt khoảng 5-7 phút cho sốt sánh lại. Nêm nếm lại cho vừa vị chua ngọt đậm đà.',
           FALSE,
           4,
           now(),
           32
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp cá đã chiên ra đĩa. Rưới đều Sốt Cà Chua lên trên miếng cá. Rắc Hành Lá thái nhỏ và Tiêu xay lên trên. Món này dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           32
       );

-- Recipe ID: 33
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-28 19:30:00',
           'Tôm Sốt Bơ Tỏi Nướng Phô Mai là món Âu-Á hiện đại, tôm được nướng nhanh với sốt bơ tỏi thơm lừng, phủ lớp phô mai tan chảy béo ngậy. Thích hợp ăn kèm bánh mì bơ tỏi hoặc salad.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Tôm Sốt Bơ Tỏi Nướng Phô Mai (Fusion)',
           '2025-11-28 19:30:00',
           0,
           11,
           6
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/rktkyre2a4tcbacswnlg', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763959675/cooki-note/recipes/rktkyre2a4tcbacswnlg.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 52, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tôm sú hoặc tôm thẻ, bóc vỏ, chừa đuôi. Xẻ lưng rút chỉ đen.', 300, TRUE, 'gram', now(), 7, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để làm sốt bơ tỏi.', 40, TRUE, 'gram', now(), 63, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 20, TRUE, 'gram', now(), 38, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phô mai bào sợi, dùng để nướng.', 50, TRUE, 'gram', now(), 64, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lấy nước cốt, tạo vị chua nhẹ cho sốt.', 0.5, TRUE, 'trái', now(), 121, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, trộn vào sốt.', 1, FALSE, 'nhánh', now(), 37, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tiêu đen xay, nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 33);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ, trang trí (hoặc thay bằng hành lá).', 1, FALSE, 'ít', now(), 100, 33);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tôm làm sạch, xẻ lưng để rút chỉ đen, giữ lại đuôi. Trải tôm ra khay nướng hoặc đĩa sứ có thể chịu nhiệt. Làm nóng lò nướng ở nhiệt độ **180°C (350°F)**.',
           FALSE,
           1,
           now(),
           33
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun chảy Bơ Lạt. Cho Tỏi băm vào, phi thơm nhẹ nhàng (không để tỏi cháy). Nêm sốt với Muối, Tiêu Đen xay, và Nước Cốt Chanh Vàng. Thêm Hành Lá thái nhỏ vào trộn đều.',
           FALSE,
           2,
           now(),
           33
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng thìa rưới đều Sốt Bơ Tỏi lên bề mặt từng con tôm đã xếp trên khay. Đảm bảo tôm được bao phủ hoàn toàn bởi sốt. Cho tôm vào lò nướng đã làm nóng (Bước 1), nướng khoảng **8 phút**.',
           FALSE,
           3,
           now(),
           33
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy khay tôm ra khỏi lò. Rắc đều Phô Mai Mozzarella bào sợi lên trên. Cho lại vào lò và nướng thêm **3-5 phút** nữa cho đến khi phô mai tan chảy hoàn toàn và có màu vàng nhẹ.',
           FALSE,
           4,
           now(),
           33
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy tôm ra khỏi lò. Rắc Rau Mùi Tây (hoặc Hành Lá) cắt nhỏ lên trên để trang trí. Dùng nóng ngay với bánh mì nướng bơ tỏi hoặc cơm trắng.',
           FALSE,
           5,
           now(),
           33
       );

-- Recipe ID: 34
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           15,
           '2025-11-29 11:00:00',
           'Salad Bơ Gà là món ăn Eat Clean lý tưởng, giàu chất béo lành mạnh (avocado) và protein (ức gà), rất phù hợp cho bữa trưa Low Carb hoặc giảm cân. Món ăn tươi mát, không cần nấu nướng phức tạp.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Salad Bơ Gà Đầy Đủ Dinh Dưỡng',
           '2025-11-29 11:00:00',
           0,
           10,
           4
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/lyl3to2mpvkr1yeipnub', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763966463/cooki-note/recipes/lyl3to2mpvkr1yeipnub.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 53, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ức gà luộc, hấp hoặc áp chảo chín, xé nhỏ hoặc thái lát.', 200, TRUE, 'gram', now(), 3, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khối vuông.', 1, TRUE, 'trái', now(), 124, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau xanh hỗn hợp hoặc xà lách Romaine.', 100, TRUE, 'gram', now(), 25, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cà chua bi, cắt đôi.', 50, TRUE, 'gram', now(), 26, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm dressing.', 2, TRUE, 'muỗng canh', now(), 67, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm dressing.', 1, TRUE, 'muỗng canh', now(), 79, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm dressing.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 34);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm dressing.', 0.5, TRUE, 'muỗng cà phê', now(), 183, 34);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Luộc, hấp hoặc áp chảo Thịt Gà cho chín hoàn toàn. Để nguội bớt, sau đó xé nhỏ hoặc cắt miếng vừa ăn (nếu đã chuẩn bị sẵn thịt gà luộc sẽ tiết kiệm thời gian hơn).',
           FALSE,
           1,
           now(),
           34
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rửa sạch Xà Lách và Cà Chua (bi). Cắt đôi Cà Chua bi. Bơ Sáp lột vỏ, bỏ hạt và cắt thành các khối vuông vừa ăn. Đảm bảo rau đã được làm ráo nước hoàn toàn.',
           FALSE,
           2,
           now(),
           34
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một bát nhỏ, trộn đều Dầu Ô Liu (Olive Oil) và Nước Cốt Chanh. Nêm nếm với Muối và Tiêu Xay cho vừa vị chua mặn. Khuấy đều để các thành phần hòa quyện.',
           FALSE,
           3,
           now(),
           34
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Xà Lách, Cà Chua, Thịt Gà và Bơ Sáp vào tô lớn. Từ từ rưới Nước Sốt (Dressing) đã pha (Bước 3) lên trên. Trộn nhẹ nhàng và đều tay để rau và thịt thấm sốt.',
           FALSE,
           4,
           now(),
           34
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc salad ra đĩa, có thể rắc thêm các loại hạt (như Hạt Óc Chó hoặc Hạnh Nhân) lên trên để tăng độ giòn và chất béo lành mạnh (tùy chọn). Thưởng thức ngay để đảm bảo rau củ tươi mát.',
           FALSE,
           5,
           now(),
           34
       );

-- Recipe ID: 35
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-11-18 19:00:00',
           'Ức Gà Nướng Mật Ong Tỏi là món ăn Eat Clean lý tưởng, giàu protein, ít chất béo. Thịt gà mềm, thơm mùi tỏi và ngọt nhẹ của mật ong, ăn kèm rau củ hấp hoặc nướng.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Ức Gà Nướng Mật Ong Tỏi (Protein Cao)',
           '2025-11-18 19:00:00',
           0,
           10,
           17
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/dgl77zwbo28henbuo2k5', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763966892/cooki-note/recipes/dgl77zwbo28henbuo2k5.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 54, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ức gà lọc da, bỏ xương.', 300, TRUE, 'gram', now(), 3, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha sốt ướp.', 2, TRUE, 'muỗng canh', now(), 80, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 15, TRUE, 'gram', now(), 38, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha sốt ướp.', 1, TRUE, 'muỗng canh', now(), 76, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha sốt, giúp gà mềm.', 1, TRUE, 'muỗng canh', now(), 67, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa, ăn kèm.', 100, TRUE, 'gram', now(), 23, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát, ăn kèm.', 50, TRUE, 'gram', now(), 19, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 35);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 35);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một bát nhỏ, trộn đều Mật Ong, Nước Tương, Dầu Ô Liu, Tỏi băm, Muối và Tiêu Đen xay. Khuấy đều để tạo thành sốt ướp.',
           FALSE,
           1,
           now(),
           35
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Gà (Ức) làm sạch, dùng dao khứa nhẹ vài đường trên miếng gà. Phết đều sốt ướp lên cả hai mặt của miếng gà. Để thịt gà nghỉ khoảng 10 phút. Làm nóng lò nướng ở nhiệt độ **200°C**.',
           FALSE,
           2,
           now(),
           35
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt gà lên khay nướng có lót giấy nến. Cho vào lò nướng và nướng khoảng **15 phút**. (Giữ lại một chút sốt để phết lên rau củ).',
           FALSE,
           3,
           now(),
           35
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong lúc gà nướng, trộn Bông Cải Xanh và Cà Rốt với phần sốt ướp còn lại (hoặc Dầu Ô Liu và Muối, Tiêu). Sau 15 phút, lấy khay gà ra, xếp rau củ xung quanh miếng gà. Cho lại vào lò và nướng thêm **15-20 phút** nữa cho gà và rau củ chín mềm.',
           FALSE,
           4,
           now(),
           35
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy gà ra khỏi lò. Cắt miếng vừa ăn. Dùng nóng kèm rau củ nướng. Món này có thể ăn kèm với cơm lứt hoặc quinoa để tăng chất xơ.',
           FALSE,
           5,
           now(),
           35
       );

-- Recipe ID: 36
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-20 12:30:00',
           'Salad Quinoa Cá Ngừ là món ăn Eat Clean hoàn hảo, cung cấp đầy đủ protein, chất xơ và Omega-3. Quinoa thay thế tinh bột, kết hợp với rau củ tươi và cá ngừ (đóng hộp hoặc tươi) tiện lợi.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Salad Quinoa Cá Ngừ Đầy Đủ Dinh Dưỡng',
           '2025-11-20 12:30:00',
           0,
           10,
           4
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/t3rgnjk3zjzfdljyivuy', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763967125/cooki-note/recipes/t3rgnjk3zjzfdljyivuy.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 55, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Hạt quinoa, rửa sạch.', 100, TRUE, 'gram', now(), 142, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá ngừ đóng hộp, vớt ráo nước/dầu (sử dụng ID Sốt Cá Ngừ).', 150, TRUE, 'gram', now(), 188, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt đôi.', 50, TRUE, 'gram', now(), 26, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt hạt lựu.', 50, TRUE, 'gram', now(), 27, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xà lách/rau cải xoăn.', 50, TRUE, 'gram', now(), 25, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu nhỏ (hoặc thay bằng hành tây thường).', 0.25, FALSE, 'củ', now(), 21, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm dressing.', 1.5, TRUE, 'muỗng canh', now(), 67, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm dressing.', 1, TRUE, 'muỗng canh', now(), 79, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm dressing (hoặc Giấm Gạo).', 0.5, FALSE, 'muỗng canh', now(), 78, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm dressing.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 36);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm dressing.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 36);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rửa sạch Hạt Quinoa. Cho quinoa vào nồi với lượng nước gấp đôi (tỷ lệ 1:2), thêm một nhúm Muối. Đun sôi, sau đó hạ lửa nhỏ, đậy nắp và nấu khoảng **15 phút** cho đến khi nước cạn và hạt nở mềm. Để nguội hoàn toàn.',
           FALSE,
           1,
           now(),
           36
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cà Chua Bi, Dưa Chuột và Hành Tây Đỏ thái hạt lựu. Rau Xanh rửa sạch, để ráo. Cá Ngừ đóng hộp vớt ra, dùng dĩa dằm nhẹ và vắt bỏ bớt nước/dầu thừa.',
           FALSE,
           2,
           now(),
           36
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một bát nhỏ, trộn đều Dầu Ô Liu, Nước Cốt Chanh, Giấm Táo (nếu dùng), Muối và Tiêu Đen. Khuấy mạnh tay để hỗn hợp sốt hòa quyện.',
           FALSE,
           3,
           now(),
           36
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong tô lớn, cho Quinoa đã nguội, Cá Ngừ, Dưa Chuột, Hành Tây, và Cà Chua Bi vào. Rưới Nước Sốt (Dressing) đã pha (Bước 3) lên trên. Trộn nhẹ nhàng và đều tay.',
           FALSE,
           4,
           now(),
           36
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lót Rau Xanh (Xà Lách) dưới đáy đĩa. Múc hỗn hợp Quinoa Cá Ngừ đã trộn lên trên. Món này ăn lạnh sẽ ngon nhất và rất phù hợp cho việc chuẩn bị trước (Meal Prep).',
           FALSE,
           5,
           now(),
           36
       );

-- Recipe ID: 37
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-25 19:30:00',
           'Cá Nướng Giấy Bạc là món ăn Eat Clean hoàn hảo, giữ lại toàn bộ dưỡng chất và độ ẩm của cá. Thịt cá mềm thơm mùi chanh tỏi, ăn kèm rau củ (bông cải xanh, măng tây) hấp hoặc nướng.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Cá Nướng Giấy Bạc Kiểu Healthy',
           '2025-11-25 19:30:00',
           0,
           10,
           17
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/x4qflkshtsyqgo1epjwc', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763967423/cooki-note/recipes/x4qflkshtsyqgo1epjwc.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 56, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá Thu phi lê, làm sạch.', 300, TRUE, 'gram', now(), 12, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa, ăn kèm.', 150, TRUE, 'gram', now(), 23, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát mỏng và lấy nước cốt.', 0.5, TRUE, 'trái', now(), 121, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để ướp và phết cá.', 1, TRUE, 'muỗng canh', now(), 67, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 37);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ, trang trí/tăng mùi thơm.', 1, FALSE, 'ít', now(), 100, 37);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cá Phi Lê rửa sạch, thấm khô hoàn toàn. Ướp cá với Muối, Tiêu Đen, và một chút Nước Cốt Chanh. Làm nóng lò nướng ở nhiệt độ **200°C**.',
           FALSE,
           1,
           now(),
           37
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bông Cải Xanh cắt miếng vừa. Trộn rau củ với một chút Dầu Ô Liu, Muối và Tiêu Đen.',
           FALSE,
           2,
           now(),
           37
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn đều Dầu Ô Liu còn lại với Tỏi băm và một chút Nước Cốt Chanh. Đây là sốt phết lên cá và rau củ.',
           FALSE,
           3,
           now(),
           37
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trải một miếng giấy bạc (hoặc giấy nến) lớn. Đặt rau củ đã trộn (Bước 2) xuống dưới. Đặt miếng cá phi lê lên trên rau củ. Rưới đều sốt Tỏi (Bước 3) lên cá và rau củ. Đặt một lát Chanh Vàng lên trên cá.',
           FALSE,
           4,
           now(),
           37
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Gói giấy bạc lại thật kín (tạo thành một túi hấp kín). Cho vào lò và nướng khoảng **15-18 phút** cho đến khi cá chín mềm. Mở gói giấy bạc, rắc Rau Mùi Tây thái nhỏ lên trên. Dùng nóng.',
           FALSE,
           5,
           now(),
           37
       );

-- Recipe ID: 38
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-11-26 18:00:00',
           'Súp Kem Bí Đỏ Thuần Chay (Vegan) là món súp giàu dinh dưỡng, với vị ngọt bùi tự nhiên của bí đỏ. Sử dụng nước cốt dừa thay thế kem tươi, giúp món súp vẫn béo ngậy mà hoàn toàn từ thực vật.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Súp Kem Bí Đỏ',
           '2025-11-26 18:00:00',
           0,
           10,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/uz4qnawenuuqyzirf1ka', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763967702/cooki-note/recipes/uz4qnawenuuqyzirf1ka.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 57, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gọt vỏ, bỏ hạt, cắt miếng vuông.', 500, TRUE, 'gram', now(), 29, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng loại đóng hộp, tạo độ béo.', 100, TRUE, 'ml', now(), 69, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu.', 1, TRUE, 'củ', now(), 19, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sử dụng nước dùng rau củ hoặc nước lọc.', 500, TRUE, 'ml', now(), 173, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào sơ bí đỏ.', 1, TRUE, 'muỗng canh', now(), 67, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 71, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 38);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tăng hương vị (tùy chọn).', 0.5, FALSE, 'muỗng cà phê', now(), 97, 38);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bí Đỏ gọt vỏ, thái miếng. Làm nóng nồi với Dầu Ô Liu. Cho Hành Tây thái hạt lựu và Tỏi băm vào xào mềm (khoảng 3-5 phút) cho đến khi hành tây trong và thơm.',
           FALSE,
           1,
           now(),
           38
       );


INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Bí Đỏ đã thái vào nồi, xào chung với hành tỏi khoảng 5 phút. Nêm Muối, Tiêu Đen và Bột Ớt Paprika (nếu dùng). Đảo đều cho bí ngấm gia vị.',
           FALSE,
           2,
           now(),
           38
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Nước Dùng Rau Củ (hoặc nước lọc) vào nồi cho ngập bí đỏ. Đun sôi, sau đó hạ lửa nhỏ, đậy nắp và nấu khoảng **15-20 phút** cho đến khi bí đỏ mềm nhừ hoàn toàn.',
           FALSE,
           3,
           now(),
           38
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp. Dùng máy xay cầm tay hoặc máy xay sinh tố để xay nhuyễn hỗn hợp súp trong nồi cho đến khi súp mịn và không còn lợn cợn.',
           FALSE,
           4,
           now(),
           38
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bật bếp lại, cho súp trở lại nồi. Đổ Nước Cốt Dừa vào, khuấy đều. Đun nóng nhẹ (không đun sôi). Nêm nếm lại lần cuối. Trình bày ra bát, rắc thêm hạt bí rang hoặc lá rau thơm (tùy chọn). Dùng nóng.',
           FALSE,
           5,
           now(),
           38
       );

-- Recipe ID: 39
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-27 18:30:00',
           'Cà Ri Gà Sốt Dừa Lành Mạnh là món ăn giàu protein và chất xơ. Sốt cà ri được làm nhẹ nhàng hơn với ít dầu và sử dụng ức gà cùng nhiều rau củ như bí đỏ, khoai lang.',
           'MEDIUM',
           FALSE,
           TRUE,
           3,
           'Cà Ri Gà Sốt Dừa Lành Mạnh (Low Carb/High Protein)',
           '2025-11-27 18:30:00',
           0,
           10,
           4
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/pynnmzb4edfoe2jitpnz', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763968003/cooki-note/recipes/pynnmzb4edfoe2jitpnz.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 58, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ức gà lọc da, cắt khối vuông.', 300, TRUE, 'gram', now(), 3, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sử dụng nước cốt dừa lon ít béo (ID Nước dừa tươi).', 200, TRUE, 'ml', now(), 198, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột cà ri vàng/đỏ.', 2, TRUE, 'muỗng canh', now(), 86, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khối vuông.', 200, TRUE, 'gram', now(), 119, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt múi cau.', 1, TRUE, 'củ', now(), 19, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 39, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xào.', 1, TRUE, 'muỗng canh', now(), 67, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 71, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng canh', now(), 76, 39);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, trang trí.', 1, FALSE, 'ít', now(), 42, 39);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Gà (Ức) cắt khối vuông. Ướp gà với 1 muỗng canh Bột Cà Ri, Muối và Tiêu trong 10 phút. Khoai Lang gọt vỏ, cắt khối vuông. Hành Tây, Tỏi, Gừng băm nhỏ.',
           FALSE,
           1,
           now(),
           39
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng nồi với Dầu Ô Liu. Cho Tỏi, Gừng băm và Hành Tây vào xào thơm. Cho Thịt Gà đã ướp vào xào nhanh cho đến khi thịt săn lại.',
           FALSE,
           2,
           now(),
           39
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thêm 1 muỗng canh Bột Cà Ri còn lại vào nồi, đảo nhanh khoảng 1 phút. Cho Khoai Lang và một chút nước lọc vào xào chung (khoảng 3 phút).',
           FALSE,
           3,
           now(),
           39
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Nước Cốt Dừa vào nồi, thêm nước lọc cho vừa đủ độ sánh mong muốn. Đun sôi, sau đó hạ lửa nhỏ và nấu liu riu khoảng **20 phút** cho đến khi Khoai Lang mềm.',
           FALSE,
           4,
           now(),
           39
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nêm nếm lại với Muối, Nước Tương và một chút Đường (tùy chọn) cho vừa khẩu vị. Đun sôi lại rồi tắt bếp. Đảm bảo thịt gà chín mềm và khoai lang đã nhừ.',
           FALSE,
           5,
           now(),
           39
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Cà Ri Gà ra bát. Rắc Ngò Gai (hoặc rau thơm) thái nhỏ lên trên. Món này thường ăn kèm với cơm lứt, bún hoặc bánh mì (nếu không quá khắt khe về Low Carb).',
           FALSE,
           6,
           now(),
           39
       );

-- Recipe ID: 40
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           45,
           '2025-11-28 12:00:00',
           'Món cuộn rong biển với Cá Ngừ và Gạo Lứt là lựa chọn Eat Clean hoàn hảo. Cung cấp carbohydrate phức hợp, Omega-3 và rau xanh, thích hợp cho bữa trưa nhẹ hoặc ăn nhẹ sau tập luyện.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Cuộn Rong Biển Cá Ngừ & Gạo Lứt (Healthy Nori Rolls)',
           '2025-11-28 12:00:00',
           0,
           10,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/lqb7b4mnuwa0nlnigiha', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763968287/cooki-note/recipes/lqb7b4mnuwa0nlnigiha.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 59, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gạo lứt nấu chín, để nguội.', 150, TRUE, 'gram', now(), 150, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tấm rong biển khô (nori).', 4, TRUE, 'tấm', now(), 44, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá ngừ đóng hộp, vớt ráo nước/dầu.', 100, TRUE, 'gram', now(), 188, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát dài.', 0.5, TRUE, 'trái', now(), 124, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi dài.', 0.5, TRUE, 'trái', now(), 27, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng kèm.', 2, TRUE, 'muỗng canh', now(), 76, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn cá ngừ.', 0.5, FALSE, 'muỗng cà phê', now(), 79, 40);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng loại ít béo, trộn cá ngừ (tùy chọn).', 1, FALSE, 'muỗng canh', now(), 96, 40);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nấu chín Gạo Lứt (tương tự như nấu cơm). Để gạo nguội hoàn toàn. Gạo lứt cần được nấu chín và hơi dính để dễ cuộn.',
           FALSE,
           1,
           now(),
           40
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn Cá Ngừ đã vớt ráo nước/dầu với một chút Nước Cốt Chanh, Muối, Tiêu, và Sốt Mayonnaise (Light) nếu dùng. Dằm nhẹ nhàng.',
           FALSE,
           2,
           now(),
           40
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dưa Chuột gọt vỏ, thái sợi dài. Bơ Sáp lột vỏ, bỏ hạt, thái lát dài. Rau củ cần được thấm khô để cuộn không bị ướt.',
           FALSE,
           3,
           now(),
           40
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trải Tấm Rong Biển (Nori Sheet) lên mành tre. Dùng tay ướt lấy một lớp mỏng Gạo Lứt rải đều lên tấm rong biển (chừa lại 1-2 cm ở mép cuối). Xếp nhân Cá Ngừ, Dưa Chuột và Bơ Sáp thành hàng ngang gần mép dưới.',
           FALSE,
           4,
           now(),
           40
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cuộn mành tre lại thật chặt và đều tay. Khi cuộn gần hết, làm ướt mép rong biển còn lại để dán kín cuộn. Để cuộn nghỉ khoảng 5 phút trước khi cắt.',
           FALSE,
           5,
           now(),
           40
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng dao sắc nhúng qua nước để cắt cuộn rong biển thành các khoanh vừa ăn (khoảng 1.5 - 2 cm). Trình bày ra đĩa. Dùng kèm Nước Tương pha chút mù tạt (tùy chọn).',
           FALSE,
           6,
           now(),
           40
       );

-- Recipe ID: 41
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-15 17:30:00',
           'Súp Đậu Lăng Đỏ là món ăn thuần chay, giàu protein thực vật và chất xơ. Súp có hương vị ấm áp của các loại gia vị, rất thích hợp cho bữa tối nhẹ nhàng và lành mạnh.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Súp Đậu Lăng Đỏ',
           '2025-11-15 17:30:00',
           0,
           10,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/itviyqgyp3f8weimah2z', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763968684/cooki-note/recipes/itviyqgyp3f8weimah2z.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 60, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sử dụng Đậu Lăng Đỏ (hoặc Đậu Xanh), rửa sạch.', 150, TRUE, 'gram', now(), 152, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước dùng rau củ/Nước lọc.', 1, TRUE, 'lít', now(), 173, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu.', 1, TRUE, 'củ', now(), 19, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu nhỏ.', 50, TRUE, 'gram', now(), 16, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo màu và tăng hương vị.', 0.5, TRUE, 'muỗng cà phê', now(), 85, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gia vị đặc trưng, tạo hương thơm ấm áp.', 1, TRUE, 'muỗng cà phê', now(), 186, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thêm độ chua nhẹ và màu sắc (thay thế Tomato Paste).', 1, FALSE, 'muỗng canh', now(), 82, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xào.', 1, TRUE, 'muỗng canh', now(), 67, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 71, 41);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 41);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậu Lăng (hoặc Đậu Xanh) rửa sạch. Làm nóng nồi với Dầu Ô Liu. Cho Hành Tây thái hạt lựu và Tỏi băm vào xào mềm.',
           FALSE,
           1,
           now(),
           41
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thêm Cà Rốt thái hạt lựu vào xào chung. Cho Bột Nghệ và Bột Thì Là (Cumin) vào, xào nhanh khoảng 1 phút cho gia vị dậy mùi thơm. Thêm Tương Cà (Tomato Paste) vào, đảo đều.',
           FALSE,
           2,
           now(),
           41
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Đậu Lăng đã rửa sạch (Bước 1) và Nước Dùng Rau Củ vào nồi. Đun sôi, sau đó hạ lửa nhỏ, đậy nắp và nấu liu riu khoảng **25-30 phút**.',
           FALSE,
           3,
           now(),
           41
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Kiểm tra đậu lăng, đảm bảo đậu đã mềm và súp sánh lại. Nếu súp quá đặc, thêm một chút nước nóng. Nêm nếm lại bằng Muối và Tiêu Đen cho vừa khẩu vị.',
           FALSE,
           4,
           now(),
           41
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nếu muốn súp mịn hơn, dùng máy xay cầm tay xay sơ súp (tùy chọn). Múc súp ra bát. Có thể rưới thêm một chút Dầu Ô Liu hoặc nước cốt chanh tươi lên trên (tùy chọn). Dùng nóng.',
           FALSE,
           5,
           now(),
           41
       );

-- Recipe ID: 42
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           8,
           '2025-11-05 20:00:00',
           'Món mì gói (hoặc phở/bún khô) ăn liền nấu nhanh chỉ trong 8 phút. Thêm trứng và xúc xích để tăng dinh dưỡng và độ ngon. Món ăn cứu cánh cho những lúc bận rộn hoặc đêm khuya.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Mì Gói Nấu Nhanh Kèm Trứng Và Xúc Xích (8 Phút)',
           '2025-11-05 20:00:00',
           0,
           9,
           10
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/qr3z8k32g17wbwiihwq9', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763969115/cooki-note/recipes/qr3z8k32g17wbwiihwq9.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 61, 42);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Mì gói ăn liền (hoặc phở/bún khô).', 1, TRUE, 'gói', now(), 50, 42);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trứng tươi.', 1, TRUE, 'quả', now(), 14, 42);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xúc xích hoặc thịt nguội, thái lát.', 1, TRUE, 'cây', now(), 17, 42);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ.', 1, FALSE, 'ít', now(), 37, 42);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, FALSE, 'muỗng cà phê', now(), 73, 42);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để nấu mì.', 300, TRUE, 'ml', now(), 153, 42);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun sôi Nước Lọc trong nồi nhỏ hoặc ấm điện. Trong khi chờ, thái lát Xúc Xích và thái nhỏ Hành Lá. Chuẩn bị gia vị gói mì ra tô.',
           FALSE,
           1,
           now(),
           42
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi nước sôi, cho Mì Gói (Phở Khô) vào nồi, nấu khoảng 1-2 phút. Sau đó đập Trứng Gà vào, khuấy nhẹ nếu muốn trứng tan hoặc để nguyên lòng đỏ nếu muốn trứng ốp la.',
           FALSE,
           2,
           now(),
           42
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi trứng và mì vừa chín tới (khoảng 3-4 phút), tắt bếp. Múc mì và nước dùng ra tô đã có sẵn gia vị. Đặt Xúc Xích thái lát lên trên.',
           FALSE,
           3,
           now(),
           42
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rắc Hành Lá thái nhỏ và Tiêu Đen lên trên tô mì. Dùng nóng ngay lập tức.',
           FALSE,
           4,
           now(),
           42
       );

-- Recipe ID: 43
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           10,
           '2025-11-12 11:30:00',
           'Cơm Rang Trứng là giải pháp nấu nhanh chỉ trong 10 phút, lý tưởng để tận dụng cơm nguội có sẵn. Món ăn đơn giản, dễ làm, đủ dinh dưỡng cho một bữa ăn sáng hoặc trưa nhanh.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Cơm Rang Trứng Nhanh Gọn (10 Phút)',
           '2025-11-12 11:30:00',
           0,
           9,
           10
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/srsamcnpmj3pskwptwrv', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763969336/cooki-note/recipes/srsamcnpmj3pskwptwrv.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 62, 43);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cơm nguội, xới tơi ra.', 200, TRUE, 'gram', now(), 148, 43);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đánh tan.', 2, TRUE, 'quả', now(), 14, 43);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ.', 1, FALSE, 'ít', now(), 37, 43);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng canh', now(), 76, 43);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dầu ăn thông thường hoặc Dầu Ô Liu.', 1, TRUE, 'muỗng canh', now(), 67, 43);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 43);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 43);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đập Trứng Gà ra bát, đánh tan, nêm một chút Muối và Tiêu Đen.',
           FALSE,
           1,
           now(),
           43
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ô Liu. Cho Cơm nguội vào rang trên lửa lớn, đảo nhanh tay để hạt cơm tơi ra và nóng đều (khoảng 3 phút).',
           FALSE,
           2,
           now(),
           43
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tạo một khoảng trống ở giữa chảo cơm. Đổ Trứng đã đánh tan (Bước 1) vào khoảng trống đó. Nhanh chóng đảo cơm và trứng cho đến khi trứng bám đều quanh hạt cơm (cơm có màu vàng tươi).',
           FALSE,
           3,
           now(),
           43
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nêm Nước Tương, phần Muối và Tiêu còn lại vào cơm. Đảo đều lần cuối. Cuối cùng, cho Hành Lá thái nhỏ vào, đảo nhanh 30 giây rồi tắt bếp.',
           FALSE,
           4,
           now(),
           43
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc cơm ra đĩa. Có thể dùng kèm tương ớt hoặc dưa góp (tùy chọn). Thưởng thức nóng.',
           FALSE,
           5,
           now(),
           43
       );

-- Recipe ID: 44
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           15,
           '2025-11-15 13:00:00',
           'Mì Ý Sốt Bơ Tỏi là món ăn nấu nhanh, lý tưởng cho bữa trưa công sở hoặc bữa tối vội vã. Món mì đơn giản nhưng thơm lừng mùi bơ, tỏi và tiêu.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Mì Ý Sốt Bơ Tỏi Đơn Giản (15 Phút)',
           '2025-11-15 13:00:00',
           0,
           9,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/b0jlwdkbc97e2gphp0xc', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763969604/cooki-note/recipes/b0jlwdkbc97e2gphp0xc.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 63, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Spaghetti hoặc Linguine.', 100, TRUE, 'gram', now(), 51, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để làm sốt.', 15, TRUE, 'gram', now(), 63, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát mỏng.', 3, TRUE, 'tép', now(), 38, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xào và trộn sốt.', 1, TRUE, 'muỗng canh', now(), 67, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bào vụn (tùy chọn).', 5, FALSE, 'gram', now(), 65, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, rắc lên trên.', 1, FALSE, 'ít', now(), 100, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm và luộc mì.', 1, TRUE, 'muỗng cà phê', now(), 71, 44);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 44);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun sôi nước, thêm Muối. Cho Mì Ý vào luộc theo thời gian ghi trên bao bì (thường là 8-10 phút) cho đến khi mì đạt độ chín al dente (vừa chín tới). Vớt mì ra, giữ lại khoảng 1/4 chén nước luộc mì.',
           FALSE,
           1,
           now(),
           44
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong khi luộc mì, thái lát mỏng Tỏi. Làm nóng chảo với Dầu Ô Liu. Cho Tỏi vào phi thơm ở lửa nhỏ cho đến khi tỏi vàng và giòn. Tắt bếp.',
           FALSE,
           2,
           now(),
           44
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bật bếp lại ở lửa nhỏ. Cho Bơ Lạt vào chảo tỏi, để bơ tan chảy. Thêm Tiêu Đen và một nhúm Muối. Cho Nước Cốt Chanh (nếu dùng) và nước luộc mì đã giữ lại vào sốt, khuấy đều.',
           FALSE,
           3,
           now(),
           44
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Mì Ý đã luộc vào chảo sốt. Đảo nhanh tay trên lửa vừa khoảng 1 phút để mì thấm đều sốt và bơ. Nêm nếm lại gia vị lần cuối.',
           FALSE,
           4,
           now(),
           44
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc mì ra đĩa. Rắc Phô Mai Parmesan (nếu dùng) và Rau Mùi Tây thái nhỏ lên trên. Dùng nóng ngay.',
           FALSE,
           5,
           now(),
           44
       );

-- Recipe ID: 45
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           10,
           '2025-11-08 11:00:00',
           'Bánh Mì Nướng Phô Mai Tôm là món ăn sáng/trưa nhanh chóng, chỉ mất 10 phút để làm. Cung cấp protein và canxi dồi dào, phù hợp cho những ngày bận rộn.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Bánh Mì Nướng Phô Mai Tôm Cấp Tốc (10 Phút)',
           '2025-11-08 11:00:00',
           0,
           9,
           10
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/blmvdwc0zpa32gxynzj2', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763969896/cooki-note/recipes/blmvdwc0zpa32gxynzj2.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 64, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh mì sandwich.', 2, TRUE, 'lát', now(), 52, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, xào sơ (hoặc dùng tôm đã luộc).', 50, TRUE, 'gram', now(), 7, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phô mai bào sợi.', 50, TRUE, 'gram', now(), 64, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để phết bánh mì.', 15, TRUE, 'gram', now(), 63, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 5, TRUE, 'gram', now(), 38, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp tôm.', 0.5, FALSE, 'muỗng cà phê', now(), 76, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp tôm.', 0.25, FALSE, 'muỗng cà phê', now(), 73, 45);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào tôm.', 1, TRUE, 'muỗng cà phê', now(), 66, 45);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tôm làm sạch, băm nhỏ. Ướp tôm với Nước Tương và Tiêu Đen. Làm nóng Dầu Ăn, phi thơm Tỏi băm và cho tôm vào xào nhanh cho chín (khoảng 2 phút).',
           FALSE,
           1,
           now(),
           45
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phết đều Bơ Lạt lên một mặt của mỗi lát Bánh Mì. Xếp 1 lát bánh mì xuống (mặt không bơ hướng lên). Cho nhân tôm đã xào (Bước 1) lên trên. Rắc đều Phô Mai Mozzarella bào sợi.',
           FALSE,
           2,
           now(),
           45
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Úp lát bánh mì còn lại lên trên (mặt bơ hướng ra ngoài). Áp chảo sandwich trên lửa nhỏ-vừa hoặc nướng trong lò nướng/nồi chiên không dầu ở 180°C.',
           FALSE,
           3,
           now(),
           45
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Áp chảo mỗi mặt khoảng 3-4 phút (hoặc nướng khoảng 5 phút) cho đến khi bánh vàng giòn và phô mai tan chảy hoàn toàn. Cắt đôi bánh và dùng nóng ngay.',
           FALSE,
           4,
           now(),
           45
       );

-- Recipe ID: 46
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           15,
           '2025-11-09 12:45:00',
           'Mì Trứng Xào Rau Củ là món ăn tối giản, nhanh gọn, giàu chất xơ và vitamin. Mì được xào nhanh với tỏi và sốt đậm đà, hoàn thành chỉ trong 15 phút.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Mì Trứng Xào Rau Củ Nhanh Gọn (15 Phút)',
           '2025-11-09 12:45:00',
           0,
           9,
           13
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/twyq1t8c8ttgfbfosu2w', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763970156/cooki-note/recipes/twyq1t8c8ttgfbfosu2w.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 65, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Mì Ý hoặc mì trứng tươi, luộc chín.', 150, TRUE, 'gram', now(), 51, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa, chần sơ.', 100, TRUE, 'gram', now(), 23, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi hoặc lát mỏng.', 50, TRUE, 'gram', now(), 20, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm sốt xào.', 1.5, TRUE, 'muỗng canh', now(), 76, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm sốt xào.', 1, TRUE, 'muỗng canh', now(), 77, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, FALSE, 'muỗng cà phê', now(), 73, 46);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để xào.', 2, TRUE, 'muỗng canh', now(), 66, 46);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Luộc Mì Trứng/Mì Ý theo hướng dẫn trên bao bì, sau đó xả lại nước lạnh và để ráo. Bông Cải Xanh chần sơ qua nước sôi 1 phút. Cà Rốt thái sợi. Tỏi băm nhỏ.',
           FALSE,
           1,
           now(),
           46
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một bát nhỏ, trộn đều Nước Tương, Dầu Hào, và một chút Đường (tùy chọn) để làm nước sốt xào mì.',
           FALSE,
           2,
           now(),
           46
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ăn. Cho Tỏi băm vào phi thơm. Cho Cà Rốt và Bông Cải Xanh vào xào nhanh tay trên lửa lớn (khoảng 3 phút) cho rau củ vừa chín tới và giữ được độ giòn. Nêm chút Muối.',
           FALSE,
           3,
           now(),
           46
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Mì đã ráo nước và Rau Củ đã xào vào chảo. Đổ Nước Sốt Xào (Bước 2) lên trên. Đảo nhanh tay và đều khoảng 2 phút để mì thấm gia vị và nóng đều.',
           FALSE,
           4,
           now(),
           46
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc mì ra đĩa. Rắc Tiêu Đen lên trên (và một chút Hành Phi nếu có). Dùng nóng ngay lập tức.',
           FALSE,
           5,
           now(),
           46
       );

-- Recipe ID: 47
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           50,
           '2025-11-20 15:00:00',
           'Bánh Flan (Caramel Custard) truyền thống, thơm béo vị trứng sữa, mềm mịn, ăn kèm lớp caramel đắng nhẹ. Món tráng miệng kinh điển, thích hợp làm lạnh.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Bánh Flan Truyền Thống (Caramel Hấp)',
           '2025-11-20 15:00:00',
           0,
           8,
           19
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/bbesqpc7o5s47l017527', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1763999519/cooki-note/recipes/bbesqpc7o5s47l017527.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 66, 47);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm caramel.', 100, TRUE, 'gram', now(), 109, 47);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm caramel.', 50, TRUE, 'ml', now(), 153, 47);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chỉ lấy lòng đỏ.', 3, TRUE, 'quả', now(), 14, 47);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Làm nền flan.', 250, TRUE, 'ml', now(), 58, 47);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo độ ngọt và béo.', 100, TRUE, 'gram', now(), 56, 47);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo mùi thơm.', 0.5, FALSE, 'muỗng cà phê', now(), 129, 47);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Đường Trắng và 2 muỗng canh Nước Lọc vào nồi, đun chảy trên lửa nhỏ. Khi đường chuyển sang màu cánh gián đậm (màu caramel), thêm 1 muỗng canh nước lọc còn lại vào (cẩn thận vì đường nóng). Nhanh chóng đổ caramel vào khuôn, tráng đều đáy khuôn.',
           FALSE,
           1,
           now(),
           47
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Sữa Tươi và Sữa Đặc vào nồi, khuấy đều trên lửa nhỏ cho sữa đặc tan hết, không đun sôi. Thêm Vani. Tắt bếp và để hỗn hợp nguội bớt (còn ấm).',
           FALSE,
           2,
           now(),
           47
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đánh nhẹ 3 lòng đỏ Trứng Gà và 2 quả Trứng Gà nguyên vào một bát khác. Lưu ý: chỉ đánh nhẹ, không đánh nổi bọt. Mục đích là để trứng và lòng đỏ hòa quyện.',
           FALSE,
           3,
           now(),
           47
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Từ từ đổ hỗn hợp Sữa ấm (Bước 2) vào hỗn hợp Trứng (Bước 3), vừa đổ vừa khuấy nhẹ và đều. Lọc hỗn hợp này qua rây 2-3 lần để loại bỏ lợn cợn và bọt khí, giúp bánh mịn hơn.',
           FALSE,
           4,
           now(),
           47
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ hỗn hợp flan đã lọc vào các khuôn đã tráng caramel. Đặt khuôn vào nồi hấp. Hấp cách thủy ở lửa nhỏ nhất khoảng **30-40 phút**. Dùng tăm kiểm tra, nếu tăm rút ra sạch là bánh đã chín.',
           FALSE,
           5,
           now(),
           47
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy bánh ra, để nguội hoàn toàn rồi cho vào tủ lạnh ít nhất 4 giờ. Khi dùng, úp ngược khuôn ra đĩa. Có thể ăn kèm cà phê hoặc đá bào.',
           FALSE,
           6,
           now(),
           47
       );

-- Recipe ID: 48
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           50,
           '2025-11-21 16:30:00',
           'Chè Khoai Môn Cốt Dừa là món tráng miệng đậm chất Việt Nam. Vị bùi bùi của khoai môn, quyện cùng nước cốt dừa béo ngậy và độ ngọt vừa phải. Thích hợp dùng nóng hoặc lạnh.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Chè Khoai Môn Cốt Dừa',
           '2025-11-21 16:30:00',
           0,
           8,
           18
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/psiypygj2y3e0zfk1pbq', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764000263/cooki-note/recipes/psiypygj2y3e0zfk1pbq.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 67, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gọt vỏ, rửa sạch, cắt khối vuông vừa ăn. Hấp chín 1/3 khoai để làm nhân sên.', 500, TRUE, 'gram', now(), 110, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để làm nước cốt chấm.', 200, TRUE, 'ml', now(), 69, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chia làm 2 phần: nấu chè và nấu cốt dừa.', 150, TRUE, 'gram', now(), 109, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đậu xanh cà vỏ, ngâm nở 2-3 tiếng.', 50, TRUE, 'gram', now(), 152, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Hòa với nước để tạo độ sánh.', 1, FALSE, 'muỗng canh', now(), 125, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm cốt dừa và nấu chè.', 0.25, TRUE, 'muỗng cà phê', now(), 71, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để nấu chè.', 1, TRUE, 'lít', now(), 153, 48);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, làm dầu hành (tùy chọn cho đậu xanh sên mặn).', 1, FALSE, 'ít', now(), 37, 48);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậu Xanh ngâm nở, đem hấp chín mềm. Khoai Môn cắt khối (1/3 hấp chín, 2/3 giữ lại nấu). Đun sôi Nước Lọc, cho Đậu Xanh và 2/3 Khoai Môn đã cắt vào nấu chín mềm (khoảng 20-30 phút).',
           FALSE,
           1,
           now(),
           48
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           '1/3 Khoai Môn đã hấp chín còn lại đem nghiền nhuyễn. Trộn với 1/3 lượng Đường và chút nước chè (hoặc cốt dừa). Sên trên chảo cho hỗn hợp hơi sệt lại và dẻo. Phần khoai này giúp chè có độ sánh và bùi hơn.',
           FALSE,
           2,
           now(),
           48
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi Khoai Môn và Đậu Xanh trong nồi (Bước 1) đã chín mềm, thêm phần Đường còn lại vào, khuấy nhẹ. Hòa Bột Năng với một chút nước, từ từ đổ vào nồi chè, khuấy đều cho chè đạt độ sánh mong muốn (tùy chọn).',
           FALSE,
           3,
           now(),
           48
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha Nước Cốt Dừa với một chút Đường và Muối. Đun nóng nhẹ (hoặc không cần đun), khuấy đều cho tan hết gia vị. Có thể thêm 1/2 muỗng cà phê bột năng hòa nước vào để cốt dừa sánh hơn (tùy chọn).',
           FALSE,
           4,
           now(),
           48
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp chè. Múc chè ra bát. Cho phần Khoai Môn đã sên dẻo (Bước 2) lên trên. Rưới Nước Cốt Dừa (Bước 4) lên trên cùng. Có thể rắc thêm mè rang (vừng rang) hoặc đậu phộng rang. Dùng nóng hoặc lạnh.',
           FALSE,
           5,
           now(),
           48
       );

-- Recipe ID: 49
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-24 16:00:00',
           'Tiramisu Cà Phê Cấp Tốc là món tráng miệng Ý cổ điển, không cần nướng (No-Bake). Hương vị cà phê đậm đà kết hợp với lớp kem Mascarpone béo ngậy, hoàn hảo cho mọi bữa tiệc.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Tiramisu Cà Phê (No-Bake)',
           '2025-11-24 16:00:00',
           0,
           8,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/tjntbjxxw2guduenxabv', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764000534/cooki-note/recipes/tjntbjxxw2guduenxabv.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 68, 49);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sử dụng Mascarpone hoặc Kem Phô Mai (Cream Cheese) thay thế.', 250, TRUE, 'gram', now(), 196, 49);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Kem béo lạnh (35% béo).', 150, TRUE, 'ml', now(), 62, 49);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn kem.', 50, TRUE, 'gram', now(), 58, 49);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh Ladyfingers (hoặc bánh mì xốp/bánh sampa) cắt miếng vừa.', 10, TRUE, 'lát', now(), 52, 49);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cà phê đen pha đặc, để nguội (dùng ID Nước Lọc).', 150, TRUE, 'ml', now(), 153, 49);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột Cacao không đường, rắc lên trên.', 30, TRUE, 'gram', now(), 146, 49);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng máy đánh Kem Tươi (Whipping Cream) và 1/2 lượng Đường Cát đến khi kem bông cứng. Trong một bát khác, đánh nhẹ Kem Phô Mai (Mascarpone) với lượng Đường Cát còn lại cho mềm. Trộn nhẹ nhàng hai hỗn hợp kem này lại với nhau.',
           FALSE,
           1,
           now(),
           49
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha Cà Phê Đen thật đặc, không đường (hoặc rất ít đường). Để cà phê nguội hoàn toàn. (Cà phê phải đủ lạnh để bánh không bị rã).',
           FALSE,
           2,
           now(),
           49
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nhúng nhanh từng miếng Bánh Mì (Ladyfingers) vào Cà Phê Đen đã nguội. Lưu ý: chỉ nhúng nhanh 1-2 giây để bánh kịp thấm cà phê mà không bị nhão.',
           FALSE,
           3,
           now(),
           49
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy khuôn/hộp đựng. Xếp một lớp bánh đã nhúng cà phê (Bước 3) kín đáy khuôn. Phủ một lớp Kem Mascarpone đã trộn (Bước 1) lên trên lớp bánh. Rắc một lớp mỏng Bột Cacao.',
           FALSE,
           4,
           now(),
           49
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lặp lại quy trình: Xếp thêm một lớp bánh nhúng cà phê và phủ lớp kem Mascarpone cuối cùng. Rắc một lớp Bột Cacao dày và đẹp mắt lên trên cùng.',
           FALSE,
           5,
           now(),
           49
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậy kín khuôn và cho Tiramisu vào tủ lạnh. Để lạnh ít nhất **4 giờ** hoặc tốt nhất là qua đêm để bánh thấm đều và kem đông lại. Thưởng thức lạnh.',
           FALSE,
           6,
           now(),
           49
       );

-- Recipe ID: 50
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           70,
           '2025-11-25 15:30:00',
           'Bánh Chuối Nướng Cốt Dừa là món tráng miệng truyền thống, thơm mùi chuối chín, béo ngậy vị nước cốt dừa và mềm ẩm. Món bánh dễ làm, phù hợp cho bữa ăn gia đình.',
           'MEDIUM',
           FALSE,
           TRUE,
           6,
           'Bánh Chuối Nướng Cốt Dừa',
           '2025-11-25 15:30:00',
           0,
           8,
           9
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/d8jbldtdty6epyhwqdvh', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764000828/cooki-note/recipes/d8jbldtdty6epyhwqdvh.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 69, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chuối sứ chín (khoảng 500g), thái lát dọc.', 6, TRUE, 'quả', now(), 123, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh mì cũ, xé vụn hoặc cắt lát mỏng.', 1, TRUE, 'ổ', now(), 52, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo độ béo và ẩm.', 200, TRUE, 'ml', now(), 69, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo độ ngọt.', 100, TRUE, 'gram', now(), 58, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giúp kết dính và tạo độ béo.', 1, TRUE, 'quả', now(), 14, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Quét khuôn.', 15, TRUE, 'gram', now(), 63, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo mùi thơm.', 0.5, FALSE, 'muỗng cà phê', now(), 192, 50);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rượu Rum hoặc rượu trắng (tùy chọn).', 1, FALSE, 'muỗng canh', now(), 70, 50);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chuối thái lát dọc dày khoảng 0.5 cm. Bánh Mì xé vụn hoặc cắt lát. Trộn bánh mì xé vụn với Nước Cốt Dừa, Trứng Gà đánh tan, Đường Cát, Tinh Dầu Vani và Rượu Nấu Ăn (nếu dùng). Để hỗn hợp nghỉ khoảng 15-20 phút cho bánh mì thấm đều.',
           FALSE,
           1,
           now(),
           50
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thắng một ít đường thành màu cánh gián (caramel) và tráng đều đáy khuôn để bánh có màu đẹp (Tùy chọn). Hoặc chỉ cần quét Bơ Lạt tan chảy quanh khuôn.',
           FALSE,
           2,
           now(),
           50
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp một lớp Chuối đã thái lát dưới đáy khuôn (trên lớp caramel hoặc bơ). Đổ một lớp hỗn hợp Bánh Mì Cốt Dừa lên trên. Lặp lại quy trình xếp lớp cho đến khi hết nguyên liệu.',
           FALSE,
           3,
           now(),
           50
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng lò nướng ở nhiệt độ **170°C**. Cho khuôn bánh vào nướng trong khoảng **50-60 phút** hoặc đến khi mặt bánh vàng rụm. Dùng tăm kiểm tra, nếu tăm rút ra sạch là bánh đã chín.',
           FALSE,
           4,
           now(),
           50
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy bánh ra khỏi lò. Để bánh nguội hoàn toàn. Khi ăn, có thể úp ngược bánh ra đĩa và rưới thêm Nước Cốt Dừa tươi (tùy chọn) lên trên.',
           FALSE,
           5,
           now(),
           50
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bánh Chuối Nướng Cốt Dừa ngon nhất khi được làm lạnh hoàn toàn. Món này có thể ăn kèm với kem vani hoặc các loại mứt.',
           FALSE,
           6,
           now(),
           50
       );

-- Recipe ID: 51
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           15,
           '2025-11-28 17:00:00',
           'Panna Cotta Sốt Dâu Tây là món tráng miệng Ý thanh mát, mềm mịn như lụa. Món này không cần nướng, chỉ cần làm lạnh, hoàn hảo cho những ai yêu thích vị béo nhẹ và trái cây tươi.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Panna Cotta Sốt Dâu Tây',
           '2025-11-28 17:00:00',
           0,
           8,
           6
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/afz9ezim3d0iy7llua0g', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764001395/cooki-note/recipes/afz9ezim3d0iy7llua0g.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 70, 51);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Kem béo (35% béo).', 250, TRUE, 'ml', now(), 62, 51);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 100, TRUE, 'ml', now(), 60, 51);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm với 30ml nước lạnh trước khi dùng.', 8, TRUE, 'gram', now(), 148, 51);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng cho phần Panna Cotta.', 50, TRUE, 'gram', now(), 58, 51);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo mùi thơm.', 0.5, FALSE, 'muỗng cà phê', now(), 192, 51);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rửa sạch, bỏ cuống, dùng làm sốt.', 150, TRUE, 'gram', now(), 129, 51);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lấy nước cốt để tạo vị chua cho sốt.', 0.5, FALSE, 'trái', now(), 121, 51);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Ngâm Bột Gelatin trong một ít nước lạnh cho nở mềm (khoảng 5 phút). Trong nồi, cho Kem Tươi (Whipping Cream), Sữa Tươi và Đường Cát (Panna Cotta) vào, đun nóng ở lửa nhỏ, khuấy đều cho đường tan (không đun sôi).',
           FALSE,
           1,
           now(),
           51
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp hỗn hợp sữa (Bước 1). Cho Gelatin đã nở mềm và Tinh Dầu Vani vào, khuấy đều cho Gelatin tan hoàn toàn trong sữa nóng. Lọc hỗn hợp qua rây để Panna Cotta được mịn.',
           FALSE,
           2,
           now(),
           51
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ hỗn hợp Panna Cotta đã lọc vào các khuôn hoặc ly nhỏ. Để nguội ở nhiệt độ phòng, sau đó cho vào tủ lạnh ít nhất **4 giờ** hoặc cho đến khi Panna Cotta đông hoàn toàn.',
           FALSE,
           3,
           now(),
           51
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dâu Tây cắt nhỏ, cho vào nồi cùng Đường Cát (sốt) và Nước Cốt Chanh Vàng. Đun nhỏ lửa khoảng 10 phút, vừa đun vừa dằm dâu tây cho mềm. Sau đó, xay nhuyễn hỗn hợp sốt (tùy chọn) và để nguội hoàn toàn.',
           FALSE,
           4,
           now(),
           51
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi Panna Cotta đã đông, có thể úp ngược ra đĩa (nhúng đáy khuôn qua nước nóng nhanh 1 giây). Rưới Sốt Dâu Tây đã nguội lên trên. Trang trí bằng lá bạc hà (nếu có). Thưởng thức lạnh.',
           FALSE,
           5,
           now(),
           51
       );

-- Recipe ID: 52
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-22 18:00:00',
           'Bánh Mousse Socola Lạnh là món tráng miệng sang trọng, với lớp mousse socola đậm vị, mềm mịn tan chảy. Món này không cần nướng (No-Bake) và rất dễ gây nghiện.',
           'MEDIUM',
           FALSE,
           TRUE,
           6,
           'Bánh Mousse Socola Lạnh (No-Bake Dessert)',
           '2025-11-22 18:00:00',
           0,
           8,
           11
       );

INSERT INTO  media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/uobwvlnwulzcwvsk4n4k', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764001713/cooki-note/recipes/uobwvlnwulzcwvsk4n4k.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 71, 52);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Socola đen hoặc sữa, chất lượng tốt.', 150, TRUE, 'gram', now(), 161, 52);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '400ml, chia 100ml để đun nóng, 300ml để đánh bông.', 400, TRUE, 'ml', now(), 62, 52);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm với 30ml nước lạnh trước khi dùng.', 8, TRUE, 'gram', now(), 148, 52);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để đun nóng cùng 100ml kem tươi.', 50, TRUE, 'ml', now(), 60, 52);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Điều chỉnh độ ngọt (tùy chọn).', 30, FALSE, 'gram', now(), 58, 52);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột Cacao không đường, dùng để trang trí.', 10, TRUE, 'gram', now(), 146, 52);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh quy bơ (dùng ID Bánh Mì) hoặc cốt bánh gato mỏng làm đế.', 1, FALSE, 'lát', now(), 52, 52);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Ngâm Bột Gelatin với nước lạnh cho nở mềm. Dùng máy đánh 300ml Kem Tươi (phần lớn) với Đường Cát (tùy chọn) đến khi kem bông mềm (soft peak). Để kem đã đánh bông trong tủ lạnh.',
           FALSE,
           1,
           now(),
           52
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun nóng 100ml Kem Tươi còn lại và Sữa Tươi. Đổ hỗn hợp nóng này lên Socola Chip. Để yên 1 phút rồi khuấy đều cho socola tan chảy hoàn toàn. Cho Gelatin đã nở vào hỗn hợp nóng này, khuấy đều cho tan hết.',
           FALSE,
           2,
           now(),
           52
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đợi hỗn hợp Socola (Bước 2) nguội hoàn toàn. Lấy kem tươi đã đánh bông (Bước 1) ra khỏi tủ lạnh. Chia kem tươi làm 3 phần, nhẹ nhàng trộn từng phần vào hỗn hợp socola (sử dụng kỹ thuật fold) để tạo thành hỗn hợp mousse đồng nhất, nhẹ và xốp.',
           FALSE,
           3,
           now(),
           52
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nếu dùng đế bánh quy (hoặc Bánh Mì), lót đế vào khuôn. Đổ hỗn hợp mousse socola (Bước 3) vào khuôn. Gõ nhẹ khuôn để loại bỏ bọt khí lớn.',
           FALSE,
           4,
           now(),
           52
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Mousse vào tủ lạnh. Để lạnh ít nhất **4-6 giờ** hoặc qua đêm cho mousse đông hoàn toàn và đạt độ cứng mong muốn.',
           FALSE,
           5,
           now(),
           52
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi Mousse đã đông, lấy ra khỏi khuôn (có thể dùng máy sấy tóc hơ nhẹ quanh thành khuôn). Rắc một lớp Bột Cacao lên trên mặt bánh. Cắt miếng và thưởng thức lạnh.',
           FALSE,
           6,
           now(),
           52
       );

-- Recipe ID: 53
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           60,
           '2025-11-27 15:30:00',
           'Bánh Bông Lan Trứng Muối Phô Mai là món bánh mặn ngọt cân bằng, với cốt bánh bông lan mềm xốp, phủ kem trứng muối béo ngậy và phô mai mặn mặn. Món tráng miệng/ăn nhẹ độc đáo.',
           'HARD',
           FALSE,
           TRUE,
           8,
           'Bánh Bông Lan Trứng Muối Phô Mai',
           '2025-11-27 15:30:00',
           0,
           8,
           6
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/jzis3g1gyquml9i3u1rp', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764002028/cooki-note/recipes/jzis3g1gyquml9i3u1rp.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 72, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tách lòng trắng, lòng đỏ.', 4, TRUE, 'quả', now(), 14, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rây mịn.', 80, TRUE, 'gram', now(), 53, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng cho cả lòng trắng và lòng đỏ.', 80, TRUE, 'gram', now(), 58, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 50, TRUE, 'ml', now(), 60, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 30, TRUE, 'ml', now(), 66, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lòng đỏ trứng muối đã hấp chín/nướng.', 4, TRUE, 'quả', now(), 15, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phô mai bào vụn.', 50, TRUE, 'gram', now(), 65, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Quét mặt bánh.', 15, TRUE, 'gram', now(), 63, 53);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, trang trí/trộn bơ.', 1, FALSE, 'ít', now(), 37, 53);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lòng đỏ Trứng Muối đã hấp chín, cắt đôi. Trộn lòng đỏ Trứng Gà, Sữa Tươi và Dầu Ăn. Rây Bột Mì Đa Dụng vào hỗn hợp này và trộn đều cho mịn. Làm nóng lò nướng ở **150°C**.',
           FALSE,
           1,
           now(),
           53
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đánh bông lòng trắng Trứng Gà với Đường Cát (dùng kỹ thuật French Meringue) cho đến khi lòng trắng bông cứng và tạo chóp đứng.',
           FALSE,
           2,
           now(),
           53
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy 1/3 lượng Meringue (lòng trắng) trộn nhẹ nhàng vào hỗn hợp lòng đỏ (Bước 1). Sau đó, cho phần Meringue còn lại vào, dùng kỹ thuật "fold" để trộn đều từ dưới lên, đảm bảo hỗn hợp bột không bị xẹp bọt khí.',
           FALSE,
           3,
           now(),
           53
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ hỗn hợp bột vào khuôn bánh đã lót giấy nến (hoặc khuôn không dính). Nướng bánh ở **150°C** trong khoảng **40-45 phút**. Bánh chín là khi ấn nhẹ vào mặt bánh thấy đàn hồi.',
           FALSE,
           4,
           now(),
           53
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong khi bánh còn nóng, đun chảy Bơ Lạt, trộn với Hành Lá thái nhỏ (làm mỡ hành).',
           FALSE,
           5,
           now(),
           53
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy bánh ra khỏi lò. Nhanh chóng quét lớp Bơ Hành (Bước 5) lên mặt bánh. Xếp đều các lát Trứng Muối lên trên, rắc Phô Mai Parmesan bào vụn và nướng thêm 5 phút ở 180°C.',
           FALSE,
           6,
           now(),
           53
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Để bánh nguội bớt, cắt miếng vừa ăn và thưởng thức. Bánh Bông Lan Trứng Muối ngon nhất khi còn ấm, hoặc để nguội trong tủ lạnh.',
           FALSE,
           7,
           now(),
           53
       );

-- Recipe ID: 54
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-28 15:00:00',
           'Bánh Crepe Sầu Riêng Lá Dứa là món tráng miệng fusion độc đáo, kết hợp vị béo ngậy của sầu riêng và hương thơm đặc trưng của lá dứa. Vỏ bánh mỏng, mềm và đẹp mắt.',
           'MEDIUM',
           FALSE,
           TRUE,
           6,
           'Bánh Crepe Sầu Riêng Lá Dứa',
           '2025-11-28 15:00:00',
           0,
           8,
           6
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/lylwtukipt9szh0xbbxe', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764002324/cooki-note/recipes/lylwtukipt9szh0xbbxe.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 73, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rây mịn.', 150, TRUE, 'gram', now(), 53, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 3, TRUE, 'quả', now(), 14, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 200, TRUE, 'ml', now(), 60, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đun chảy, để nguội.', 20, TRUE, 'gram', now(), 63, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tinh dầu/nước cốt lá dứa (Dùng ID Tinh Dầu Vani).', 0.5, TRUE, 'muỗng cà phê', now(), 192, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Kem béo (35% béo), đánh bông.', 300, TRUE, 'ml', now(), 62, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cơm sầu riêng tươi, dằm nhuyễn.', 100, TRUE, 'gram', now(), 162, 54);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn kem.', 30, TRUE, 'gram', now(), 58, 54);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn Bột Mì Đa Dụng, Đường Cát (một phần), Trứng Gà và Sữa Tươi. Khuấy đều cho hỗn hợp tan hết, sau đó thêm Bơ Lạt đun chảy và Tinh Dầu Lá Dứa. Lọc hỗn hợp qua rây để loại bỏ lợn cợn. Để bột nghỉ **30 phút**.',
           FALSE,
           1,
           now(),
           54
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo chống dính nhỏ ở lửa vừa. Múc một vá bột (khoảng 50ml) đổ vào chảo, lắc nhẹ để bột dàn đều mỏng. Tráng bánh khoảng 1 phút cho đến khi bánh chín và khô mép. Úp bánh ra đĩa. Lặp lại cho đến hết bột.',
           FALSE,
           2,
           now(),
           54
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng máy đánh Kem Tươi (Whipping Cream) với Đường Cát (phần còn lại) đến khi kem bông cứng (stiff peak). Trộn nhẹ nhàng Cơm Sầu Riêng dằm nhuyễn vào kem đã đánh bông.',
           FALSE,
           3,
           now(),
           54
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trải một chiếc vỏ bánh Crepe lên mặt phẳng. Quét một lớp mỏng Kem Sầu Riêng lên bề mặt. Đặt chiếc vỏ bánh Crepe thứ hai lên và tiếp tục phết kem. Lặp lại quy trình cho đến khi hết vỏ bánh.',
           FALSE,
           4,
           now(),
           54
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng dao cắt bỏ các phần kem thừa ở mép để bánh được tròn đều. Đặt bánh Crepe Sầu Riêng vào tủ lạnh ít nhất **2 giờ** để kem đông và bánh được định hình chắc chắn.',
           FALSE,
           5,
           now(),
           54
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cắt bánh thành miếng tam giác hoặc vuông vừa ăn. Có thể rắc thêm một chút Bột Cacao (hoặc dừa nạo sấy) lên trên (tùy chọn). Thưởng thức lạnh.',
           FALSE,
           6,
           now(),
           54
       );

-- Recipe ID: 55
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-20 14:00:00',
           'Khoai Tây Lắc Phô Mai là món ăn vặt được yêu thích, với khoai tây chiên giòn tan, bên ngoài phủ một lớp bột phô mai mặn ngọt béo ngậy. Món này chế biến nhanh và rất gây nghiện.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Khoai Tây Lắc Phô Mai Thơm Giòn',
           '2025-11-20 14:00:00',
           0,
           7,
           7
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/kdn3svuo0c8lnojnwqw8', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764002614/cooki-note/recipes/kdn3svuo0c8lnojnwqw8.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 74, 55);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gọt vỏ, cắt thanh dài 1cm.', 500, TRUE, 'gram', now(), 21, 55);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để chiên ngập dầu.', 300, TRUE, 'ml', now(), 66, 55);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột phô mai khô/Phô mai Parmesan bào mịn để lắc.', 30, TRUE, 'gram', now(), 65, 55);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để áo khoai.', 50, TRUE, 'gram', now(), 135, 55);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc sơ và nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 71, 55);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tăng màu sắc và vị (tùy chọn).', 0.5, FALSE, 'muỗng cà phê', now(), 97, 55);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khoai Tây gọt vỏ, cắt thành thanh dài. Ngâm khoai trong nước lạnh khoảng 15 phút để loại bỏ bớt tinh bột. Vớt khoai ra, chần sơ qua nước sôi có pha chút Muối khoảng 2 phút. Vớt ra và để ráo nước hoàn toàn.',
           FALSE,
           1,
           now(),
           55
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một tô, trộn đều Bột Chiên Giòn với một chút Muối và Bột Ớt Paprika (nếu dùng). Áo đều Khoai Tây đã ráo nước (Bước 1) qua lớp bột này.',
           FALSE,
           2,
           now(),
           55
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun nóng Dầu Ăn Thực Vật ở lửa vừa. Cho khoai tây vào chiên lần 1 cho đến khi khoai vừa chín tới, se lại và chuyển màu vàng nhạt (khoảng 5-7 phút). Vớt ra, để ráo dầu và làm nguội bớt.',
           FALSE,
           3,
           now(),
           55
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tăng nhiệt độ dầu lên lửa lớn. Cho khoai tây đã nguội (Bước 3) vào chiên lần 2 cho đến khi khoai vàng ươm và giòn rụm (khoảng 3 phút). Vớt ra khỏi chảo và đặt lên giấy thấm dầu.',
           FALSE,
           4,
           now(),
           55
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Khoai Tây chiên nóng (Bước 4) vào một hộp có nắp đậy. Rắc Phô Mai Bột lên trên. Đậy nắp và lắc mạnh, đều tay để bột phô mai bám đều vào khoai tây. Dùng nóng ngay lập tức.',
           FALSE,
           5,
           now(),
           55
       );

-- Recipe ID: 56
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-21 14:30:00',
           'Bánh Phô Mai Que là món ăn vặt được yêu thích, với lớp vỏ ngoài giòn rụm và phô mai Mozzarella tan chảy béo ngậy bên trong. Món này chế biến nhanh, hoàn hảo cho các buổi họp mặt.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Bánh Phô Mai Que Chiên Giòn (Mozzarella Sticks)',
           '2025-11-21 14:30:00',
           0,
           7,
           7
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/jizbnevtexr5b9edj3nt', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764002896/cooki-note/recipes/jizbnevtexr5b9edj3nt.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 75, 56);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt thành các thanh/que dài 1cm x 5cm.', 200, TRUE, 'gram', now(), 64, 56);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Áo lớp đầu tiên.', 50, TRUE, 'gram', now(), 135, 56);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Áo lớp cuối cùng, tạo độ giòn.', 100, TRUE, 'gram', now(), 136, 56);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đánh tan.', 2, TRUE, 'quả', now(), 14, 56);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để chiên ngập dầu.', 300, TRUE, 'ml', now(), 66, 56);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm bột.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 56);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn với bột chiên xù (tùy chọn).', 0.25, FALSE, 'muỗng cà phê', now(), 176, 56);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Phô Mai Mozzarella cắt thành các thanh/que dài. Để que phô mai vào ngăn đá tủ lạnh khoảng **30 phút** trước khi áo bột để giữ hình dạng và tránh bị tan chảy khi chiên.',
           FALSE,
           1,
           now(),
           56
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chuẩn bị 3 đĩa/tô nông: Đĩa 1 chứa Bột Chiên Giòn (có nêm Muối). Đĩa 2 chứa Trứng Gà đánh tan. Đĩa 3 chứa Bột Chiên Xù (có trộn Bột Lá Oregano và Tiêu).',
           FALSE,
           2,
           now(),
           56
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy phô mai ra. Lần lượt áo từng que phô mai qua: **Bột Chiên Giòn** $\rightarrow$ **Trứng Gà** $\rightarrow$ **Bột Chiên Xù**. Sau đó, lặp lại quy trình **Trứng Gà $\rightarrow$ Bột Chiên Xù** để tạo thành lớp áo kép kín. Điều này là **rất quan trọng**.',
           FALSE,
           3,
           now(),
           56
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Để các que phô mai đã áo bột vào ngăn đá tủ lạnh thêm **15 phút** nữa. Sau đó, làm nóng Dầu Ăn Thực Vật ở lửa vừa-lớn. Cho phô mai vào chiên nhanh (khoảng 1-2 phút) cho đến khi vàng giòn. Vớt ra, để ráo dầu.',
           FALSE,
           4,
           now(),
           56
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bánh Phô Mai Que phải được dùng ngay khi còn nóng để phô mai bên trong được kéo sợi. Ăn kèm với tương ớt (hoặc sốt marinara nếu có).',
           FALSE,
           5,
           now(),
           56
       );

-- Recipe ID: 57
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           60,
           '2025-11-23 15:30:00',
           'Bánh Bột Lọc có lớp vỏ dai, trong suốt, nhìn rõ nhân tôm thịt đậm đà bên trong. Món ăn vặt truyền thống này ngon nhất khi dùng nóng kèm nước chấm chua ngọt cay.',
           'HARD',
           FALSE,
           TRUE,
           4,
           'Bánh Bột Lọc Nhân Tôm Thịt',
           '2025-11-23 15:30:00',
           0,
           7,
           7
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/zg3g06k9cnzuj54lfcvv', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764003158/cooki-note/recipes/zg3g06k9cnzuj54lfcvv.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 76, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột năng làm vỏ bánh.', 200, TRUE, 'gram', now(), 54, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn bột và xào nhân.', 1, TRUE, 'muỗng canh', now(), 66, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn bột và nêm nhân.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bóc vỏ, giữ nguyên con hoặc cắt nhỏ.', 150, TRUE, 'gram', now(), 7, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt ba chỉ/nạc dăm băm nhỏ.', 100, TRUE, 'gram', now(), 1, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp và xào nhân, pha nước chấm.', 1.5, TRUE, 'muỗng canh', now(), 75, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào nhân và pha nước chấm.', 1, TRUE, 'muỗng cà phê', now(), 58, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 1, TRUE, 'muỗng canh', now(), 79, 57);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, pha nước chấm.', 1, TRUE, 'trái', now(), 83, 57);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tôm và Thịt Heo băm nhỏ. Ướp tôm thịt với 1/2 muỗng canh Nước Mắm, 1/2 muỗng cà phê Đường Cát, và Tiêu. Phi thơm Tỏi băm, cho tôm thịt vào xào săn lại. Múc ra tô.',
           FALSE,
           1,
           now(),
           57
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn Bột Năng và Muối. Đun sôi khoảng 150ml nước. Đổ nước sôi vào bột, vừa đổ vừa khuấy nhanh bằng đũa. Khi bột nguội bớt, dùng tay nhào bột nhanh và mạnh cho đến khi bột thành khối dẻo, không dính tay (cần phải nhào lúc bột còn nóng).',
           FALSE,
           2,
           now(),
           57
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chia bột thành các phần nhỏ (khoảng 10-15g). Cán mỏng từng phần bột. Đặt nhân Tôm Thịt đã xào vào giữa, gập đôi mép bánh lại và tạo hình bán nguyệt. Ấn nhẹ mép bánh để bột dính chặt.',
           FALSE,
           3,
           now(),
           57
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng nồi hấp. Quét một lớp Dầu Ăn mỏng lên vỉ hấp để bánh không bị dính. Xếp bánh bột lọc vào và hấp khoảng **15-20 phút**. Bánh chín là khi vỏ bánh chuyển màu trong suốt và dai.',
           FALSE,
           4,
           now(),
           57
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước chấm: Nước Mắm, Đường Cát, Nước Cốt Chanh, Ớt Tươi băm và nước lọc ấm theo tỷ lệ vừa ăn (thường là 1 phần mắm, 1 phần đường, 1 phần chanh, 4-5 phần nước).',
           FALSE,
           5,
           now(),
           57
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bánh Bột Lọc sau khi hấp chín, có thể rưới thêm một chút mỡ hành (hành lá phi dầu) lên trên để bóng đẹp. Dùng nóng ngay lập tức kèm Nước Chấm đã pha.',
           FALSE,
           6,
           now(),
           57
       );

-- Recipe ID: 58
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           45,
           '2025-11-25 15:00:00',
           'Chè Trôi Nước có lớp vỏ nếp dẻo thơm bọc nhân đậu xanh bùi bùi, dùng kèm nước gừng ấm nóng và nước cốt dừa béo ngậy. Món ăn vặt/tráng miệng truyền thống.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Chè Trôi Nước Nhân Đậu Xanh Lá Dứa',
           '2025-11-25 15:00:00',
           0,
           7,
           7
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/q4whv9hl1acgc7cqklbj', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764004622/cooki-note/recipes/q4whv9hl1acgc7cqklbj.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 77, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột nếp hoặc Gạo Nếp xay (dùng ID Gạo Nếp).', 200, TRUE, 'gram', now(), 48, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước ấm để nhào bột.', 100, TRUE, 'ml', now(), 153, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đậu xanh cà vỏ, ngâm nở, hấp chín.', 100, TRUE, 'gram', now(), 152, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sên nhân.', 50, TRUE, 'gram', now(), 58, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng sên nhân và chan chè (tổng 150ml).', 150, TRUE, 'ml', now(), 69, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nấu nước gừng.', 150, TRUE, 'gram', now(), 159, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát, đập dập.', 50, TRUE, 'gram', now(), 39, 58);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn nhân (tùy chọn).', 0.5, FALSE, 'muỗng cà phê', now(), 99, 58);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậu Xanh ngâm nở, đem hấp chín mềm, sau đó nghiền nhuyễn. Trộn đậu xanh đã nghiền với Đường Cát (sên nhân), một chút Nước Cốt Dừa và Dầu Mè (tùy chọn). Vo nhân thành các viên tròn nhỏ.',
           FALSE,
           1,
           now(),
           58
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Bột Nếp (hoặc bột gạo nếp) vào tô. Từ từ thêm Nước Ấm, vừa thêm vừa nhào đều tay cho đến khi bột tạo thành khối dẻo, mịn, không dính tay. Để bột nghỉ khoảng 15 phút.',
           FALSE,
           2,
           now(),
           58
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chia bột nếp thành các phần đều nhau (gấp đôi kích cỡ viên nhân). Cán dẹt từng phần bột. Đặt viên nhân đậu xanh (Bước 1) vào giữa, bọc kín và vo tròn lại. Đảm bảo nhân được bọc kín để không bị vỡ khi luộc.',
           FALSE,
           3,
           now(),
           58
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun sôi khoảng 1 lít nước lọc. Cho Gừng thái lát đã đập dập và Đường Phèn vào nồi. Nấu cho đến khi Đường Phèn tan hoàn toàn và nước gừng có vị ngọt, cay nồng vừa ý.',
           FALSE,
           4,
           now(),
           58
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun sôi một nồi nước khác. Thả bánh trôi nước đã nặn (Bước 3) vào luộc. Khi bánh nổi lên mặt nước (khoảng 5-7 phút), vớt ra và thả ngay vào nồi Nước Gừng (Bước 4) để bánh không bị dính và được thấm vị.',
           FALSE,
           5,
           now(),
           58
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun chè trong nồi nước gừng thêm 5 phút. Khi dùng, múc chè và nước gừng ra bát, rưới thêm Nước Cốt Dừa béo ngậy lên trên. Có thể rắc thêm mè rang (vừng rang) hoặc đậu phộng rang. Dùng nóng.',
           FALSE,
           6,
           now(),
           58
       );

-- Recipe ID: 59
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-11-28 16:00:00',
           'Bánh Khoai Môn Chiên Giòn có lớp vỏ ngoài giòn tan, nhân khoai môn bên trong mềm, bùi và ngọt nhẹ. Món ăn vặt thơm ngon và dễ làm.',
           'MEDIUM',
           FALSE,
           TRUE,
           3,
           'Bánh Khoai Môn Chiên Giòn',
           '2025-11-28 16:00:00',
           0,
           7,
           7
       );

INSERT INTO  media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/wpbnhcycaclq9uykegjr', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764004904/cooki-note/recipes/wpbnhcycaclq9uykegjr.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 78, 59);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gọt vỏ, luộc/hấp chín, nghiền nhuyễn.', 300, TRUE, 'gram', now(), 120, 59);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn vào khoai để tạo độ dẻo.', 50, TRUE, 'gram', now(), 54, 59);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm độ ngọt.', 20, TRUE, 'gram', now(), 58, 59);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, TRUE, 'muỗng cà phê', now(), 71, 59);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để áo ngoài.', 50, TRUE, 'gram', now(), 135, 59);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chiên ngập dầu.', 300, TRUE, 'ml', now(), 66, 59);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khoai Môn gọt vỏ, rửa sạch, cắt miếng vừa. Đem luộc hoặc hấp chín mềm. Khi khoai còn nóng, nghiền nhuyễn. Thêm Đường Cát và Muối vào khoai, trộn đều.',
           FALSE,
           1,
           now(),
           59
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn Bột Năng vào Khoai Môn đã nghiền (Bước 1). Nhào hỗn hợp bằng tay cho đến khi tạo thành khối bột dẻo, không dính tay. Nếu thấy quá khô, có thể thêm một chút nước ấm.',
           FALSE,
           2,
           now(),
           59
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chia hỗn hợp khoai thành các phần nhỏ, vo tròn và nắn dẹt hoặc tạo hình que (tùy thích). Lăn từng miếng bánh qua một lớp mỏng Bột Chiên Giòn để áo bên ngoài.',
           FALSE,
           3,
           now(),
           59
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn Thực Vật ở lửa vừa. Cho bánh Khoai Môn đã áo bột vào chiên ngập dầu. Chiên cho đến khi bánh chín vàng đều, vỏ ngoài giòn. Vớt bánh ra, để ráo dầu.',
           FALSE,
           4,
           now(),
           59
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bánh Khoai Môn Chiên Giòn nên được dùng ngay khi còn nóng để cảm nhận được độ giòn của vỏ và độ bùi của nhân. Có thể ăn kèm với tương ớt hoặc sốt mayonnaise.',
           FALSE,
           5,
           now(),
           59
       );

-- Recipe ID: 60
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           8,
           '2025-11-29 13:00:00',
           'Bắp Rang Bơ (Popcorn) truyền thống, thơm lừng vị bơ và ngọt nhẹ. Món ăn vặt nhanh chóng, hoàn hảo cho buổi xem phim tại nhà.',
           'EASY',
           FALSE,
           TRUE,
           4,
           'Bắp Rang Bơ',
           '2025-11-29 13:00:00',
           0,
           7,
           7
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/vx3ul3incasf1miyxke8', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764005299/cooki-note/recipes/vx3ul3incasf1miyxke8.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 79, 60);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Hạt bắp khô (popcorn kernels).', 100, TRUE, 'gram', now(), 43, 60);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để tạo mùi và độ béo.', 30, TRUE, 'gram', now(), 63, 60);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Điều chỉnh độ ngọt.', 2, TRUE, 'muỗng canh', now(), 58, 60);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 60);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để rang bắp.', 1, TRUE, 'muỗng canh', now(), 66, 60);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng nồi lớn (nên dùng nồi dày có nắp đậy kín) với Dầu Ăn và 3-4 hạt Bắp Ngô khô. Đậy nắp và đun lửa vừa. Khi các hạt bắp này nổ, cho toàn bộ Bắp Ngô còn lại vào nồi.',
           FALSE,
           1,
           now(),
           60
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậy nắp lại. Lắc nồi liên tục trên lửa vừa. Quá trình nổ sẽ diễn ra trong khoảng 2-3 phút. Khi nghe thấy tiếng bắp nổ thưa dần (cách nhau khoảng 2 giây), tắt bếp.',
           FALSE,
           2,
           now(),
           60
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một nồi nhỏ, cho Bơ Lạt, Đường Cát và Muối vào. Đun nhỏ lửa, khuấy đều cho đến khi bơ tan chảy và đường tan hoàn toàn (hoặc tạo thành caramel nếu muốn).',
           FALSE,
           3,
           now(),
           60
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nhanh chóng đổ sốt Bơ Đường (Bước 3) lên Bắp Rang (Bước 2). Đảo/lắc đều để bắp rang thấm đều sốt. Dùng ngay khi còn ấm và giòn.',
           FALSE,
           4,
           now(),
           60
       );

-- Recipe ID: 61
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-17 18:00:00',
           'Đậu Phụ Kho Nấm Hương là món ăn chay thơm ngon, giàu protein thực vật. Đậu phụ chiên sơ và nấm được kho trong nước sốt đậm đà, rất hợp ăn kèm cơm nóng.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Đậu Phụ Kho Nấm Hương',
           '2025-11-17 18:00:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/tyvg31r7vzx1slt1ta3t', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764006288/cooki-note/recipes/tyvg31r7vzx1slt1ta3t.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 80, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đậu phụ cứng, cắt miếng vuông.', 2, TRUE, 'bìa', now(), 31, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nấm khô, ngâm nở, cắt chân, thái lát.', 50, TRUE, 'gram', now(), 33, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để kho.', 3, TRUE, 'muỗng canh', now(), 76, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thắng nước màu và nêm nếm.', 2, TRUE, 'muỗng canh', now(), 58, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp nấm.', 0.5, FALSE, 'muỗng cà phê', now(), 99, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ (dùng cho món chay).', 10, TRUE, 'gram', now(), 38, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ.', 1, FALSE, 'nhánh', now(), 37, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chiên đậu phụ.', 100, TRUE, 'ml', now(), 66, 61);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rắc lên khi hoàn thành.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 61);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậu Phụ cắt miếng vuông vừa ăn. Đun nóng Dầu Ăn Thực Vật, cho đậu phụ vào chiên vàng đều các mặt. Vớt ra, để ráo dầu.',
           FALSE,
           1,
           now(),
           61
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nấm Hương ngâm nở, rửa sạch, thái lát. Ướp nấm với một chút Nước Tương và Dầu Mè.',
           FALSE,
           2,
           now(),
           61
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thắng 1 muỗng canh Đường Cát với một chút nước để tạo nước màu cánh gián. Dùng một ít dầu còn lại phi thơm Tỏi băm. Cho Nấm Hương vào xào nhanh (khoảng 3 phút).',
           FALSE,
           3,
           now(),
           61
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Đậu Phụ đã chiên (Bước 1) vào nồi/chảo. Thêm nước màu (Bước 3), Nước Tương còn lại, và Đường Cát còn lại. Đổ thêm một chút nước lọc (hoặc nước dùng chay) vào, đun sôi, sau đó hạ lửa nhỏ và kho liu riu khoảng **15 phút** cho thấm gia vị.',
           FALSE,
           4,
           now(),
           61
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi nước kho cạn và sốt sánh lại, nêm nếm lần cuối. Tắt bếp. Múc Đậu Phụ Kho Nấm ra đĩa, rắc Tiêu Đen và Hành Lá thái nhỏ lên trên. Dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           61
       );

-- Recipe ID: 62
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           35,
           '2025-11-20 18:30:00',
           'Canh Chua Chay với vị chua ngọt tự nhiên từ Thơm (Dứa) và Cà Chua, thêm hương thơm của Sả. Món canh chay giàu vitamin và chất xơ, rất phù hợp cho bữa tối.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Canh Chua Chay Thanh Mát',
           '2025-11-20 18:30:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/amp3nsalie9zldyzrfwv', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764006618/cooki-note/recipes/amp3nsalie9zldyzrfwv.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 81, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vuông vừa ăn.', 2, TRUE, 'bìa', now(), 31, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa.', 200, TRUE, 'gram', now(), 125, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt múi cau.', 2, TRUE, 'trái', now(), 26, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát xéo.', 100, TRUE, 'gram', now(), 102, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đập dập.', 30, TRUE, 'gram', now(), 40, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha với nước nóng để lấy vị chua.', 2, TRUE, 'muỗng canh', now(), 166, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm canh.', 1, TRUE, 'muỗng canh', now(), 76, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm canh.', 2, TRUE, 'muỗng canh', now(), 58, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm canh.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào Sả/Cà Chua.', 1, TRUE, 'muỗng canh', now(), 66, 62);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau nêm.', 1, FALSE, 'ít', now(), 42, 62);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cắt Đậu Phụ thành miếng vuông, chiên sơ cho vàng (tùy chọn) hoặc trụng nước sôi. Dứa, Cà Chua, Đậu Bắp cắt miếng vừa. Làm nóng Dầu Ăn, cho Sả đập dập và Cà Chua vào xào sơ cho ra màu.',
           FALSE,
           1,
           now(),
           62
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ khoảng 1.5 lít nước lọc hoặc nước dùng chay vào nồi xào (Bước 1). Đun sôi. Pha Nước Cốt Me với một chén nước nóng, khuấy tan và lọc bỏ bã, giữ lại nước cốt.',
           FALSE,
           2,
           now(),
           62
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi nước sôi, cho Dứa (Thơm) và Nước Cốt Me (Bước 2) vào. Nêm nếm với Muối, Đường Cát, và Nước Tương. Đun sôi khoảng 5 phút.',
           FALSE,
           3,
           now(),
           62
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Đậu Bắp và Đậu Phụ vào. Đun tiếp khoảng 3-5 phút cho đậu bắp chín tới và nước dùng sôi lại. Nêm nếm lại lần cuối, điều chỉnh vị chua ngọt theo sở thích.',
           FALSE,
           4,
           now(),
           62
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp. Cho Giá Đỗ (nếu dùng) và Ngò Gai (Rau Mùi) vào nồi. Múc canh ra tô. Món này dùng nóng với cơm trắng hoặc bún.',
           FALSE,
           5,
           now(),
           62
       );

-- Recipe ID: 63
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-25 18:30:00',
           'Mì Xào Chay Giòn với mì trứng (hoặc mì vằn thắn) chiên giòn, phủ lớp sốt rau củ nấm thập cẩm đậm đà. Món ăn chay đủ dinh dưỡng và hấp dẫn.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Mì Xào Chay Giòn Thập Cẩm',
           '2025-11-25 18:30:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/kvdspfu3ylo7ysezye2g', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764008819/cooki-note/recipes/kvdspfu3ylo7ysezye2g.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 82, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Mì gói/mì tươi, trụng sơ.', 200, TRUE, 'gram', now(), 110, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nấm khô ngâm nở, thái lát.', 50, TRUE, 'gram', now(), 33, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt đôi.', 50, TRUE, 'gram', now(), 34, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát/thái sợi.', 50, TRUE, 'gram', now(), 28, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa (hoặc cải ngọt).', 100, TRUE, 'gram', now(), 106, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt hạt lựu, chiên vàng.', 1, TRUE, 'bìa', now(), 31, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm sốt.', 3, TRUE, 'muỗng canh', now(), 76, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Hòa với nước lạnh để làm sánh sốt.', 1, TRUE, 'muỗng cà phê', now(), 131, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm sốt.', 1, TRUE, 'muỗng cà phê', now(), 58, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chiên mì và xào.', 300, TRUE, 'ml', now(), 66, 63);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 5, TRUE, 'gram', now(), 39, 63);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trụng Mì Trứng qua nước sôi cho chín tới, xả lại nước lạnh và để ráo. Đun nóng Dầu Ăn, chia mì thành từng phần, cho vào chiên ngập dầu cho đến khi vàng giòn. Vớt ra, để ráo dầu và xếp ra đĩa.',
           FALSE,
           1,
           now(),
           63
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cà Rốt, Nấm Hương, Nấm Rơm và Bắp Cải cắt miếng/sợi vừa ăn. Đậu Phụ cắt hạt lựu và chiên vàng. Phi thơm Gừng băm với một chút Dầu Ăn.',
           FALSE,
           2,
           now(),
           63
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Cà Rốt, Nấm Hương, Nấm Rơm vào xào trước (khoảng 2 phút). Sau đó cho Bắp Cải và Đậu Phụ chiên vào. Nêm nếm với Nước Tương và Đường Cát. Đổ một chén nước lọc vào đun sôi.',
           FALSE,
           3,
           now(),
           63
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Hòa tan Bột Bắp với một chút nước lạnh. Từ từ đổ hỗn hợp bột bắp vào chảo xào (Bước 3), khuấy đều cho đến khi sốt sánh lại, rau củ vừa chín tới (không quá mềm). Nêm nếm lại lần cuối.',
           FALSE,
           4,
           now(),
           63
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ hỗn hợp sốt rau củ nấm thập cẩm (Bước 4) lên trên phần Mì Xào Giòn đã xếp sẵn trên đĩa. Dùng nóng ngay lập tức để mì giữ được độ giòn.',
           FALSE,
           5,
           now(),
           63
       );

-- Recipe ID: 64
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           45,
           '2025-11-28 17:30:00',
           'Cà Ri Rau Củ Thuần Chay có vị béo nhẹ của nước cốt dừa, thơm mùi sả và cà ri, cùng nhiều loại rau củ như khoai lang, cà rốt. Món ăn này là lựa chọn ấm áp và bổ dưỡng cho bữa tối chay.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Cà Ri Rau Củ Thuần Chay',
           '2025-11-28 17:30:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/thtglarudfrgnfgi1bzg', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764009197/cooki-note/recipes/thtglarudfrgnfgi1bzg.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 83, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước cốt dừa lon (có thể dùng loại ít béo).', 300, TRUE, 'ml', now(), 197, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 2, TRUE, 'muỗng canh', now(), 86, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khối vuông.', 200, TRUE, 'gram', now(), 119, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khối vuông.', 100, TRUE, 'gram', now(), 20, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khối, chiên vàng (tùy chọn).', 2, TRUE, 'bìa', now(), 31, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đập dập, cắt khúc.', 30, TRUE, 'gram', now(), 40, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 5, TRUE, 'gram', now(), 39, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1.5, TRUE, 'muỗng canh', now(), 76, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cân bằng vị.', 1, FALSE, 'muỗng cà phê', now(), 58, 64);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 1, TRUE, 'muỗng canh', now(), 66, 64);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khoai Lang và Cà Rốt gọt vỏ, cắt khối vuông. Đậu Phụ cắt khối và chiên vàng (nếu muốn). Làm nóng nồi với Dầu Ăn. Phi thơm Tỏi và Gừng băm. Cho 1/2 lượng Bột Cà Ri vào, xào nhanh cho dậy mùi.',
           FALSE,
           1,
           now(),
           64
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Khoai Lang, Cà Rốt và Sả đập dập vào nồi, xào khoảng 3-5 phút. Thêm lượng Bột Cà Ri còn lại vào, đảo đều.',
           FALSE,
           2,
           now(),
           64
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ khoảng 100ml Nước Cốt Dừa vào, đun sôi nhẹ. Sau đó, thêm nước lọc hoặc nước dùng chay (khoảng 300ml) vào. Nấu sôi, hạ lửa nhỏ và hầm khoảng **20 phút** cho khoai lang mềm.',
           FALSE,
           3,
           now(),
           64
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Đậu Phụ đã chiên (hoặc không chiên) vào nồi. Nêm nếm với Nước Tương và Đường Cát. Đun thêm 5 phút cho đậu phụ thấm vị.',
           FALSE,
           4,
           now(),
           64
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nếu muốn cà ri sánh hơn, có thể hòa một chút Bột Bắp với nước và cho vào nồi. Tắt bếp. Múc Cà Ri Rau Củ ra bát, rắc ngò rí (tùy chọn) lên trên.',
           FALSE,
           5,
           now(),
           64
       );

-- Recipe ID: 65
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-29 16:30:00',
           'Nem Rán Chay (Chả Giò) với nhân đậu phụ, nấm mèo và miến, có lớp vỏ bánh tráng giòn rụm. Món ăn chay thơm ngon, hoàn hảo cho khai vị hoặc món ăn vặt.',
           'MEDIUM',
           FALSE,
           TRUE,
           4,
           'Nem Rán Chay (Chả Giò Chay)',
           '2025-11-29 16:30:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/lgk2bsteyeegcyf1i8ct', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764009491/cooki-note/recipes/lgk2bsteyeegcyf1i8ct.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 84, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nghiền nhuyễn, vắt bớt nước.', 2, TRUE, 'bìa', now(), 31, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm nở, băm nhỏ.', 20, TRUE, 'gram', now(), 131, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm mềm, cắt ngắn.', 50, TRUE, 'gram', now(), 133, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bào sợi.', 50, TRUE, 'gram', now(), 20, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu nhỏ.', 30, TRUE, 'gram', now(), 19, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nhân và nước chấm.', 1.5, TRUE, 'muỗng canh', now(), 76, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nhân và pha nước chấm.', 1, TRUE, 'muỗng cà phê', now(), 58, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nhân.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh tráng cuốn chả giò (loại dai).', 18, TRUE, 'cái', now(), 156, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chiên ngập dầu.', 300, TRUE, 'ml', now(), 66, 65);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha nước chấm.', 1, TRUE, 'muỗng canh', now(), 79, 65);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nấm Mèo và Miến Khô ngâm nở, cắt ngắn. Nghiền nhuyễn Đậu Phụ và vắt bớt nước. Trộn Đậu Phụ, Nấm Mèo, Miến Khô, Cà Rốt bào sợi và Hành Tây thái nhỏ. Nêm nhân với Nước Tương, Đường Cát và Tiêu Đen.',
           FALSE,
           1,
           now(),
           65
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm mềm Bánh Tráng bằng cách nhúng qua nước hoặc thoa nước. Trải bánh tráng ra, cho nhân vào và cuốn chặt tay, gập mép bánh vào giữa. Cuốn khoảng 18-20 cuốn.',
           FALSE,
           2,
           now(),
           65
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn Thực Vật ở lửa vừa. Cho Nem Rán vào chiên lần 1 cho đến khi chín đều nhân và vỏ bánh se lại, chuyển màu vàng nhạt. Vớt nem ra, để ráo dầu và làm nguội hoàn toàn.',
           FALSE,
           3,
           now(),
           65
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước chấm chay chua ngọt: Trộn Nước Tương, Đường Cát, Nước Cốt Chanh và nước ấm (hoặc nước lọc) theo tỷ lệ vừa ăn. Thêm Ớt Tươi băm (nếu dùng).',
           FALSE,
           4,
           now(),
           65
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tăng nhiệt độ dầu lên lửa lớn. Cho Nem Rán đã nguội (Bước 3) vào chiên lần 2 cho đến khi nem vàng giòn rụm và có màu nâu đẹp. Vớt ra, để ráo dầu.',
           FALSE,
           5,
           now(),
           65
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nem Rán Chay dùng nóng, ăn kèm với bún (tùy chọn), rau sống (xà lách, rau thơm) và chấm với nước chấm chua ngọt đã pha.',
           FALSE,
           6,
           now(),
           65
       );

-- Recipe ID: 66
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-30 11:30:00',
           'Gỏi Cuốn Chay Sốt Lạc là món ăn tươi mát, giàu chất xơ và protein thực vật. Đậu phụ, bún và rau sống được cuốn trong bánh tráng mỏng, dùng kèm sốt đậu phộng béo ngậy.',
           'EASY',
           FALSE,
           TRUE,
           4,
           'Gỏi Cuốn Chay Sốt Đậu Phộng',
           '2025-11-30 11:30:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/vbfmad8pt62fufma9r3g', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764009813/cooki-note/recipes/vbfmad8pt62fufma9r3g.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 85, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh tráng loại mỏng.', 8, TRUE, 'cái', now(), 156, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 200, TRUE, 'gram', now(), 49, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát mỏng, áp chảo vàng hoặc chiên.', 1, TRUE, 'bìa', now(), 31, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lá to, sạch.', 1, TRUE, 'ít', now(), 25, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lá bạc hà, húng quế.', 30, FALSE, 'gram', now(), 41, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm sốt chấm.', 3, TRUE, 'muỗng canh', now(), 68, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Hoặc nước tương đen để tăng độ đậm đà.', 1, FALSE, 'muỗng canh', now(), 168, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ, phi thơm sốt.', 1, TRUE, 'tép', now(), 38, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nấu sốt.', 1, TRUE, 'muỗng canh', now(), 58, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trang trí/tạo vị cay (tùy chọn).', 1, FALSE, 'trái', now(), 83, 66);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha loãng sốt.', 50, TRUE, 'ml', now(), 153, 66);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậu Phụ cắt lát mỏng, áp chảo hoặc chiên vàng. Bún Tươi trụng sơ. Xà Lách và Rau Thơm rửa sạch, để ráo nước. Cắt các nguyên liệu thành kích cỡ vừa cuốn.',
           FALSE,
           1,
           now(),
           66
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với chút dầu ăn. Phi thơm Tỏi băm. Cho Bơ Đậu Phộng, Đường Cát, Nước Lọc và Tương Hột (nếu dùng) vào chảo. Đun nhỏ lửa, khuấy đều cho sốt tan và sánh lại. Nêm nếm cho sốt có vị ngọt mặn béo vừa phải.',
           FALSE,
           2,
           now(),
           66
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nhúng Bánh Tráng qua nước ấm nhanh chóng. Xếp Xà Lách, Rau Thơm, Bún Tươi và Đậu Phụ lên bánh tráng. Cuốn chặt tay, đảm bảo cuốn tròn và đẹp mắt.',
           FALSE,
           3,
           now(),
           66
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cắt Gỏi Cuốn Chay thành miếng vừa ăn (hoặc để nguyên). Múc Sốt Đậu Phộng ra bát nhỏ, trang trí thêm Lạc Rang giã dập và lát Ớt Tươi lên trên (nếu dùng). Thưởng thức món cuốn tươi mát cùng sốt chấm đậm đà.',
           FALSE,
           4,
           now(),
           66
       );

-- Recipe ID: 67
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-27 18:00:00',
           'Cà Tím Xào Lá Lốt là món chay đơn giản nhưng rất đưa cơm. Cà tím mềm, thấm vị mặn ngọt đậm đà, thơm mùi lá lốt đặc trưng. Món ăn này có thể được kho hoặc xào tùy thích.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Cà Tím Xào Lá Lốt Đậm Đà (Món Chay)',
           '2025-11-27 18:00:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/r0sosndkui8niap90xot', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764010073/cooki-note/recipes/r0sosndkui8niap90xot.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 86, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khúc/miếng vừa ăn, ngâm nước muối loãng.', 400, TRUE, 'gram', now(), 101, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi.', 30, TRUE, 'gram', now(), 114, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khối, chiên vàng (tùy chọn).', 1, FALSE, 'bìa', now(), 31, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 2, TRUE, 'muỗng canh', now(), 76, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tăng độ béo/mặn.', 1, FALSE, 'muỗng canh', now(), 168, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cân bằng vị.', 1, TRUE, 'muỗng cà phê', now(), 58, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, TRUE, 'gram', now(), 38, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 10, FALSE, 'gram', now(), 40, 67);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 2, TRUE, 'muỗng canh', now(), 66, 67);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cà Tím cắt miếng vừa, ngâm trong nước muối loãng khoảng 10 phút để cà tím không bị đen và bớt chát. Vớt ra, rửa sạch, để ráo. Lá Lốt thái sợi.',
           FALSE,
           1,
           now(),
           67
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha sốt kho: Trộn Nước Tương, Đường Cát, Tương Hột (nếu dùng) và 1/2 chén nước lọc. Khuấy đều.',
           FALSE,
           2,
           now(),
           67
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng Dầu Ăn, phi thơm Tỏi băm (hoặc Sả băm). Cho Cà Tím vào xào nhanh trên lửa lớn (khoảng 3-5 phút). Nếu dùng Đậu Phụ chiên, cho đậu phụ vào sau.',
           FALSE,
           3,
           now(),
           67
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ hỗn hợp nước sốt kho (Bước 2) vào chảo cà tím. Đun sôi, sau đó hạ lửa nhỏ và kho/rim khoảng **10-15 phút** cho cà tím mềm nhừ và sốt sánh lại, thấm đều gia vị.',
           FALSE,
           4,
           now(),
           67
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi cà tím đã mềm, cho Lá Lốt thái sợi vào, đảo nhanh tay (khoảng 30 giây) rồi tắt bếp. Món này dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           67
       );

-- Recpie ID: 68
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-25 10:00:00',
           'Đậu Hũ Sốt Cà Chua là món ăn quen thuộc, dễ làm, giàu protein và vitamin. Đậu phụ chiên vàng được rim trong sốt cà chua đậm đà, dùng kèm cơm nóng rất ngon miệng.',
           'EASY',
           FALSE,
           TRUE,
           3,
           'Đậu Hũ Sốt Cà Chua (Dễ Làm)',
           '2025-11-25 10:00:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/kienlgvujbx9wnj7yczn', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764010576/cooki-note/recipes/kienlgvujbx9wnj7yczn.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 87, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vuông vừa ăn.', 3, TRUE, 'bìa', now(), 31, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ hoặc xay nhuyễn.', 300, TRUE, 'gram', now(), 26, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, chia làm 2 phần.', 2, TRUE, 'nhánh', now(), 37, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, TRUE, 'tép', now(), 38, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm sốt.', 1, TRUE, 'muỗng canh', now(), 76, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm sốt.', 1, TRUE, 'muỗng cà phê', now(), 58, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm sốt.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 68);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chiên đậu và xào sốt.', 100, TRUE, 'ml', now(), 66, 68);

-- Recipe ID: 69
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-28 17:00:00',
           'Canh Nấm Rong Biển Tàu Hũ là món canh chay thanh đạm, giàu i-ốt và protein thực vật. Vị ngọt tự nhiên từ nấm kết hợp với rong biển dai dai và tàu hũ mềm mại.',
           'EASY',
           FALSE,
           TRUE,
           4,
           'Canh Nấm Rong Biển Tàu Hũ (Thanh Đạm)',
           '2025-11-28 17:00:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/wjj3mjbfe39md4pf3van', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764010787/cooki-note/recipes/wjj3mjbfe39md4pf3van.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 88, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm nở, cắt lát.', 20, TRUE, 'gram', now(), 33, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt gốc, rửa sạch.', 1, TRUE, 'gói', now(), 132, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rong biển nấu canh, ngâm nở, cắt ngắn.', 15, TRUE, 'gram', now(), 150, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tàu hũ non, cắt khối vuông.', 1, TRUE, 'hộp', now(), 31, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, TRUE, 'tép', now(), 38, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng canh', now(), 76, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cân bằng vị.', 0.5, TRUE, 'muỗng cà phê', now(), 58, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ, trang trí.', 1, FALSE, 'ít', now(), 37, 69);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 1, TRUE, 'muỗng canh', now(), 66, 69);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rong Biển Khô ngâm nước khoảng 5-10 phút cho nở mềm, rửa sạch, cắt khúc vừa ăn. Nấm Hương ngâm nở, cắt lát. Nấm Kim Châm cắt gốc. Tàu Hũ Non cắt khối vuông. Hành Lá/Ngò Rí thái nhỏ.',
           FALSE,
           1,
           now(),
           69
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng nồi với Dầu Ăn, phi thơm Tỏi băm. Cho Nấm Hương vào xào sơ. Đổ khoảng 1 lít nước lọc hoặc nước dùng chay vào nồi, đun sôi.',
           FALSE,
           2,
           now(),
           69
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi nước sôi, cho Nấm Kim Châm vào. Nêm nếm với Muối, Đường Cát, và Nước Tương. Đun sôi lại.',
           FALSE,
           3,
           now(),
           69
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cuối cùng, cho Rong Biển Khô và Tàu Hũ Non vào nồi. Đun sôi thêm khoảng 1-2 phút (tránh đun lâu làm rong biển dai và tàu hũ nát). Nêm nếm lại lần cuối.',
           FALSE,
           4,
           now(),
           69
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tắt bếp. Múc canh ra tô, rắc Hành Lá/Ngò Rí và một chút Tiêu Đen (tùy chọn) lên trên. Dùng nóng với cơm trắng.',
           FALSE,
           5,
           now(),
           69
       );

-- Recipe ID: 70
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-26 19:30:00',
           'Miến Xào Chay Thập Cẩm là món ăn giàu chất xơ, Miến dai ngon không bị dính, kết hợp với nhiều loại rau củ và nấm, tạo nên hương vị hài hòa, đậm đà vị nước tương. Thích hợp cho bữa ăn sáng hoặc bữa trưa.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Miến Xào Chay Thập Cẩm',
           '2025-11-26 19:30:00',
           0,
           6,
           8
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/mmywlbxifywmqlgziwte', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764011089/cooki-note/recipes/mmywlbxifywmqlgziwte.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 89, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ngâm mềm, cắt ngắn vừa phải.', 150, TRUE, 'gram', now(), 133, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi.', 50, TRUE, 'gram', now(), 28, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi.', 100, TRUE, 'gram', now(), 106, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát.', 50, TRUE, 'gram', now(), 33, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt sợi mỏng, chiên vàng.', 1, TRUE, 'bìa', now(), 31, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 2, TRUE, 'muỗng canh', now(), 76, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 58, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ.', 1, FALSE, 'ít', now(), 37, 70);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xào.', 2, TRUE, 'muỗng canh', now(), 66, 70);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Miến Khô ngâm nước nóng khoảng 5 phút cho mềm, cắt ngắn, vớt ra để ráo. Trộn miến với một chút Nước Tương để miến có màu và thấm vị (tùy chọn).',
           FALSE,
           1,
           now(),
           70
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cà Rốt, Bắp Cải thái sợi. Nấm Hương thái lát. Đậu Phụ chiên vàng, thái sợi.',
           FALSE,
           2,
           now(),
           70
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ăn. Phi thơm Tỏi băm (nếu dùng chay có thể dùng gừng/hành tây chay). Cho Nấm Hương và Cà Rốt vào xào trước (khoảng 3 phút). Sau đó cho Bắp Cải và Đậu Phụ chiên vào, nêm nếm với Muối, Đường Cát, và một chút Nước Tương còn lại.',
           FALSE,
           3,
           now(),
           70
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Miến đã trộn (Bước 1) vào chảo rau củ. Đảo nhanh tay trên lửa lớn khoảng 3-5 phút cho miến săn lại và thấm đều gia vị. Nêm nếm lại lần cuối và rắc Tiêu Đen.',
           FALSE,
           4,
           now(),
           70
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Miến Xào Chay ra đĩa, rắc Hành Lá/Ngò Rí thái nhỏ lên trên. Dùng nóng.',
           FALSE,
           5,
           now(),
           70
       );

-- Recipe ID: 71
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-29 18:00:00',
           'Mì Ý Carbonara truyền thống, kem mịn tự nhiên nhờ trứng và phô mai, không dùng kem tươi. Thịt heo muối giòn rụm và tiêu đen tạo nên hương vị kinh điển của ẩm thực Ý.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Mì Ý Carbonara',
           '2025-11-29 18:00:00',
           0,
           5,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/fyl6ejxc2npc2ima87va', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764043211/cooki-note/recipes/fyl6ejxc2npc2ima87va.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 90, 71);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Spaghetti hoặc bucatini.', 200, TRUE, 'gram', now(), 51, 71);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pancetta hoặc thịt ba chỉ xông khói, cắt hạt lựu.', 100, TRUE, 'gram', now(), 18, 71);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sử dụng 2 lòng đỏ và 1 quả trứng nguyên (tổng 3 phần trứng).', 3, TRUE, 'phần', now(), 14, 71);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bào vụn (Parmesan hoặc Pecorino Romano).', 50, TRUE, 'gram', now(), 65, 71);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tiêu đen xay thô.', 1, TRUE, 'muỗng cà phê', now(), 73, 71);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc mì và nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 71, 71);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đun sôi nước, thêm Muối. Cho Mì Ý vào luộc theo thời gian ghi trên bao bì. Trong khi luộc, đánh đều Trứng Gà với Phô Mai Parmesan bào và 3/4 lượng Tiêu Đen xay thô.',
           FALSE,
           1,
           now(),
           71
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cắt Bacon/Thịt Xông Khói thành khối vuông nhỏ. Cho thịt vào chảo rán trên lửa vừa cho đến khi thịt giòn và ra mỡ. Tắt bếp. Giữ lại khoảng 1 muỗng canh mỡ/dầu trong chảo.',
           FALSE,
           2,
           now(),
           71
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Mì Ý luộc xong, vớt ra, cho ngay vào chảo mỡ thịt (Bước 2) khi chảo đã **tắt bếp** (hoặc chỉ còn hơi ấm). Thêm 1/2 chén nước luộc mì đã giữ lại vào mì, đảo nhanh tay.',
           FALSE,
           3,
           now(),
           71
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ hỗn hợp Trứng Phô Mai (Bước 1) vào chảo mì (Bước 3). **Đảo thật nhanh tay và liên tục** để trứng và phô mai tạo thành lớp sốt kem mịn màng, không bị vón cục hoặc chín thành trứng chiên.',
           FALSE,
           4,
           now(),
           71
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc mì ra đĩa. Rắc phần thịt xông khói giòn và Tiêu Đen còn lại lên trên. Dùng nóng ngay lập tức.',
           FALSE,
           5,
           now(),
           71
       );

-- Recipe ID: 72
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-18 19:30:00',
           'Bò Bít Tết Sốt Tiêu Xanh (Steak Frites) với miếng bò được áp chảo hoàn hảo (medium rare), kèm sốt kem tiêu xanh cay nhẹ, đậm đà. Món ăn tinh tế của ẩm thực Pháp/Âu.',
           'HARD',
           FALSE,
           TRUE,
           2,
           'Bò Bít Tết Sốt Tiêu Xanh',
           '2025-11-18 19:30:00',
           0,
           5,
           12
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/cqxjfir712qeyvp9shte', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764043498/cooki-note/recipes/cqxjfir712qeyvp9shte.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 91, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thăn ngoại hoặc thăn nội (dày 2-3cm).', 300, TRUE, 'gram', now(), 2, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để áp chảo (basting) và làm sốt.', 30, TRUE, 'gram', now(), 63, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Áp chảo.', 1, TRUE, 'muỗng canh', now(), 67, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đập dập.', 2, TRUE, 'tép', now(), 38, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lá tươi/khô (dùng ID Bột Lá Rosemary).', 1, TRUE, 'nhánh', now(), 177, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp và nêm nếm.', 1, TRUE, 'muỗng cà phê', now(), 71, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tiêu đen xay, ướp thịt.', 0.5, TRUE, 'muỗng cà phê', now(), 73, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Kem béo (double cream/whipping cream).', 100, TRUE, 'ml', now(), 62, 72);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rượu brandy hoặc rượu mạnh.', 30, TRUE, 'ml', now(), 70, 72);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Miếng Thịt Bò (Steak) để nhiệt độ phòng. Thấm khô bề mặt. Ướp đều hai mặt với Muối và Tiêu Đen (chỉ ướp trước khi nấu 1-2 phút).',
           FALSE,
           1,
           now(),
           72
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ô Liu ở lửa lớn. Khi dầu nóng, đặt miếng thịt bò vào, áp chảo mỗi mặt khoảng 2 phút. Sau đó giảm lửa vừa.',
           FALSE,
           2,
           now(),
           72
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thêm Bơ Lạt, Tỏi đập dập và Lá Hương Thảo vào chảo. Nghiêng chảo và dùng thìa múc bơ đang tan chảy rưới liên tục lên bề mặt thịt (basting) trong khoảng 1-2 phút. Lấy thịt ra, để nghỉ **5 phút** trên thớt trước khi cắt.',
           FALSE,
           3,
           now(),
           72
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ bớt dầu/bơ trong chảo (Bước 3). Cho Tiêu Xanh và Rượu Nấu Ăn vào chảo nóng, cạo đáy chảo để lấy cặn thịt (deglaize). Đun sôi cho rượu bay hơi hết (khoảng 1 phút).',
           FALSE,
           4,
           now(),
           72
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Kem Tươi (Whipping Cream) vào chảo (Bước 4). Đun nhỏ lửa, khuấy đều cho sốt sánh lại. Nêm nếm lại sốt với Muối và Tiêu Đen cho vừa khẩu vị.',
           FALSE,
           5,
           now(),
           72
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thịt Bò đã nghỉ được thái lát dày 1-2 cm. Xếp ra đĩa, rưới Sốt Tiêu Xanh lên trên. Thường ăn kèm với khoai tây chiên (pommes frites) hoặc khoai tây nghiền.',
           FALSE,
           6,
           now(),
           72
       );

-- Recipe ID: 73
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-23 12:30:00',
           'Salad Cá Ngừ Niçoise (Salade Niçoise) là món salad nổi tiếng của Pháp, kết hợp cá ngừ, trứng luộc, khoai tây, và rau tươi. Món ăn nhẹ nhàng, đầy đủ dinh dưỡng.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Salad Cá Ngừ Niçoise Kiểu Pháp',
           '2025-11-23 12:30:00',
           0,
           5,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/qwf9se73zlcbullmkuvx', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764043803/cooki-note/recipes/qwf9se73zlcbullmkuvx.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 92, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá ngừ đóng hộp, vớt ráo dầu/nước.', 100, TRUE, 'gram', now(), 188, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc chín, cắt múi cau.', 2, TRUE, 'quả', now(), 14, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc chín, cắt miếng vừa.', 150, TRUE, 'gram', now(), 21, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chần sơ cho chín tới.', 100, TRUE, 'gram', now(), 32, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cà chua bi, cắt đôi.', 100, TRUE, 'gram', now(), 26, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Làm nền.', 50, TRUE, 'gram', now(), 25, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Làm vinaigrette.', 2, TRUE, 'muỗng canh', now(), 67, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Làm vinaigrette (hoặc giấm rượu vang).', 1, TRUE, 'muỗng canh', now(), 78, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ (tùy chọn).', 0.5, FALSE, 'tép', now(), 38, 73);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.5, TRUE, 'muỗng cà phê', now(), 71, 73);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Luộc Khoai Tây và Trứng Gà. Khoai Tây chín thì cắt miếng. Trứng gà chín thì cắt múi cau. Đậu Que chần sơ qua nước sôi khoảng 2 phút rồi vớt ra ngâm nước lạnh để giữ màu xanh.',
           FALSE,
           1,
           now(),
           73
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cà Chua bi cắt đôi. Xà Lách rửa sạch, để ráo. Cá Ngừ vớt ra khỏi hộp, dằm nhẹ và để ráo dầu/nước.',
           FALSE,
           2,
           now(),
           73
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một bát nhỏ, đánh tan Giấm Gạo và Muối. Từ từ cho Dầu Ô Liu vào, vừa cho vừa khuấy đều hoặc lắc mạnh (emulsify) để tạo thành hỗn hợp sốt sánh mịn. Thêm Tỏi băm (nếu dùng) và Tiêu Đen.',
           FALSE,
           3,
           now(),
           73
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trải Xà Lách làm nền. Xếp các nguyên liệu (Khoai Tây, Đậu Que, Cà Chua bi) xung quanh mép đĩa. Đặt Cá Ngừ và Trứng Gà vào giữa.',
           FALSE,
           4,
           now(),
           73
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rưới đều Nước Sốt Vinaigrette (Bước 3) lên toàn bộ phần salad. Món này dùng lạnh sẽ ngon nhất.',
           FALSE,
           5,
           now(),
           73
       );

-- Recipe ID: 74
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           60,
           '2025-11-28 17:00:00',
           'Pizza Margherita là công thức pizza Ý nguyên bản, tập trung vào sự tươi mới của Cà Chua, Phô Mai Mozzarella và Lá Húng Quế. Cần kỹ thuật làm và nướng bột để có đế bánh mỏng, giòn.',
           'HARD',
           FALSE,
           TRUE,
           4,
           'Pizza Margherita',
           '2025-11-28 17:00:00',
           0,
           5,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/gelaumtmeky8zvmdsodx', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764044036/cooki-note/recipes/gelaumtmeky8zvmdsodx.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 93, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bột mì làm bánh pizza.', 300, TRUE, 'gram', now(), 53, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 5, TRUE, 'gram', now(), 57, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng cho bột và sốt.', 5, TRUE, 'gram', now(), 71, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước ấm (35-40°C).', 180, TRUE, 'ml', now(), 153, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn bột và rưới lên pizza.', 1, TRUE, 'muỗng canh', now(), 67, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Sốt cà chua nguyên chất (hoặc cà chua tươi xay).', 200, TRUE, 'gram', now(), 26, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phô mai tươi hoặc bào sợi.', 150, TRUE, 'gram', now(), 64, 74);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lá húng quế tươi.', 1, TRUE, 'ít', now(), 41, 74);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn Men Nở, Đường Cát, Muối và Nước Ấm. Để nghỉ 5 phút. Sau đó trộn với Bột Mì Đa Dụng và Dầu Ô Liu. Nhào bột trong 10-15 phút cho đến khi bột mịn và đàn hồi. Ủ bột ở nơi ấm áp trong **1-2 giờ** cho đến khi bột nở gấp đôi.',
           FALSE,
           1,
           now(),
           74
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cà Chua (Sốt) nêm nếm với Muối, Tiêu Đen (nếu dùng) và Dầu Ô Liu (tùy chọn). Phô Mai Mozzarella cắt lát hoặc vắt khô (nếu dùng phô mai tươi). Làm nóng lò nướng ở nhiệt độ **250°C** (hoặc nhiệt độ cao nhất).',
           FALSE,
           2,
           now(),
           74
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Chia bột đã ủ thành 2 phần. Cán mỏng từng phần bột thành hình tròn đường kính khoảng 25cm. Dùng tay kéo nhẹ mép để tạo viền bánh.',
           FALSE,
           3,
           now(),
           74
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Quét một lớp mỏng Sốt Cà Chua lên đế bánh (chừa lại phần viền). Nướng sơ đế bánh (nếu dùng lò có nhiệt độ thấp) khoảng 5 phút để đế bánh cứng cáp.',
           FALSE,
           4,
           now(),
           74
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đặt Phô Mai Mozzarella lên trên lớp sốt cà chua. Cho bánh vào lò và nướng thêm khoảng **8-12 phút** cho đến khi phô mai tan chảy, viền bánh vàng giòn.',
           FALSE,
           5,
           now(),
           74
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy pizza ra khỏi lò. Rưới một chút Dầu Ô Liu (nếu muốn) và xếp Lá Húng Quế tươi lên trên. Cắt miếng và thưởng thức ngay khi còn nóng.',
           FALSE,
           6,
           now(),
           74
       );

-- Recipe ID: 75
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-20 16:30:00',
           'Tokbokki là món bánh gạo cay nổi tiếng, với bánh gạo dai, chả cá và rau củ, được nấu trong nước sốt cay ngọt, sền sệt đậm đà, chuẩn vị ẩm thực đường phố Hàn Quốc.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Bánh Gạo Cay Tokbokki',
           '2025-11-20 16:30:00',
           0,
           4,
           13
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/pflo2ttf8nmqluct4uqn', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764044253/cooki-note/recipes/pflo2ttf8nmqluct4uqn.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 94, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bánh gạo thỏi. Nếu là loại đông lạnh thì ngâm nước trước.', 300, TRUE, 'gram', now(), 193, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa.', 100, TRUE, 'gram', now(), 194, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Có thể dùng nước hầm rau củ.', 500, TRUE, 'ml', now(), 153, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 2, TRUE, 'muỗng canh', now(), 195, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Điều chỉnh độ cay.', 1, FALSE, 'muỗng canh', now(), 196, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo vị mặn.', 1, TRUE, 'muỗng canh', now(), 76, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo vị ngọt cân bằng.', 1.5, TRUE, 'muỗng canh', now(), 58, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tùy chọn, tăng độ cay.', 1, FALSE, 'muỗng cà phê', now(), 197, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát mỏng.', 50, TRUE, 'gram', now(), 198, 75);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt khúc 3-4cm.', 1, TRUE, 'cây', now(), 199, 75);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Pha nước sốt: Trộn Gochujang, Gochugaru (nếu dùng), Nước Tương, Đường Cát và Tương Ớt (nếu dùng). Cắt Chả Cá miếng vừa, Hành Tây lát mỏng, Hành Baro khúc ngắn. Nếu dùng Bánh Gạo đông lạnh, ngâm nước ấm 10 phút.',
           FALSE,
           1,
           now(),
           75
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đổ Nước Lọc vào nồi, đun sôi. Cho hỗn hợp sốt (Bước 1) vào, khuấy đều cho tan. Cho Hành Tây vào nấu trước.',
           FALSE,
           2,
           now(),
           75
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi sốt sôi, cho Bánh Gạo vào nấu. Nấu khoảng 8-10 phút cho đến khi bánh gạo mềm và sốt bắt đầu sánh lại.',
           FALSE,
           3,
           now(),
           75
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Chả Cá và Hành Baro vào. Nấu thêm 2-3 phút, khuấy nhẹ cho chả cá chín và hành baro hơi mềm. Nêm nếm lại cho vừa vị. Sốt Tokbokki ngon nhất là khi sền sệt.',
           FALSE,
           4,
           now(),
           75
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Tokbokki ra tô. Thường rắc thêm mè rang hoặc trứng luộc (tùy chọn) lên trên. Dùng nóng ngay.',
           FALSE,
           5,
           now(),
           75
       );

-- Recipe ID: 76
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           40,
           '2025-11-21 12:00:00',
           'Bibimbap (Cơm Trộn) là món ăn Hàn Quốc cân bằng dinh dưỡng, với cơm, thịt bò xào, trứng ốp la và nhiều loại rau củ tươi. Món này dùng kèm sốt Gochujang cay ngọt.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Cơm Trộn Bibimbap',
           '2025-11-21 12:00:00',
           0,
           4,
           13
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/uandcasrnfxwolqdlgu1', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764044475/cooki-note/recipes/uandcasrnfxwolqdlgu1.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 95, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cơm trắng nóng.', 300, TRUE, 'gram', now(), 47, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt bò thăn thái lát mỏng.', 150, TRUE, 'gram', now(), 2, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trứng ốp la lòng đào.', 2, TRUE, 'quả', now(), 14, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi, xào sơ.', 50, TRUE, 'gram', now(), 20, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái sợi.', 50, TRUE, 'gram', now(), 27, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trụng sơ (dùng ID Đậu Phụ).', 50, TRUE, 'gram', now(), 31, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt.', 1, TRUE, 'muỗng canh', now(), 76, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ướp thịt và trộn cơm.', 1.5, TRUE, 'muỗng canh', now(), 99, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng làm sốt trộn.', 2, TRUE, 'muỗng canh', now(), 195, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha sốt Gochujang.', 0.5, FALSE, 'muỗng canh', now(), 58, 76);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, TRUE, 'tép', now(), 38, 76);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Thái sợi Cà Rốt và Dưa Chuột. Trụng sơ Giá Đỗ và để ráo. Thịt Bò thái lát mỏng, ướp với Nước Tương, Dầu Mè (một chút) và Tỏi băm.',
           FALSE,
           1,
           now(),
           76
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn đều Gochujang (Tương ớt Hàn), Đường Cát, một chút Dầu Mè và nước ấm (hoặc nước luộc gà) để tạo thành sốt trộn.',
           FALSE,
           2,
           now(),
           76
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lần lượt xào sơ (hoặc áp chảo) từng loại rau củ (Cà Rốt, Giá Đỗ) với một chút Dầu Ăn, Muối và Tỏi (tùy chọn) trong 1-2 phút. Xào Thịt Bò cho chín tới. Giữ Dưa Chuột ăn sống.',
           FALSE,
           3,
           now(),
           76
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rán Trứng Gà ốp la (lòng đào là ngon nhất).',
           FALSE,
           4,
           now(),
           76
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Cơm nóng vào tô lớn. Rưới một chút Dầu Mè lên cơm. Xếp Thịt Bò, các loại rau củ đã xào và Dưa Chuột thái sợi xung quanh tô một cách đẹp mắt. Đặt Trứng Gà ốp la lên trên cùng.',
           FALSE,
           5,
           now(),
           76
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Món Bibimbap được phục vụ kèm Sốt Gochujang (Bước 2). Khi ăn, cho sốt vào và trộn đều tất cả các thành phần lại với nhau.',
           FALSE,
           6,
           now(),
           76
       );

-- Recipe ID: 77
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-25 12:30:00',
           'Cơm Rang Kim Chi (Kimchi Bokkeumbap) là món ăn Hàn Quốc nhanh, tiện lợi. Cơm được rang cùng thịt heo ba chỉ và kim chi chua cay, thơm mùi dầu mè. Rất hợp cho bữa trưa hoặc tối nhanh.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Cơm Rang Kim Chi Thịt Ba Chỉ (Kimchi Bokkeumbap)',
           '2025-11-25 12:30:00',
           0,
           4,
           13
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/oofqi7bbjqhuzgc8tibu', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764044790/cooki-note/recipes/oofqi7bbjqhuzgc8tibu.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 96, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cơm nguội, xới tơi.', 300, TRUE, 'gram', now(), 47, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ.', 150, TRUE, 'gram', now(), 140, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt hạt lựu nhỏ.', 100, TRUE, 'gram', now(), 1, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước Kim Chi từ hũ (dùng ID Nước Lọc).', 3, TRUE, 'muỗng canh', now(), 153, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1, TRUE, 'muỗng canh', now(), 76, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo mùi thơm Hàn Quốc.', 1, TRUE, 'muỗng cà phê', now(), 99, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, FALSE, 'tép', now(), 38, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để rang cơm.', 1, TRUE, 'muỗng canh', now(), 66, 77);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trứng ốp la (topping).', 2, TRUE, 'quả', now(), 14, 77);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ăn. Cho Thịt Heo Ba Chỉ cắt hạt lựu vào rang cho thịt săn lại và ra bớt mỡ. Vớt thịt ra, giữ lại mỡ trong chảo.',
           FALSE,
           1,
           now(),
           77
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng mỡ thịt còn lại phi thơm Tỏi băm. Cho Kim Chi đã cắt nhỏ vào xào nhanh (khoảng 3 phút). Thêm Nước Kim Chi vào xào cùng.',
           FALSE,
           2,
           now(),
           77
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Cơm nguội vào chảo Kim Chi. Đảo đều trên lửa lớn, đánh tơi hạt cơm. Nêm nếm với Nước Tương. Cho Thịt Ba Chỉ đã xào (Bước 1) trở lại vào chảo.',
           FALSE,
           3,
           now(),
           77
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trước khi tắt bếp, rưới Dầu Mè lên cơm, đảo nhanh tay. Nêm nếm lại lần cuối (có thể thêm Gochujang nếu thích cay hơn).',
           FALSE,
           4,
           now(),
           77
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Cơm Rang Kim Chi ra tô. Rán Trứng Gà ốp la (lòng đào) và đặt lên trên cơm. Có thể rắc thêm mè rang hoặc rong biển vụn (tùy chọn). Dùng nóng.',
           FALSE,
           5,
           now(),
           77
       );

-- Recipe ID: 78
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           15,
           '2025-11-28 11:00:00',
           'Salad Trứng Gà Tôm là món giảm cân giàu protein và chất xơ. Tôm và trứng cung cấp protein nạc, ăn kèm rau xanh tươi mát cùng sốt giấm táo nhẹ nhàng, giúp no lâu.',
           'EASY',
           FALSE,
           TRUE,
           2,
           'Salad Trứng Gà Tôm Sốt Giấm Táo (Low Calorie)',
           '2025-11-28 11:00:00',
           0,
           3,
           4
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/yz3quet8xzij1fufglfd', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764045080/cooki-note/recipes/yz3quet8xzij1fufglfd.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 97, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc chín, cắt múi cau.', 2, TRUE, 'quả', now(), 14, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Luộc hoặc hấp, bóc vỏ.', 150, TRUE, 'gram', now(), 7, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rau xanh nền.', 100, TRUE, 'gram', now(), 25, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt đôi.', 50, TRUE, 'gram', now(), 26, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chần sơ.', 50, TRUE, 'gram', now(), 32, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Làm sốt dressing.', 1.5, TRUE, 'muỗng canh', now(), 67, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giấm táo hoặc Giấm Gạo.', 1, TRUE, 'muỗng canh', now(), 78, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo ngọt nhẹ (tùy chọn).', 0.5, FALSE, 'muỗng cà phê', now(), 80, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, TRUE, 'muỗng cà phê', now(), 71, 78);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, TRUE, 'muỗng cà phê', now(), 73, 78);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Luộc chín Tôm và Trứng Gà. Tôm bóc vỏ, bỏ đầu. Trứng cắt múi cau. Đậu Que chần sơ qua nước sôi và ngâm nước lạnh để giữ độ giòn.',
           FALSE,
           1,
           now(),
           78
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rau Xà Lách rửa sạch, vẩy ráo nước. Cà Chua Bi cắt đôi. Đảm bảo tất cả rau củ đều được giữ lạnh và ráo nước.',
           FALSE,
           2,
           now(),
           78
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một lọ nhỏ, trộn Dầu Ô Liu, Giấm Gạo (hoặc Giấm Táo), Mật Ong (nếu dùng), Muối và Tiêu Đen. Lắc mạnh hoặc khuấy đều để sốt sánh lại.',
           FALSE,
           3,
           now(),
           78
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Xà Lách làm nền, xếp các nguyên liệu (Tôm, Trứng, Cà Chua Bi, Đậu Que) lên trên một cách đẹp mắt.',
           FALSE,
           4,
           now(),
           78
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rưới đều Sốt Giấm Táo (Bước 3) lên Salad ngay trước khi dùng. Tránh rưới quá sớm làm rau bị héo. Thưởng thức ngay để đảm bảo độ tươi mát.',
           FALSE,
           5,
           now(),
           78
       );

-- Recipe ID: 79
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           20,
           '2025-11-19 12:00:00',
           'Ức Gà Áp Chảo Rau Củ là món ăn cơ bản cho chế độ giảm cân (Low Carb/Keto). Thịt gà được áp chảo nhanh với Dầu Ô Liu, đảm bảo protein cao và chất béo tối thiểu.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Ức Gà Áp Chảo Rau Xanh (Low Carb)',
           '2025-11-19 12:00:00',
           0,
           3,
           17
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/nq9tww82xo95oxvq3y5w', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764045373/cooki-note/recipes/nq9tww82xo95oxvq3y5w.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 98, 79);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Ức gà lọc da, bỏ xương.', 150, TRUE, 'gram', now(), 3, 79);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa.', 100, TRUE, 'gram', now(), 23, 79);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để áp chảo.', 1, TRUE, 'muỗng canh', now(), 67, 79);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, FALSE, 'tép', now(), 38, 79);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, TRUE, 'muỗng cà phê', now(), 71, 79);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, TRUE, 'muỗng cà phê', now(), 73, 79);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Vắt lên gà sau khi áp chảo (tùy chọn).', 0.25, FALSE, 'trái', now(), 121, 79);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Ức Gà cắt miếng dày khoảng 2cm (hoặc để nguyên miếng). Ướp đều hai mặt với Muối và Tiêu Đen. Tỏi băm nhỏ.',
           FALSE,
           1,
           now(),
           79
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Bông Cải Xanh chần sơ qua nước sôi (hoặc hấp) khoảng 3 phút cho chín tới và giữ màu xanh. Vớt ra, để ráo.',
           FALSE,
           2,
           now(),
           79
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ô Liu. Cho gà vào áp chảo mỗi mặt khoảng 4-5 phút cho đến khi thịt gà chín vàng đều và chín hoàn toàn bên trong. Thêm Tỏi băm vào áp chảo cùng gà trong 1 phút cuối.',
           FALSE,
           3,
           now(),
           79
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Sau khi lấy gà ra khỏi chảo, cho Bông Cải Xanh đã chần (Bước 2) vào chảo mỡ gà còn lại. Đảo nhanh tay 1 phút, nêm thêm chút Muối và Tiêu (tùy chọn).',
           FALSE,
           4,
           now(),
           79
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp gà và rau củ ra đĩa. Vắt một chút Nước Cốt Chanh Vàng lên trên miếng gà để tăng hương vị (tùy chọn). Món này dùng nóng, có thể ăn kèm với cơm lứt hoặc quinoa nếu không ăn Low Carb quá khắt khe.',
           FALSE,
           5,
           now(),
           79
       );

-- Recipe ID: 80
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-20 18:00:00',
           'Cá Hồi Nướng Giấy Bạc là công thức giảm cân hoàn hảo (Keto/Low Carb). Cá hồi giàu Omega-3 được nướng cùng rau củ, giữ trọn độ ẩm và dinh dưỡng.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Cá Hồi Nướng Giấy Bạc Kèm Rau Củ (Keto Friendly)',
           '2025-11-20 18:00:00',
           0,
           3,
           17
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/ixhiudrsvg9cmiioymdg', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764045621/cooki-note/recipes/ixhiudrsvg9cmiioymdg.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 99, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Phi lê cá hồi.', 150, TRUE, 'gram', now(), 11, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt miếng vừa.', 70, TRUE, 'gram', now(), 23, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái lát mỏng.', 50, TRUE, 'gram', now(), 20, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để ướp.', 1, TRUE, 'muỗng canh', now(), 67, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt lát và lấy nước cốt.', 0.25, TRUE, 'trái', now(), 121, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, TRUE, 'tép', now(), 38, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, TRUE, 'muỗng cà phê', now(), 71, 80);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 0.25, TRUE, 'muỗng cà phê', now(), 73, 80);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng lò nướng ở nhiệt độ **200°C**. Cắt một miếng giấy bạc lớn. Cá Hồi thấm khô, ướp với Muối và Tiêu Đen.',
           FALSE,
           1,
           now(),
           80
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trong một bát, trộn Dầu Ô Liu, Tỏi băm, Nước Cốt Chanh Vàng, Muối và Tiêu. Cho Bông Cải Xanh và Cà Rốt thái lát vào, trộn đều với hỗn hợp sốt.',
           FALSE,
           2,
           now(),
           80
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp rau củ đã trộn (Bước 2) xuống giữa miếng giấy bạc. Đặt miếng Cá Hồi lên trên rau củ. Đặt thêm một lát Chanh Vàng lên miếng cá.',
           FALSE,
           3,
           now(),
           80
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Gói giấy bạc lại thật kín (tạo thành một túi hấp). Cho vào lò nướng và nướng khoảng **15-20 phút** cho đến khi cá chín hoàn toàn (thời gian tùy thuộc vào độ dày của miếng cá).',
           FALSE,
           4,
           now(),
           80
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Lấy cá ra khỏi lò, cẩn thận mở giấy bạc. Món này dùng nóng, có thể rắc thêm lá mùi tây (nếu có) lên trên. Thưởng thức ngay với phần rau củ chín mềm.',
           FALSE,
           5,
           now(),
           80
       );

-- Recipe ID: 81
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           30,
           '2025-11-25 10:00:00',
           'Mapo Tofu là món ăn Tứ Xuyên kinh điển, cay tê đặc trưng. Đậu phụ non mềm mại hòa quyện với thịt heo băm (hoặc bò) và sốt đậu cay Doubanjiang.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Đậu Phụ Ma Bà (Mapo Tofu) Chuẩn Vị Tứ Xuyên',
           '2025-11-25 10:00:00',
           0,
           2,
           14
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/zwea9tzxhbrsopfwbt7q', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764046482/cooki-note/recipes/zwea9tzxhbrsopfwbt7q.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 100, 81);

INSERT INTO ingredients (created_at, name, updated_at)
VALUES (now(), 'Tương ớt đậu Doubanjiang (Tứ Xuyên)', now());

INSERT INTO ingredients (created_at, name, updated_at)
VALUES (now(), 'Rượu Thiệu Hưng (Shaoxing Wine)', now());

INSERT INTO ingredients (created_at, name, updated_at)
VALUES (now(), 'Hạt Tiêu Tứ Xuyên (Sichuan Peppercorns)', now());

INSERT INTO ingredients (created_at, name, updated_at)
VALUES (now(), 'Dầu Ớt Tứ Xuyên (Sichuan Chili Oil)', now());

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đậu phụ non (soft/silken tofu), cắt khối vuông 2cm.', 300, TRUE, 'gram', now(), 31, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thịt heo băm (hoặc thịt bò).', 150, TRUE, 'gram', now(), 1, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tương ớt đậu lên men Tứ Xuyên.', 2, TRUE, 'muỗng canh', now(), 200, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rượu nấu ăn Trung Quốc (Shaoxing wine).', 1, TRUE, 'muỗng canh', now(), 201, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Rang sơ, xay thô (Sichuan peppercorns).', 0.5, TRUE, 'muỗng cà phê', now(), 202, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Hoặc dầu ăn thường.', 1, TRUE, 'muỗng canh', now(), 203, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 1, TRUE, 'muỗng canh', now(), 76, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), '', 1, TRUE, 'muỗng cà phê', now(), 58, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước hầm gà hoặc nước lọc (dùng ID Nước Lọc).', 200, TRUE, 'ml', now(), 153, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Pha loãng với 2 muỗng canh nước.', 1, TRUE, 'muỗng canh', now(), 204, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt nhỏ (topping).', 1, TRUE, 'cây', now(), 40, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 1, TRUE, 'lát', now(), 39, 81);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Băm nhỏ.', 2, TRUE, 'tép', now(), 38, 81);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Đậu Phụ non cắt khối vuông 2cm. Thịt Heo Băm ướp sơ với Rượu Thiệu Hưng. Pha Bột Năng với 2 muỗng canh nước lọc. Băm Gừng và Tỏi. Chuẩn bị Hạt Tiêu Tứ Xuyên xay thô.',
           FALSE,
           1,
           now(),
           81
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ớt Tứ Xuyên (hoặc dầu ăn). Cho Thịt Heo Băm vào xào tơi và chín. Vớt thịt ra, giữ lại một chút dầu trong chảo.',
           FALSE,
           2,
           now(),
           81
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng chảo vừa xào thịt, cho Gừng và Tỏi băm vào phi thơm. Cho Doubanjiang vào xào khoảng 1 phút cho dậy mùi. Sau đó cho Nước Tương, Đường Cát và Nước Hầm Gà vào, đun sôi.',
           FALSE,
           3,
           now(),
           81
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Nhẹ nhàng cho Đậu Phụ đã cắt vào nồi (Bước 3). Cho Thịt Heo Băm đã xào vào, đun nhỏ lửa 3-5 phút cho đậu phụ ngấm gia vị. **Không khuấy mạnh** để tránh làm vỡ đậu.',
           FALSE,
           4,
           now(),
           81
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rưới từ từ Bột Năng đã pha loãng vào nồi, vừa rưới vừa lắc nhẹ chảo (hoặc khuấy nhẹ) cho đến khi sốt đạt độ sánh mong muốn. Tắt bếp.',
           FALSE,
           5,
           now(),
           81
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Múc Đậu Phụ Ma Bà ra tô. Rắc Hạt Tiêu Tứ Xuyên xay thô và Hành Lá cắt nhỏ lên trên. Dùng nóng với cơm trắng.',
           FALSE,
           6,
           now(),
           81
       );

-- Recipe ID: 82
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           25,
           '2025-11-26 12:30:00',
           'Cơm Chiên Dương Châu là món cơm rang cổ điển của Quảng Đông. Hạt cơm tơi, khô, được chiên cùng tôm, xá xíu, trứng và rau củ, thơm mùi dầu mè.',
           'MEDIUM',
           FALSE,
           TRUE,
           2,
           'Cơm Chiên Dương Châu (Yangzhou Fried Rice)',
           '2025-11-26 12:30:00',
           0,
           2,
           14
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/yc02cimvktpdjucrg2fw', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764046892/cooki-note/recipes/yc02cimvktpdjucrg2fw.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 101, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cơm nguội, tơi (cơm nấu từ hôm trước).', 400, TRUE, 'gram', now(), 47, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Bóc vỏ, thái hạt lựu.', 80, TRUE, 'gram', now(), 7, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Xá xíu cắt hạt lựu (hoặc thịt luộc).', 80, TRUE, 'gram', now(), 1, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Đánh tan.', 2, TRUE, 'quả', now(), 14, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái hạt lựu nhỏ.', 30, TRUE, 'gram', now(), 20, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Chần sơ (dùng ID Đậu Que).', 30, TRUE, 'gram', now(), 32, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nêm nếm.', 1.5, TRUE, 'muỗng canh', now(), 76, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tạo mùi thơm.', 0.5, TRUE, 'muỗng cà phê', now(), 99, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Thái nhỏ.', 1, FALSE, 'ít', now(), 37, 82);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng để chiên cơm.', 2, TRUE, 'muỗng canh', now(), 66, 82);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Tôm, Thịt Heo (Xá Xíu) và Cà Rốt thái hạt lựu. Đậu Hà Lan chần sơ. Trứng Gà đánh tan, nêm chút muối. Hành Lá thái nhỏ.',
           FALSE,
           1,
           now(),
           82
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Làm nóng chảo với Dầu Ăn. Cho Tôm vào xào nhanh đến khi tôm chuyển màu hồng. Thêm Thịt Heo (Xá Xíu) vào đảo chung. Nêm chút Nước Tương, rồi múc ra đĩa, để riêng.',
           FALSE,
           2,
           now(),
           82
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng lại chảo (thêm dầu nếu cần). Đổ Trứng Gà đã đánh tan vào, đảo nhanh tay để trứng chín tơi (hoặc tráng mỏng). Múc trứng ra, để riêng.',
           FALSE,
           3,
           now(),
           82
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Cơm Nguội vào chảo nóng, đảo trên lửa lớn cho cơm tơi và nóng đều. Nêm 1 muỗng canh Nước Tương, Tiêu. Đảo nhanh cho hạt cơm thấm vị.',
           FALSE,
           4,
           now(),
           82
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cho Tôm, Thịt, Cà Rốt và Đậu Hà Lan đã sơ chế (Bước 1) vào chảo cơm. Đảo đều. Thêm Trứng Gà đã chiên (Bước 3) vào, đảo nhanh tay.',
           FALSE,
           5,
           now(),
           82
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Rưới Dầu Mè và phần Nước Tương còn lại (nếu cần) lên cơm. Đảo nhanh lần cuối. Rắc Hành Lá thái nhỏ và dùng nóng.',
           FALSE,
           6,
           now(),
           82
       );

-- Recipe ID: 83
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           15,
           '2025-11-29 12:45:00',
           'Onigirazu (Cơm Cuộn Sandwich) là phiên bản cơm nắm hiện đại, nhanh gọn. Cơm được cuộn trong rong biển với nhân Cá Ngừ, Trứng và rau củ, tiện lợi cho bữa trưa mang đi.',
           'EASY',
           FALSE,
           TRUE,
           1,
           'Cơm Cuộn Cá Ngừ',
           '2025-11-29 12:45:00',
           0,
           1,
           10
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/utqzmdn18frqh2ftjvkj', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764047200/cooki-note/recipes/utqzmdn18frqh2ftjvkj.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 102, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cơm trắng nóng hoặc ấm.', 150, TRUE, 'gram', now(), 47, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tấm rong biển khô.', 1, TRUE, 'tấm', now(), 44, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá ngừ vớt ráo nước/dầu.', 50, TRUE, 'gram', now(), 188, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trứng chiên hoặc trứng cuộn.', 1, TRUE, 'quả', now(), 14, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn cá ngừ.', 1, TRUE, 'muỗng canh', now(), 96, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Lá rau xanh nền.', 1, TRUE, 'lá', now(), 25, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Dùng kèm (tùy chọn).', 1, FALSE, 'muỗng cà phê', now(), 76, 83);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn cơm (tùy chọn).', 0.5, FALSE, 'muỗng cà phê', now(), 99, 83);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trộn Cá Ngừ đã vớt ráo với Sốt Mayonnaise, một chút tiêu. Chiên Trứng Gà (hoặc làm trứng cuộn) và cắt miếng vuông. Cơm Nóng trộn với chút Muối và Dầu Mè (tùy chọn).',
           FALSE,
           1,
           now(),
           83
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trải Tấm Rong Biển (Nori Sheet) ra, đặt theo hình kim cương (chéo). Đặt một lớp mỏng Cơm (khoảng 1/4 lượng cơm) vào giữa tấm rong biển. Tạo hình vuông nhỏ.',
           FALSE,
           2,
           now(),
           83
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Xếp các lớp nhân lên trên lớp cơm theo thứ tự: 1 lá Xà Lách, nhân Cá Ngừ đã trộn, Trứng Gà chiên. Đặt lớp cơm cuối cùng (1/4 lượng cơm) lên trên nhân.',
           FALSE,
           3,
           now(),
           83
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Gấp 4 góc của tấm rong biển lại (tạo hình như gói quà), gói chặt nhân bên trong. Dùng một chút nước để dán mép rong biển lại.',
           FALSE,
           4,
           now(),
           83
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Để Onigirazu nghỉ khoảng 2-3 phút để rong biển mềm. Dùng dao sắc cắt đôi Onigirazu. Dùng kèm Nước Tương hoặc wasabi (tùy chọn).',
           FALSE,
           5,
           now(),
           83
       );

-- Recipe ID: 84
INSERT INTO recipes (cook_time_minutes, created_at, description, difficulty, is_deleted, is_public, servings, title, updated_at, views_count, category_id, user_id)
VALUES (
           60,
           '2025-11-20 18:00:00',
           'Sushi Maki Cá Hồi Bơ là loại sushi cuộn phổ biến, kết hợp vị béo của cá hồi sống và bơ. Công thức này tập trung vào kỹ thuật nấu cơm sushi và cuốn đều tay.',
           'HARD',
           FALSE,
           TRUE,
           2,
           'Sushi Maki Cuộn Cá Hồi & Bơ (Salmon Avocado Maki)',
           '2025-11-20 18:00:00',
           0,
           1,
           11
       );

INSERT INTO media (created_at, public_id, type, updated_at, url) VALUES (now(), 'cooki-note/recipes/gjmazp2t3uvbatbajnll', 'IMAGE', now(), 'https://res.cloudinary.com/dwvgjmjuo/image/upload/v1764047514/cooki-note/recipes/gjmazp2t3uvbatbajnll.jpg');

INSERT INTO recipe_media (created_at, type, updated_at, media_id, recipe_id) VALUES (now(), 'AVATAR', now(), 103, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Gạo Nhật hoặc gạo Tẻ dẻo (đại diện cho gạo sushi).', 200, TRUE, 'gram', now(), 47, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Giấm sushi (pha đường, muối).', 30, TRUE, 'ml', now(), 78, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn giấm.', 15, TRUE, 'gram', now(), 58, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Trộn giấm.', 5, TRUE, 'gram', now(), 71, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Tấm rong biển khô (nori).', 4, TRUE, 'tấm', now(), 44, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cá hồi tươi sống (Sashimi grade), cắt thanh dài.', 100, TRUE, 'gram', now(), 11, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Cắt thanh dài.', 1, TRUE, 'trái', now(), 124, 84);

INSERT INTO recipe_ingredients (created_at, note, quantity, required, unit, updated_at, ingredient_id, recipe_id)
VALUES (now(), 'Nước nấu cơm.', 300, TRUE, 'ml', now(), 153, 84);

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Vo Gạo, nấu với Nước Lọc như nấu cơm bình thường. Khi cơm chín, để cơm nghỉ 15 phút. Trong khi đó, hòa Giấm Gạo với Đường Cát và Muối (nước giấm sushi).',
           FALSE,
           1,
           now(),
           84
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Khi cơm còn nóng, cho cơm ra tô/thùng gỗ lớn. Rưới từ từ nước giấm sushi (Bước 1) lên cơm, vừa rưới vừa dùng muỗng gỗ xới nhẹ nhàng theo kiểu cắt ngang để cơm ngấm đều và nguội nhanh. Cơm phải nguội hẳn trước khi cuộn.',
           FALSE,
           2,
           now(),
           84
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cá Hồi tươi sống và Bơ Sáp cắt thành các thanh dài 0.5 cm. Đảm bảo Cá Hồi được giữ lạnh trong suốt quá trình chuẩn bị.',
           FALSE,
           3,
           now(),
           84
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Trải Rong Biển (Nori Sheet) lên mành tre. Lấy một lượng cơm sushi vừa đủ, dàn đều mỏng lên 2/3 tấm rong biển (dùng tay ướt để cơm không dính). Xếp Cá Hồi và Bơ Sáp thành một hàng ngang gần mép dưới của cơm.',
           FALSE,
           4,
           now(),
           84
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Cuộn chặt mành tre từ từ về phía trước, dùng nước (hoặc một hạt cơm) để dán mép rong biển còn trống. Lặp lại với các cuộn còn lại.',
           FALSE,
           5,
           now(),
           84
       );

INSERT INTO steps (created_at, description, is_deleted, step_order, updated_at, recipe_id)
VALUES (
           now(),
           'Dùng dao sắc và ướt để cắt cuộn sushi thành 8 khoanh vừa ăn. Trình bày ra đĩa. Dùng kèm Nước Tương (Shoyu), Gừng Hồng (Gari) và Wasabi.',
           FALSE,
           6,
           now(),
           84
       );
