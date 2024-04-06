import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnBuscarTitulo: UIButton!
    
    @IBOutlet weak var btnDevolver: UIButton!
    
    @IBOutlet weak var btnPrestar: UIButton!
            
    @IBOutlet weak var txtFieldBusqueda: UITextField!
    
    let librosDisponibles = Principal(librosDisponibles: [Libro(title: "La divina comedia", autor: "Dante Alighieri", genero: "Comedia"),Libro(title: "La palabra del mudo", autor: "Julio Ramon Ribeyro", genero: "Cuento"),Libro(title: "Dracula", autor: "Bram Stoker", genero: "Terror")])

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func inputBusqueda(_ sender: UITextField) {
        var libro = librosDisponibles.buscarLibroTitulo(libro: sender.text!)
        if libro == sender.text {
            print("Libro encontrado")
        }
        else {
            print("Libro no encontrado")
        }
    }
    
    @IBAction func onTapBuscar(_ sender: UIButton) {
        txtFieldBusqueda.text
        librosDisponibles.buscarLibroTitulo(libro: "La palabra del mudo")
    }
    
    @IBAction func onTapDevolver(_ sender: UIButton) {
    }
    
    @IBAction func onTapPrestar(_ sender: UIButton) {
    }
    
}

