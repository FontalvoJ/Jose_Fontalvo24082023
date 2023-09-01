using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace App
{
    public class cls_solicitudes
    {
        private string str_mensaje;
        private string str_estado; // Campo de Estado
        private SqlCommand con;
        private SqlDataReader Lectura;
        private string str_nombres;
        private string str_apellidos;
        private string str_contacto;
        private string str_correo;
        private string str_direccion;
        private float flt_salario;
        private string str_empresa;
        private int int_plazo;
        private float flt_monto;

        public string Estado // Propiedad para acceder al campo de estado
        {
            get { return str_estado; }
        }

        public void fnt_agregar(string id, string nombres, string apellidos, string contacto, string correo, string direccion, float salario, string empresa, int plazo, float monto)
        {
            if (id == "" || nombres == "" || apellidos == "" || contacto == "" || correo == "" || direccion == "" || salario == 0 || empresa == "" || plazo == 0 || monto == 0)
            {
                str_mensaje = "Existen campos sin diligenciar";
            }
            else
            {
                try
                {
                    cls_conexion objConecta = new cls_conexion();
                    con = new SqlCommand("sp_solicitud", objConecta.connection);
                    con.CommandType = CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@id", id);
                    con.Parameters.AddWithValue("@nombres", nombres);
                    con.Parameters.AddWithValue("@apellidos", apellidos);
                    con.Parameters.AddWithValue("@contacto", contacto);
                    con.Parameters.AddWithValue("@correo", correo);
                    con.Parameters.AddWithValue("@direccion", direccion);
                    con.Parameters.AddWithValue("@salario", salario);
                    con.Parameters.AddWithValue("@empresa", empresa);
                    con.Parameters.AddWithValue("@plazo", plazo);
                    con.Parameters.AddWithValue("@monto", monto);
                    objConecta.connection.Open();
                    con.ExecuteNonQuery();
                    objConecta.connection.Close();
                    str_mensaje = "Registro exitoso";

                    // Actualizamos el campo de estado
                    str_estado = "Aprobado"; // O "Rechazado" según tu lógica
                }
                catch (Exception ex)
                {
                    // Mostramos información detallada sobre la excepción
                    str_mensaje = "Error: " + ex.Message;

                    // Actualizamos el campo de estado
                    str_estado = "Error"; // O el valor que consideres adecuado
                }
            }
        }

        public string getMensaje() { return this.str_mensaje; }

        public void fnt_consultar(int id)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("sp_consultar_solicitud", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@id", id);
                objConecta.connection.Open();
                SqlDataReader reader = con.ExecuteReader();

                if (reader.Read())
                {
                    str_nombres = reader["Nombres"].ToString();
                    str_apellidos = reader["Apellidos"].ToString();
                    str_contacto = reader["Contacto"].ToString();
                    str_correo = reader["Correo"].ToString();
                    str_direccion = reader["Direccion"].ToString();
                    flt_salario = Convert.ToSingle(reader["Salario"]);
                    str_empresa = reader["Empresa"].ToString();
                    int_plazo = Convert.ToInt32(reader["Plazo"]);
                    flt_monto = Convert.ToSingle(reader["Monto"]);
                    str_mensaje = "Consulta exitosa";
                }
                else
                {
                    str_mensaje = "No se encontró la solicitud con el ID especificado.";
                }

                reader.Close();
                objConecta.connection.Close();
            }
            catch (Exception ex)
            {
                str_mensaje = "Error: " + ex.Message;
            }
        }

        public string getNombre() { return this.str_nombres; }
        public string getContacto() { return this.str_contacto; }
        public string getCorreo() { return this.str_correo; }
        public string getDireccion() { return this.str_direccion; }
        public string getApellido() { return this.str_apellidos; }
        public string getEmpresa() { return this.str_empresa; }
        public float getSalario() { return this.flt_salario; }
        public float getMonto() { return this.flt_monto; }
        public int getPlazo() { return this.int_plazo; }

    }
}