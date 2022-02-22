//
//  ViewControllerDos.swift
//  practica2
//
//  Created by Mac18 on 16/02/22.
//

import UIKit

class ViewControllerDos: UIViewController {
    
    var recibirNombre: String?
    var recibirEdad: String?
   
    
    
    
    @IBOutlet weak var nombreUsuarioLbl: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        nombreUsuarioLbl.text = recibirNombre
        
        let edadInt = Int(recibirEdad!) ?? 0
        if edadInt >= 18{
                print("MAYOR DE EDAD")
        }
        else {
                print("ERES MENOR DE EDAD, PROHIBIDO TU ACCESO")
        }
    }
    @IBAction func regresarBTN(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
    @IBAction func salirBTN(_ sender: UIButton) {
        exit(0)
    }
}
