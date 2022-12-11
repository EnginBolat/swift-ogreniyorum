import UIKit

// Array

var meyveler:[String]=["Elma","Armut","Karpuz","Muz"]

meyveler += ["Kiraz"] // Liste Sonunda Veri Ekler

for meyve in meyveler{
    print(meyve)
}

for (index, meyve) in meyveler.enumerated(){
    print("Sonuç \(index) : \(meyve)")  //index numarasını ve değerini birlikte verir
}

// Array Filtreleme

var sayilar = [1,2,3,4,5,6,7,8,9,10]

var sonuc1 = sayilar.filter({$0>7})
print(sonuc1)

var sonuc2 = sayilar.filter({$0<7})
print(sonuc2)

var sonuc3 = sayilar.filter({$0>1 && $0<3})
print(sonuc3)


// İsim arama

var isimler = ["Engin","Ahmet","Mehmet","Burak","Arda","Gürkan"]

for isim in isimler{
    if(isim == "Engin"){
        print("Hoşgeldin \(isim)")
        break
    }
    else{
        print("Hoşgeldiniz")
    }
}

// Set

/**
 İndexleme yoktur o yüzden elemanlara erişmek zordur.Aynı item'dan sadece 1 kere eklebilir.Eklenen item rastgele kaydedilir
 */

var setArray1 = Set <Int>()
var setArray2:Set = ["data","data","data","data"]
var setArray3:Set<String> = ["data","data","data","data"]

/**

 insert: Veri ekleme
 isEmpty: Boş Kontrol
 contains(): parantezler içerisinde verilen veriyi içeriyormu kontrol
 sorted(): verileri sıralama işlemi
 remove(): parantezler içersiinde verilen veriyi set dizisinden kaldırmayı sağlar
 removeAll(): set dizisi içerisindeki bütün verileri siler
 
**/

//Dictionary Yapısı

var dic1 = [Int:String]()
var dic2 = [3.14:"pi",2.71:"e"]
var dic3 : [Int:String] = [1:"Bir",2:"İki",3:"Üç"]

// İki diziden dictionary oluşturma

var dersler = ["NTP","GP","IP"]
var notlar = [100,20,90]

var dic4 = Dictionary(uniqueKeysWithValues: zip(dersler,notlar))
print(dic4)

