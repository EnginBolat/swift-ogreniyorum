import UIKit

//Örnek if

var sayi:Int=35

if(sayi>24){
    print("Sayı > 24")
}
else if(sayi<24){
    print("Sayı < 24")
}
else{
    print("Sayı == 24")
}

//Alan Hesabı

print("Çember Alanı (1)")
print("Dikdörtgen Alanı (2)")

var alanHesabiSecim = 2
var kisaKenar = 10
var uzunKenar = 20
var yaricap = 4
var pi = 3.14

print("Seçiminiz :\(alanHesabiSecim)")

if(alanHesabiSecim == 1){
    print("Dikdörtgenin Alan Hesabı")
    print("Kısa Kenar: \(kisaKenar)")
    print("Uzun Kenar: \(uzunKenar)")
    let alan = kisaKenar * uzunKenar
    print("Alan: \(alan)")
}
else{
    print("Çember Alan Hesabı")
    print("YarıÇap: \(yaricap) ")
    let alan = pi * Double(yaricap) * Double(yaricap)
    print("Alan: \(alan)")
}

// Dört işlem

print("Toplama (1)")
print("Çıkarma (2)")
print("Çarpma (3)")
print("Bölme (4)")

let sayi1 = 100
let sayi2 = 20
let dortİslemSecim = 4

print("Seçiminiz: \(dortİslemSecim)")

if(dortİslemSecim == 1){
    print("\(sayi1) + \(sayi2) = \(sayi1+sayi2)")
}
else if (dortİslemSecim == 2){
    print("\(sayi1) - \(sayi2) = \(sayi1-sayi2)")
}
else if (dortİslemSecim == 3){
    print("\(sayi1) * \(sayi2) = \(sayi1*sayi2)")
}
else{
    print("\(sayi1) / \(sayi2) = \(sayi1/sayi2)")
}

// Switch

var gun = 1

switch gun{
case 1 :
    print("Pazartesi")
case 2:
    print("Salı")
case 3:
    print("Çarşamba")
case 4:
    print("Perşembe")
case 5:
    print("Cuma")
case 6:
    print("Cumartesi")
case 7:
    print("Pazar")
default:
    print("Girilen Değer İstenenin Dışındadır")
}

// Switch Dortİslem

print("Toplama (1)")
print("Çıkarma (2)")
print("Çarpma (3)")
print("Bölme (4)")

let sayi3 = 100
let sayi4 = 20
let dortİslemSwitchSecim = 4

print("Seçiminiz: \(dortİslemSecim)")

switch dortİslemSwitchSecim{
case 1:
    print("\(sayi3) + \(sayi4) = \(sayi3+sayi4)")
case 2:
    print("\(sayi3) - \(sayi4) = \(sayi3-sayi4)")
case 3:
    print("\(sayi3) * \(sayi4) = \(sayi3*sayi4)")
case 4:
    print("\(sayi3) / \(sayi4) = \(sayi3/sayi4)")
default:
    print("Girilen Değer Sunulan Değerlerin Dışındadır")
}

// Döngüler

//For Döngüsü

for i in 1...5{
    print(i)
}

let start = 0
let end = 10
let by = 5

// Stide içerisinde to kullandıldığı zaman kadar anlamına geldiği için bitiş değerini dahil etmez

for i in stride(from: start, to: end, by: by){
    print(i)
}

// Stride içerisinde through yazdılığı zaman end değerinide döngünün içerisine dahil eder

for i in stride(from: start, through: end, by: by){
    print(i)
}

var dizi:Array=[10,20,30]

for item in dizi{
    print("Değer:\(item)")
}


// While Döngüsü

var index = 1

while index < 5{
    print("Sonuç \(index)")
    index+=1
}

/**
 Break : Kullanıldığı yerde döngüyü kırarak sonlandırır
 Continue : Kullandıldığı yer neresi olursa olsun altında kalan işlemleri gerçekleştirmez ve döngünün bir sonraki değerden çalışmasını sağlar
**/

// Tarihsel İşlemler

var tarih = Date()

var takvim = Calendar.current

var saniye = takvim.component(.second, from: tarih)
var dakika = takvim.component(.minute, from: tarih)
var saat = takvim.component(.hour, from: tarih)
var day = takvim.component(.day, from: tarih)
var ay = takvim.component(.month, from: tarih)
var yil = takvim.component(.year, from: tarih)

print("Saat:\(saniye):\(dakika):\(saat)\nTarih:\(gun):\(ay):\(yil)")
