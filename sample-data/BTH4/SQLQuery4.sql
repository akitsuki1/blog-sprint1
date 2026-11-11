
USE Blog_BTH4_Demo;
GO

SELECT TOP (20)
    p.id AS MaBaiViet,
    u.username AS TenTacGia,
    p.title AS TieuDeBaiViet,
    p.description AS NoiDung,
    p.view_count AS LuotXem,
    p.created_at AS NgayTao,
    p.published_at AS NgayXuatBan
FROM dbo.[post] AS p
INNER JOIN dbo.app_user AS u
    ON p.author_id = u.id
ORDER BY p.id ASC;
