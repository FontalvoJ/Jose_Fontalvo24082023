use dbs_simuladorcredito
go
-- =============================================
-- Author:		<Author,,Jose>
-- Create date: <Create Date,24-08-2023,>
-- Description:	<Description,,Registrar credito>
-- =============================================
CREATE PROCEDURE SP_Registrar
	@id  varchar(50),
	@nombres varchar(100),
	@apellidos varchar(100),
	@contacto varchar(10),
	@correo varchar(80),
	@direccion varchar(60),
	@salario float,
	@empresa varchar(100),
	@plazo int,
	@monto float

AS BEGIN

	DECLARE @cap_descuento float
	DECLARE @cuota float
	DECLARE @intereses float
	DECLARE @totalcredito float
    DECLARE @estado varchar(50)
    DECLARE @observaciones varchar(5000)


	SELECT @cap_descuento = @salario * 0.70

	IF @plazo = 0 -- 6 MESES (0.018)
		BEGIN
			SELECT @intereses = @monto * 0.18
			SELECT @totalcredito = @monto + @intereses
			SELECT @cuota = @totalcredito / 6
		END

	IF @plazo = 1 -- 12 MESES (0.016)
		BEGIN
			SELECT @intereses = @monto * 0.16
			SELECT @totalcredito = @monto + @intereses
			SELECT @cuota = @totalcredito / 12
		END
	
	IF @plazo = 2 -- 24 MESES (0.014)
		BEGIN
			SELECT @intereses = @monto * 0.16
			SELECT @totalcredito = @monto + @intereses
			SELECT @cuota = @totalcredito / 24
		END
	
	IF @plazo = 3 -- 12 MESES (0.010)
		BEGIN
			SELECT @intereses = @monto * 0.16
			SELECT @totalcredito = @monto + @intereses
			SELECT @cuota = @totalcredito / 36
		END


    --VALIDAR ESTADO CRÉDITO
    IF @cuota <= @cap_descuento
        BEGIN
            SELECT @estado = 'Aprobado'
            SELECT @observaciones = 'Felicitaciones tu crédito ha sido aprobado con éxito'
        END
    

   IF @cuota <= @cap_descuento
        BEGIN
            SELECT @estado = 'Rechazado'
            SELECT @observaciones = 'Tu crédito no ha sido aprobado, intenta nuevamente'
        END

	insert into tbl_solicitudes
	(Id,Nombres,Apellidos,Contacto,Direccion,Estado, Fecha_Registro,Salario,Observaciones,Empresa)
	values
	(@id, @nombres, @apellidos, @contacto, @direccion, @estado,GETDATE(),@salario, @observaciones,@empresa)
END