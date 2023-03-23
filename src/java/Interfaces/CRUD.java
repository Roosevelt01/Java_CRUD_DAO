/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Producto;
import java.util.List;

/**
 *
 * @author Alejandro Rodriguez
 */
public interface CRUD {
    public List listar();
    public Producto list(int id);
}
