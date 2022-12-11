import UIKit

//Değişkenlere Veri Atama
var name:String = "Engin"
var surname:String = "Soyad"
var yas:Int = 18

//Null Safety
var number:Int?

//Print Metotu İçerisinde String Interpolation Yapma
print("Adı:\(name) Soyad:\(surname) Yaş:\(yas)")

//TypeSafety
var a = 42
print(a)
// a = "merhaba" --> Hata Verir

class Deneme{
    var x = 10 //Global Değişken
    var y = 20 //Global Değişken
    
    func topla(){
        var x = 40 //Local Değişken
        var y = 30 //Local Değişken
        x = x + y
        print(x)
    }
    func carp(){
        x = x*y //Global Değişkenden Türetilmiş
        print(x)
    }
}

/**Daha rahat bellek yönetimi için let kullanılır ve let ile tanımlanan bir değişkene daha sonra tekrardan atama yapılamaz.Örnek kullanım için let pi = 3 verilebilir*/

let sayi2 = 42

//Kaçış Karakterleri

var yazi = "Mehmet \"Nasılsın\" dedi"
print(yazi)

// Dönüşümler
Int("24")
Float("24.4")
String(24)
Double(24)

//Tuples

var kisi = ("Engin","Bolat")
var ad = kisi.0
var soyad = kisi.1
