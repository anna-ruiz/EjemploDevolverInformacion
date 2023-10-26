//
//  Ventana2ViewController.swift
//  EjemploDevolverInformacion
//
//  Created by Anna Ruiz on 26/10/2023.
//

import UIKit

class Ventana2ViewController: UIViewController {

    @IBOutlet weak var txtTexto: UITextField!
    
    //varaiable q almacena los datos le decimos a ventana mandamos los datos
    var delegate: obtenerDatos?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnVolver(_ sender: Any) {
        //guardamos la info
        let dato = txtTexto.text!
        
        //al delegado le decimos q le mandamos el dato
        delegate?.obtener(dato: dato)
        
        //Para cerrar la ventana actual
        self.dismiss(animated: true)
        
    }
   
    
    

}
