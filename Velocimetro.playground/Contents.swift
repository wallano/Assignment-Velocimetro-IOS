//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto{
    var velocidad = Velocidades(velocidadInicial : .Apagado)
    
    init(){
        self.velocidad
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        let velocidadAuxiliar = velocidad
        
        if (velocidadAuxiliar) == .Apagado {
            velocidad = .VelocidadBaja
        }
            
        else if (velocidadAuxiliar) == .VelocidadBaja {
            velocidad = .VelocidadMedia
        }
            
        else if (velocidadAuxiliar) == .VelocidadMedia {
            velocidad = .VelocidadAlta
        }
            
        else if (velocidadAuxiliar) == .VelocidadAlta {
            velocidad = .VelocidadMedia
        }
        
        let resultado = (velocidadAuxiliar.rawValue, "\(velocidadAuxiliar)")
        
        return resultado
    }
    
}

var auto = Auto()
var velocidades = 0...19
for velocidad in velocidades{
    print(auto.cambioDeVelocidad())
}



