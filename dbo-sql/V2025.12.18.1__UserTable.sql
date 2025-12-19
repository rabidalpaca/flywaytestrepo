IF
    NOT EXISTS (
        SELECT * FROM sys.objects
        WHERE object_id = OBJECT_ID(N'dbo.test') AND type in (N'U')
    )
    BEGIN
        CREATE TABLE dbo.test
        (
            id INT
        );
    END
