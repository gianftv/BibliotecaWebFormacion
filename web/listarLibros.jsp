<%-- 
    Document   : listarLibros
    Created on : 29-nov-2018, 8:56:32
    Author     : Arranque 4
--%>

<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.LibroDAO"%>
<%@page import="dao.EditorialDAO"%>
<%@page import="model.Libro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <title>Lista de tus libritos</title>
     
    </head>
    <body>
        <%@include file="menu.jsp"%>
        <div class="col-xs-12">
								

								
									<div class="col-xs-12">
<!--										<div class="table-header">
											Listado de libros registrados
										</div>-->

										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
                                                                                    <table id="dynamic-table" class="table table-striped table-bordered table-hover">
											<thead>
                                                                                            <tr>
												<th>ISBN</th>
												<th>Titulo del Libro</th>
												<th>Autor</th>
												<th><i class="ace-icon fa fa-calendar-o"></i> Fecha de Publicación</th>
                                                                                                <th>Editorial</th>
												<th>Categoría</th>
												<th>Editar</th>
                                                                                                <th>ERRADICAR</th>
                                                                                            </tr>
											</thead>

											<tbody>
                                                                                            
                                                                                            <%for(Libro l:LibroDAO.listar()){%>
                                                                                            <tr>
                                                                                                    
                                                                                                <td><%= l.getIsbn() %> </td>
												<td><%= l.getTitulo()%></td>
												<td><%= l.getNombre_autor()%></td>
                                                                                                <td><%= l.getPublicacion()%></td>
                                                                                                <td><span class="label label-sm label-success"><%= EditorialDAO.getEditorial(l.getNit_editorial())%></span></td>
                                                                                                <td><span class="label label-sm label-success"><%= CategoriaDAO.getCategoria(l.getCodigo_categoria())%></span></td>
                                                                                                  
                                                                                                <td>
                                                                                                    <div class="hidden-sm hidden-xs action-buttons">
<!--													<a class="blue" href="#">
                                                                                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>-->

													<a class="green" href="registroLibro.jsp">
                                                                                                            <i class="ace-icon fa fa-pencil bigger-130">editar</i>
													</a>

													
                                                                                                    </div>
                                                                                                </td>  
                                                                                                <td>
                                                                                                    <div class="hidden-sm hidden-xs action-buttons">
<!--													<a class="blue" href="#">
                                                                                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>-->
               <div>
                <form action="LibroController" method="post" class="form-horizontal">
     
                
                                                                                                       <button name="Eliminar" class="btn btn-danger" type="submit" value="Eliminar"
                                                                                                                    <i class="fa fa-remove"></i>
                                                                                                                                          Eliminar
                                                                                                                </button>
                    </form>
		 </div>
                    

													
                                                                                                    </div>
                                                                                                </td>  
                                                                                            </tr>
                                                                                            <%}%>
                                                                                        </tbody>
                                                                                    </table>
										</div>
                                                                            </div><!-- /.modal-content -->
									
                                                                    </div>
						
        
        
    </body>
</html>
