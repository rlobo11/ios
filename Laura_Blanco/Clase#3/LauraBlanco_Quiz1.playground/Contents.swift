//: Playground - noun: a place where people can play

import UIKit





class CambioBitcoins
{
    let precioBitcoin = 10
    var cantidad : Int = 0
    var monto : Double = 0
    var vMontoPagar : Double = 0
    var vCambio : Double = 0
   
    
    func Comprar (cantidad:Int, monto : Double){
        if cantidad > 0 {
            vMontoPagar = Double(cantidad * precioBitcoin)
            if monto < vMontoPagar
            {
                print("Dinero Insuficiente")
            }else
            {
                if monto > vMontoPagar {
                   vCambio = Cambio(pMonto: monto, pMontoPagar: vMontoPagar)
                    print("Usted compro: \(cantidad)  de bitcoin. Su vuelto es: \(vCambio)")
                }else{
                    print("Usted compro: \(cantidad)  de bitcoin.")
                }
                }
        }else{
         print("Defina una cantidad")
        }
        
    }
    
    func Cambio (pMonto: Double, pMontoPagar:Double)-> Double{
     return pMonto - pMontoPagar
        
    }
}
