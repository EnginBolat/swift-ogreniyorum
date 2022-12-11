import UIKit
import Foundation

// Sıcaklık Dönüşümü

func convert(derece d:Double) -> Double?{
    let sonuc = (d  * 1.8) + 32;
    return sonuc
}

var santigratDerece:Double=32;
var convertMethodVar:Double? = convert(derece: santigratDerece);

print("Santigrat : \(santigratDerece)")
print("Fahrenheit : \(convertMethodVar ?? 0)")

// Dikdörtgen Çevre Hesaplama

func cevreHesapla(kisaKenar k:Int,uzunKenar u:Int)->Int{
    let sonuc = 2 * (k+u);
    return sonuc;
}


var kisakenar:Int = 4;
var uzunKenar:Int = 8;
var sonuc = cevreHesapla(kisaKenar: kisakenar, uzunKenar: uzunKenar)
print("Alan : \(sonuc)")

// Faktoriyel Hesaplama

func faktoriyelHesapla(sayi s1:Int)->Int{
    var sonuc = 1;
    for i in stride(from: 1, to: s1+1, by: 1){
        sonuc = sonuc * i;
    }
    return sonuc;
}

let sayi = 5;
let faktoriyelDegiskeni = faktoriyelHesapla(sayi: sayi);
print("\(sayi) Sayısının Faktoriyel Değeri : \(faktoriyelDegiskeni)")

// Kelime Uzunluğu

func kelimeUzunluguBul(kelime k:String) -> Int{
    let sonuc:Int = k.count;
    return sonuc;
}

let kelime = "engin"
let kelimeUzunlugu = kelimeUzunluguBul(kelime:kelime)
print("\(kelime) kelimesinin uzunluğu :\(kelimeUzunlugu)")

// İç Açılar Toplamı

func icAciToplam(kenarSayisi k:Int)->Int{
    let sonuc = (k - 2) * 180;
    return sonuc;
}

var icAci = icAciToplam(kenarSayisi: 3);
print("İç Açıları Toplamı : \(icAci)")





// Mesai Ücreti Hespalama

// 1 günde max 8 saat normal sonrası mesai
// 160 gün üstü mesai

func mesaiHesapla(gun g:Int)-> Int{
    let mesaiSaatUcret = 20;
    var sonuc = 0;

    if(g > 160){
        let mesajiGunSayisi = g - 160;
        let mesaiUcret = mesajiGunSayisi * mesaiSaatUcret;
        sonuc =  mesaiUcret;
    }else{
        sonuc = 0;
    }
    return sonuc;
}

let mesaiUcreti = mesaiHesapla(gun: 160);
print("Mesai Ücreti : \(mesaiUcreti)");

// Kota Hesaplama

// 50GB 100Tl
// Kota Aşımı Sonrası 1GB 4TL

func kotaAsimiHesapla(kullanılanInternet ki:Int) -> Int{
    var fiyat = 100;
    if(ki > 50){
        let ekstraKullanilanInternet = ki-50;
        fiyat = ekstraKullanilanInternet * 4;
    }
    return fiyat;
}
let kullanilanInternet = 100;
let kullanilanInternetUcret = kotaAsimiHesapla(kullanılanInternet: kullanilanInternet);
print("Ekstra Internet Ücreti : \(kullanilanInternetUcret)")
