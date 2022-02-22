//
//  ViewController.swift
//  practica2
//
//  Created by Mac18 on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    //var recibirNombre: String?

    @IBOutlet weak var nombreTF: UITextField!
    
    @IBOutlet weak var edadTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usuarioIV.image = UIImage(named: "person")
        
        
    }
    
    var edadInt = Int("18")
    var edadTexto = String(18)

    @IBAction func enviarBTN(_ sender: UIButton) {
        //print("enviar");
        performSegue(withIdentifier: "enviarTexto" , sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarTexto" {
            let objDestino = segue.destination as! ViewControllerDos
            objDestino.recibirNombre = nombreTF.text
            objDestino.recibirEdad=edadTF.text
        }
        
    }
    
    @IBOutlet weak var usuarioIV: UIImageView!
 /*  override func viewDidLoad() {
        super.viewDidLoad()
        usuarioIV.image = UIImage(named: "person")
}*/
    
}


