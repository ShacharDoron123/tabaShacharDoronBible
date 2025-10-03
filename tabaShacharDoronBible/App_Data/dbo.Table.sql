CREATE TABLE [dbo].[Table] (
    [Id]       INT           NOT NULL,
    [uName]    NVARCHAR (15) NOT NULL,
    [fName]    NVARCHAR (10) NOT NULL,
    [lName]    NVARCHAR (10) NOT NULL,
    [password] NVARCHAR (30) NOT NULL,
    [gender]   NVARCHAR (6)  NOT NULL,
    [phone]    INT           NOT NULL,
	[YB]       int           NOT NULL,
    [hob1]     NVARCHAR(50)     NULL,
    [hob2]     NVARCHAR(50)     NULL,
    [hob3]     NVARCHAR(50)     NULL,
    [hob4]     NVARCHAR(50)     NULL,
    [hob5]     NVARCHAR(50)     NULL,
    PRIMARY KEY CLUSTERED ([uName] ASC)
);

