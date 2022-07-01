import UIKit

//---Diziler---
//Diziler, birden fazla veriyi tek bir değişkende tutmaya yarar

var array : Array = [1,2,3,4,5]
print(array)

let engin="engin"
let ahmet="ahmet"
let burak="burak"

let isimDizisi:Array=[engin,ahmet,burak]

print("----------İsimler----------")
print(isimDizisi)


//!!--SETLER--!!!


let setler = Set(["Red","Blue","Green"])
print("Setler")
print(setler)


//Tuples

let tupless =  (name:"Engin",last:"Bolat")

tupless.0
tupless.name

tupless.1
tupless.last	

