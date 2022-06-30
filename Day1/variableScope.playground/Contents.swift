import UIKit

class AritmatikIslemler{
    var globalX:Int=20  //Global Değerler
    var globalY:Int=30
    
    func topla(){
        var x = 40 //Logic değer sadece süslü parantezler sınırında geçerlidir yani bu değer başka bir fonksiyondan erişilemez
        x=x+globalY
        print(x)
    }
}

var d = AritmatikIslemler()

d.topla()
