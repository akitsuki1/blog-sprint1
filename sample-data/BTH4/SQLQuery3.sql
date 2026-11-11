
USE Blog_BTH4_Demo;
GO

IF OBJECT_ID(N'dbo.post_mockaroo', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.post_mockaroo (
        id INT NOT NULL PRIMARY KEY,
        author_id INT NOT NULL,
        title NVARCHAR(MAX),
        description NVARCHAR(MAX),
        view_count INT,
        created_at DATETIME2(0),
        published_at DATETIME2(0)
    );
END;
GO


USE Blog_BTH4_Demo;
GO

SELECT COUNT(*) AS TongBanGhi
FROM dbo.post_mockaroo;

SELECT TOP (10) *
FROM dbo.post_mockaroo
ORDER BY id;
