import UIKit

class Ogrenci{
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}


var o1 = Ogrenci(no: 1, ad: "Engin", sinif: "2")
var o2 = Ogrenci(no: 2, ad: "Ahmet", sinif: "1")
var o3 = Ogrenci(no: 3, ad: "Mehmet", sinif: "4")
var o4 = Ogrenci(no: 4, ad: "Abuzer", sinif: "2")
var o5 = Ogrenci(no: 5, ad: "Güneş", sinif: "3")

var ogrenciListesi = [Ogrenci]()

ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)
ogrenciListesi.append(o4)
ogrenciListesi.append(o5)

for ogrenci in ogrenciListesi{
    print("Ogrenci No : \(ogrenci.no!)")
    print("Ogrenci Ad : \(ogrenci.ad!)")
    print("Ogrenci Sınıf : \(ogrenci.sinif!)")
    print("*********************")
}


