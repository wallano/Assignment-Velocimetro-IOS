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
    var velocidadEnCadena = "Apagado"
    init(){
        self.velocidad
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        if(velocidad == Velocidades(velocidadInicial : .Apagado)) {
            velocidad = Velocidades(velocidadInicial : .VelocidadBaja)
            velocidadEnCadena = "Velocidad baja"
        }else if (velocidad == Velocidades(velocidadInicial : .VelocidadBaja)){
            velocidad = Velocidades(velocidadInicial : .VelocidadMedia)
            velocidadEnCadena = "Velocidad media"
        }else if (velocidad == Velocidades(velocidadInicial : .VelocidadMedia)) {
            velocidad = Velocidades(velocidadInicial : .VelocidadAlta)
            velocidadEnCadena = "Velocidad alta"
        }else {
            velocidad = Velocidades(velocidadInicial : .VelocidadMedia)
            velocidadEnCadena = "Velocidad media"
        }
        
        return (velocidad.rawValue, velocidadEnCadena)
    }
    
}

var auto = Auto()
var velocidades = 0...19
for velocidad in velocidades{
    print(auto.cambioDeVelocidad())
}



