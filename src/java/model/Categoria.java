/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/*
bin es un pollo serializable y con constructor, evito problemas de concurrencia
pollo atributos, metodos
*/
public class Categoria implements Serializable {

    private int codigo;
    private String nombre;

    public Categoria() {//sin valores y categorias ceros
        this.codigo = 0;
        this.nombre = "";
    }

    public Categoria(int codigo, String nombre){ //nombre nosotros el codigo autoincrementar
        this.codigo = codigo;
        this.nombre = nombre;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getNombre() {
        return nombre;
    }

}
