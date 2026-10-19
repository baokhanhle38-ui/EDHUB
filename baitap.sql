BEGIN;

-- Xoá đăng ký cũ của Lê Chi (nếu có)
DELETE FROM registrations
WHERE member_id = (SELECT id FROM members WHERE full_name = 'Lê Chi');

-- Thêm đăng ký mới vào khoá Cơ sở dữ liệu
INSERT INTO registrations (member_id, course_id)
VALUES (
    (SELECT id FROM members WHERE full_name = 'Lê Chi'),
    (SELECT id FROM courses WHERE title = 'Cơ sở dữ liệu')
);

COMMIT;