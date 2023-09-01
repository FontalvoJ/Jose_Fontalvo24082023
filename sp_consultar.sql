use dbs_simuladorcredito
go
-- =============================================
-- Author:		<Author,,Jose>
-- Create date: <Create Date,31-08-2023,>
-- Description:	<Description,,Consultar credito>
-- =============================================
CREATE PROCEDURE [dbo].[sp_consultar_solicitud]
    @id int
AS BEGIN
    SELECT Nombres, Apellidos, Contacto, Correo, Direccion, Salario, Empresa
    FROM tbl_solicitudes
    WHERE Id = @id;
END
