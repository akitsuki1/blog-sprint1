
USE Blog_BTH4_Demo;
GO

SELECT N'Người dùng' AS TenBang,
       COUNT(*) AS SoBanGhi
FROM dbo.app_user

UNION ALL

SELECT N'Bài viết', COUNT(*)
FROM dbo.[post]

UNION ALL

SELECT N'Bình luận', COUNT(*)
FROM dbo.[comment];


SELECT TOP (20)
    p.id,
    u.username AS TacGia,
    p.title,
    p.view_count,
    p.created_at,
    p.published_at
FROM dbo.[post] p
JOIN dbo.app_user u
    ON p.author_id = u.id
ORDER BY p.id;


SELECT COUNT(*) AS BaiVietKhongCoTacGia
FROM dbo.[post] p
LEFT JOIN dbo.app_user u
    ON p.author_id = u.id
WHERE u.id IS NULL;

SELECT COUNT(*) AS BinhLuanKhongCoBaiViet
FROM dbo.[comment] c
LEFT JOIN dbo.[post] p
    ON c.post_id = p.id
WHERE p.id IS NULL;

