import Foundation

class Principal: Libro{
    
    var librosDisponibles: [Libro] = []
            
    init(librosDisponibles: [Libro]) {
        super.init(title: "", autor: "", genero: "")
        self.librosDisponibles = librosDisponibles
    }
    
    func buscarLibroTitulo(libro: String) -> String{
        var libroEncontrado = ""
        librosDisponibles.forEach { libroDisponible in
            if libroDisponible.title == libro {
                libroEncontrado = libroDisponible.title
                print("Se encontró el libro con título: \(libroDisponible.title)")
            }
        }
        return libroEncontrado
    }
    
    func buscarLibroAutor(autor: String){
        librosDisponibles.forEach { libroDisponible in
            if libroDisponible.autor == autor {
                print("Se encontró el libro con título: \(libroDisponible.autor)")
            }
        }
    }
    
    func buscarLibroGenero(genero: String){
        librosDisponibles.forEach { libroDisponible in
            if libroDisponible.genero == genero {
                print("Se encontró el libro con título: \(libroDisponible.genero)")
            }
        }
    }
    
    func asignarLibro(){
        
    }
}
