using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            cls_solicitudes objSolicitud = new cls_solicitudes();

            if (float.TryParse(txt_salario.Text, out float salario) &&
                float.TryParse(txt_monto.Text, out float monto) &&
                int.TryParse(txt_plazo.Text, out int plazo))
            {
                objSolicitud.fnt_agregar(txt_id.Text,
                    txt_nombre.Text,
                    txt_apellido.Text,
                    txt_contacto.Text,
                    txt_correo.Text,
                    txt_direccion.Text,
                    salario,
                    txt_empresa.Text,
                    plazo,
                    monto); // Cambio en el orden de los parámetros

                lbl_mensaje.Text = objSolicitud.getMensaje();

                // Actualizamos el campo de estado en la página
                lbl_estado.Text = objSolicitud.Estado;
            }
            else
            {
                lbl_mensaje.Text = "Alguno de los valores ingresados no es válido.";
            }
        }

        protected void btn_nuevo_Click(object sender, EventArgs e)
        {
            txt_id.Text = "";
            txt_nombre.Text = "";
            txt_apellido.Text = "";
            txt_contacto.Text = "";
            txt_correo.Text = "";
            txt_direccion.Text = "";
            txt_salario.Text = "";
            txt_empresa.Text = "";
            txt_monto.Text = "";
            txt_plazo.Text = "";
            lbl_mensaje.Text = "";
            txt_id.Focus();

        }

        protected void btn_consultar_Click(object sender, EventArgs e)
        {
            // Crear una instancia de la clase de solicitudes
            cls_solicitudes objconsultar = new cls_solicitudes();

            if (int.TryParse(txt_id.Text, out int id))
            {
                // Llamar al método de consulta pasando el ID como parámetro
                objconsultar.fnt_consultar(id);

                // Obtener y mostrar los resultados en los campos de texto
                txt_contacto.Text = objconsultar.getContacto();
                txt_correo.Text = objconsultar.getCorreo();
                txt_direccion.Text = objconsultar.getDireccion();
                txt_nombre.Text = objconsultar.getNombre();
                txt_apellido.Text = objconsultar.getApellido();
                txt_empresa.Text = objconsultar.getEmpresa();
                txt_salario.Text = objconsultar.getSalario().ToString();
                txt_monto.Text = objconsultar.getMonto().ToString();
                txt_plazo.Text = objconsultar.getPlazo().ToString();
            }
            else
            {
                // Manejar el caso en el que el ID no sea un número válido
                lbl_mensaje.Text = "El ID debe ser un número válido.";
            }



        }
    }
}