
USE Blog_BTH4_Demo;
GO

SELECT
    COUNT(*) AS TongBaiViet,
    MIN(id) AS IDNhoNhat,
    MAX(id) AS IDLonNhat
FROM dbo.[post];

SELECT
    COUNT(*) AS TongBinhLuan
FROM dbo.[comment];
