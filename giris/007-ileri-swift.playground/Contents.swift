import UIKit

enum Hatalar:Error{
    case sifiraBolunmeHatasi
}

func bolme(s1:Int,s2:Int) throws -> Int{
    if(s2 == 0) {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1/s2
}

var s1 = 10
var s2 = 0

do{
    let sonuc = try bolme(s1: s1, s2: s2)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi{
    print("Hata")
}


let queue = DispatchQueue(label: "etiket")

queue.sync {
    for i in 1...10{
        print(i)
    }
}

for l in 100...110{
    print(l)
}
