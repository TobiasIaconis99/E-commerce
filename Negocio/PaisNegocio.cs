using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Negocio;
using Dominio;

namespace Negocio
{
    public class PaisNegocio
    {
        public List<Pais> listar(bool b = false)
        {
            List<Pais> lista = new List<Pais>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setConsultaSP("SP_ListarPais");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Pais aux = new Pais();

                    if (!(datos.Lector["IDPais"] is DBNull))
                        aux.ID = (byte)datos.Lector["IDPais"];
                    if (!(datos.Lector["Nombre"] is DBNull))
                        aux.NombrePais = (string)datos.Lector["Nombre"];
                    if (!(datos.Lector["Estado"] is DBNull))
                        aux.Estado = (bool)datos.Lector["Estado"];

                    if (!b)
                    {
                        if (aux.Estado == true)
                        {
                            lista.Add(aux);
                        }
                    }
                    else
                    {
                        lista.Add(aux);
                    }
                }

                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                datos.cerrarConexion();
            }


        }

        public void AgregarPais(Pais pais)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setConsultaSP("SP_AgregarPais");
                datos.setParametros("@nombre", pais.NombrePais);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                datos.cerrarConexion();
            }

        }

        public void ModificarPais(Pais pais)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setConsultaSP("SP_ModificarPais");
                datos.setParametros("@idPais", pais.ID);
                datos.setParametros("@nombrePais", pais.NombrePais);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                datos.cerrarConexion();
            }

        }

        public void EliminarPais(byte ID)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setConsultaSP("SP_EliminarPais");
                datos.setParametros("@idPais", ID);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                datos.cerrarConexion();
            }
        }

        public void RestaurarPais(Pais pais)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setConsultaSP("SP_RestaurarPais");
                datos.setParametros("@idPais", pais.ID);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                datos.cerrarConexion();
            }

        }
    }
}
