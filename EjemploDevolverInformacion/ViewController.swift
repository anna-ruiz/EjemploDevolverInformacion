//
//  ViewController.swift
//  EjemploDevolverInformacion
//
//  Created by Anna Ruiz on 26/10/2023.
//

import UIKit

class ViewController: UIViewController , obtenerDatos{

    @IBOutlet weak var lbResultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    
    }
    
    
    //Debemos resolverlo ya q en el protocolo solo lo hemos estandarizado
    func obtener(dato: String) {
        lbResultado.text = dato
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PASAR"{
            let destino = segue.destination as! Ventana2ViewController
            destino.delegate = self
        }
    }


}

