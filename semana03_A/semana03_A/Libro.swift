import Foundation

class Libro {
    var title: String = ""
    var autor: String = ""
    var genero: String = ""
    
    
    init(title: String, autor: String, genero: String) {
        self.title = title
        self.autor = autor
        self.genero = genero
    }
    
    //Metodo 1
    func extractGenero() -> String {
        return ("El género del libro '\(self.title)' es \(self.genero).")
    }
    
    //Metodo 2
    func showBook() {
        print("Name: \(self.title) \n autor: \(self.autor)")
    }

    
}
