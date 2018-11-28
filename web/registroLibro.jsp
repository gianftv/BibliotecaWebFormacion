<%-- 
    Document   : registroLibro
    Created on : 28-nov-2018, 13:20:16
    Author     : Arranque 4
--%>

<%@page import="dao.EditorialDAO"%>
<%@page import="model.Editorial"%>
<%@page import="model.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%@include file="menu.jsp"%>
        <div class="form-control">
            <div class="table-header">
                Desde aqui puede añadir o eliminar un libro
            </div>
            <div>
                <form action="LibroController" method="post" class="form-horizontal"
                      <br>
                    <br>
                    <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        ISBN:
                        </label>
                        <div class="col-sm-3">

                            <input type="text" name="isbn" value="" placeholder="isbn libro" />
                        </div>

                    </div>
                    <br>
                     <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        Titulo del libro:
                        </label>
                        <div class="col-sm-3">

                            <input type="text" name="titulo" value="" placeholder="titulo del libro" />
                        </div>

                    </div>
                    <br>
                     <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        Autor:
                        </label>
                        <div class="col-sm-3">

                            <input type="text" name="autor" value="" placeholder="autor del libro" />
                        </div>

                    </div>
                    <br>
                     <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        Fecha de publicacion:
                        </label>
                        <div class="col-sm-3">

                            <input type="text" name="publicacion" value="" placeholder="2018-9-11" />
                        </div>

                    </div>
                    <br>
                     <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        email:
                        </label>
                        <div class="col-sm-3">

                            <input type="text" name="email" value="" placeholder="introduce el email" />
                        </div>

                    </div>
                    <br>
                     <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        SitioWeb:
                        </label>
                        <div class="col-sm-3">

                            <input type="text" name="sitioWeb" value="" placeholder="Nombre del sitio web" />
                        </div>

                    </div>
                    <br>
                 
                    
                    <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        Categorias :
                        </label>
                        <div class="col-sm-3">

                            <select name="">
                                <option value="0"> Seleccione categoria</option>
                                <% for(Categoria c:CategoriaDAO.listar()){%>
                                <option value=""><%= c.getNombre()%></option>
                                <% } %>
                            </select>
                        </div>

                    </div>
                            
                            <br>
                             <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        Editoriales :
                        </label>
                        <div class="col-sm-3">

                            <select name="">
                                <option value="0"> Seleccione categoria</option>
                                <% for(Editorial e:EditorialDAO.listar()){%>
                                <option value=""><%= e.getNombre()%></option>
                                <% } %>
                            </select>
                        </div>

                    </div>
                    
                            <div class="form-group">

                        <label class="col-sm-3 control-label no-pair-right"     </label>

                        Descripcion:
                        </label>
                        <div class="col-sm-3">

                            <textarea name="descripcion" rows="4" cols="20">
                            </textarea>
                        </div>

                    </div>

                    <br>
                    <div class="col-sm-3">

                        <button name="Registrar" class="btn btn-success" type="submit" value="Registrar"
                                <i class="fa fa-save"></i>
                               Registrar
                        </button>
                        
                         <button name="Actualizar" class="btn btn-warning" type="submit" value="Actualizar"
                                <i class="fa fa-edit"></i>
                               Actualizar
                        </button>
                        
                        
                        
                        <button name="Eliminar" class="btn btn-danger" type="submit" value="Eliminar"
                                <i class="fa fa-remove"></i>
                               Eliminar
                        </button>

                    </div>
                </form>
                <br>
                <%= (request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):"")%>
            </div>
        </div>
    </body>
</html>
