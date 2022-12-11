import UIKit

// Class ve Structre Tanımlama

struct Urun{
    var ad:String?
    var fiyat:Double?
}

class Araba{
    var renk:String?
    var kapasite:Int?
}

var laptop = Urun()
var bmw = Araba()

laptop.ad="Macbook"
laptop.fiyat=19.999

print(laptop.ad!)
print(laptop.fiyat!)

bmw.renk = "Mavi"
bmw.kapasite = 4

print(bmw.renk!)
print(bmw.kapasite!)


class Araba2{
    var renk: String?
    var hiz: Int?
    var calisiyorMu:Bool?
    
    
    func calistir(){
        calisiyorMu = true
    }
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    func hizlan(kacKm:Int){
        calisiyorMu = true
        hiz! += kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    func bilgiVer(){
        print("Renk:\(renk!),Hız:\(hiz!),Çalışıyor Mu?:\(calisiyorMu!)")
    }
}

var merco = Araba2()

merco.hiz = 120
merco.renk = "Siyah"
merco.calisiyorMu = true

print(merco.bilgiVer())
merco.hizlan(kacKm: 25)
print(merco.hiz!)

/**
Lazy Kullanımı:
 Depolama kısmında her zaman ikinci plana atılır
*/

class Matematik{
    var x = 20
    var y = 10
    
    var topla:Int{
        get{
            return x+y
        }
    }
}

var matNesne = Matematik()
print(matNesne.topla)

class Maas{
    var maas = 10000.0
    var bonus = 1.10
    
    var haftalikMaasHesaplama:Double{
        get{
            return (maas*bonus)/52
        }
        set(yeniHaftalikMaas){
            self.maas = yeniHaftalikMaas * 52
        }
    }
}

var maasNesne = Maas()
maasNesne.haftalikMaasHesaplama = 600 // haftalikMaasHesaplanin içerisinde set ile yeniHaftalikMaas tanımladığımız yeri otomatik olarka seçer ve oraya gider


// Fonksiyonlar ve Metotlar

/**
 Sınıf içerisinde kullanılanlara metot sınıf haricinde kullanılanlara fonksiyon denir
**/


class Insan{
    func selamla() -> String{
        return "Merhaba Engin"
    }
    func gelenMesajiAl(){
        let gelenMesaj = selamla()
        print(gelenMesaj)
    }
    func isimeGoreSelamla(isim:String)-> String{
        return isim
        // print("Merhaba \(isim)")
    }
}

var insanEvladı = Insan()
insanEvladı.gelenMesajiAl()
var isim = insanEvladı.isimeGoreSelamla(isim: "Abdulrahman Gündoğdu")
print(isim)

// Variadic Paramater

func toplamVariadic(sayilar:Int...) -> Int{
    var toplam=0
    for sayi in sayilar {
        toplam = toplam + sayi
    }
    return toplam
}

var deger1 = toplamVariadic(sayilar:1,2,3,4,5)
print(deger1)


// Fonksiyonlar global ve local parametreler

func hesapla(sayi1 s1:Int,sayi2 s2:Int) -> Int{
    let sonuc = s1*s2 + s2*4;
    return sonuc
}

let h = hesapla(sayi1: 3, sayi2: 5);
print("Sonuc:\(h)");

// Initialization ve Consturactor

class Kisiler{
    var ad:String?;
    var soyad:String?;
    
    init(ad a:String,soyad s:String) {
        self.ad = a;
        self.soyad = s;
    }
}

var kisi = Kisiler(ad: "Engin", soyad: "Bolat");
print(kisi.ad ?? "boş değer")
print(kisi.soyad ?? "boş değer")

// Static Değişkenler ve Metotlar

class StaticClassi{
    static var x:Int = 10;
    
    static func y(){
            print("Static Metot")
    }
}

print(StaticClassi.x)
print(StaticClassi.y())

// Enumeration

enum Renkler{
    case Beyaz
    case Siyah
}

var renk = Renkler.Beyaz;

switch renk{
case .Beyaz:
    print("#FFFFF")
case .Siyah:
    print("#00000")
}

print(Renkler.Siyah)

// Compositaion

class Kisiler2{
    var ad:String?;
    var yas:Int?;
    var adres:Adres?;
    
    init(ad a:String,yas y:Int,adres adrs:Adres){
        self.ad = a;
        self.yas = y;
        self.adres = adrs;
    }
    
}

class Adres{
    var il:String?;
    var ilce:String?;
    
    init(il ilDegeri:String,ilce ilceDegeri:String){
        self.il = ilDegeri;
        self.ilce = ilceDegeri;
    }
}

var p1Adres = Adres(il: "İstanbul", ilce: "Küçükçekmece");
var p1 = Kisiler2(ad: "Engin", yas: 12, adres: p1Adres);

print("Kişi Bilgileri");
print("Kişi Ad : \(p1.ad ?? "")");
print("Kişi Yaş : \(p1.yas ?? 0)");
print("Kişi İl: \(p1.adres?.il ?? "")");
print("Kişi İlçe : \(p1.adres?.ilce ?? "")")

// Kalıtım

class Arac{  //SUPER CLASS
    var renk:String?;
    var vites:String?;
    init(renk:String,vites:String) {
        self.renk = renk;
        self.vites = vites;
    }
}

class ArabaClass:Arac{ // SUB CLASS
    var kasaTipi:String?;
    
    init(kasaTipi:String,renk:String,vites:String) {
        self.kasaTipi = kasaTipi;
        super.init(renk: renk, vites: vites)
    }
}

class Nissan:ArabaClass{
    var model:String?;
    
    init(model:String,kasaTipi:String,renk:String,vites:String) {
        self.model = model;
        super.init(kasaTipi: kasaTipi,renk:renk,vites : vites)
    }
}


var arabaItem = Nissan(model: "2014",kasaTipi: "4x4",renk: "kırmızı",vites:"otomatik");

print("Araba Renk: \(arabaItem.renk ?? "")");
print("Araba Vites: \(arabaItem.vites ?? "")");
print("Araba Kasa Tipi: \(arabaItem.kasaTipi ?? "")");

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa:Ev{
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 30)
var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 10)

print(topkapiSarayi.kuleSayisi!)
print(bogazVilla.garajVarMi!)


class Personel{
    func iseAlindi(){
        print("Personel Mutlu")
    }
}

class Mudur:Personel{
    func iseAl(personel:Personel){
        personel.iseAlindi();
    }
    func terfiEttir(personel:Personel){
        
        if(personel is Ogretmen){
            (personel as! Ogretmen).maasArrtir(maas: 3000, artisMiktari: 1.2)
        }
        if(personel is Isci){
            print("İşçiler Terfi Alamaz")
        }
    
    }
}

class Isci:Personel{}

class Ogretmen:Personel{
    func maasArrtir(maas:Double,artisMiktari:Double){
        print(maas * artisMiktari)
    }
}

var ogretmen:Personel = Ogretmen()
var isci:Personel = Isci()

var mudur = Mudur()

mudur.iseAl(personel: ogretmen)
mudur.iseAl(personel: isci)

mudur.terfiEttir(personel: ogretmen)
mudur.terfiEttir(personel: isci)


// Extension

extension Double{
    var km : Double {return self * 1000.0}
    var m : Double {return self}
    var cm : Double {return self / 100.0}
    var mm : Double{return self / 1000.0}
}

print("10 cm : \(10.cm) metredir")
print("20 km : \(10.km) metredir")

// Extension Metod

extension String{
    func yerDegistir(yeniHarf:String,eskiHarf:String) -> String{
        return self.replacingOccurrences(of: eskiHarf, with: yeniHarf)
    }
}


let str = "ankara".yerDegistir(yeniHarf: "e", eskiHarf: "a")
print(str)

var meyve = "incir"

meyve = meyve.yerDegistir(yeniHarf: "x", eskiHarf: "i")
print(meyve)

// PROTOCOL

protocol Protocol1{
    var degisken : Int  {get set}
    
    func metot1()
    func metot2()->String
}

class ClassA : Protocol1{
    var degisken = 10
    func metot1() {
        print("Merhaba")
    }
    func metot2() -> String {
        return "a"
    }
}

// Protocol Örnek

protocol Squeezable{
    func howToSqueez()
}

protocol Eatable{
    func howToEat()
}

class Aslan{}

class Tavuk:Eatable{
    func howToEat() {
        print("Elinen dayı")
    }
}

class Elma:Eatable , Squeezable{
    func howToEat() {
        print("Elinilen Dayı Elinilen")
    }
    func howToSqueez() {
        print("Makineyle")
    }
}

class AmasyaElmasi:Elma{
    override func howToEat() {
        print("Yıka ve ye")
    }
    override func howToSqueez() {
        print("Makine ile")
    }
}

var g = AmasyaElmasi()

print(g.howToEat())

//Closure

let ifade = {
    print("Closure")
}

ifade()

let toplama = {
    (sayi1:Int,sayi2:Int) -> Int in
    return sayi1+sayi2
}

let sonuc = toplama(2,3)
print(sonuc)

var sayilar:[Int]  = [5,10,-6,75,20]
let siralama1 = sayilar.sorted(by: {sayi1,sayi2 in sayi1 > sayi2})
let siralama2 = sayilar.sorted(by: {n1,n2 in n1 < n2})
let siralama3 = sayilar.sorted(by: <)
let siralama4 = sayilar.sorted(by: {$0 > $1})


print(siralama1)
print(siralama2)
print(siralama3)
print(siralama4)
























