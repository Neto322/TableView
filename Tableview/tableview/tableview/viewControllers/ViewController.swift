//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 02/11/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    var alumnos : [Alumno] = []

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as!  celdaAlumnoController
        
        celda.lblNombre.text =  alumnos[indexPath.row].nombre
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        
        celda.lblMateria.text = alumnos[indexPath.row].carrera
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 102
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alumnos.append(Alumno(nombre: "Juan", matricula: "123",carrera:  "Lic. en administracion"))
        alumnos.append(Alumno(nombre: "Carlos", matricula: "321", carrera: "Lic. industrial"))
    }


}

