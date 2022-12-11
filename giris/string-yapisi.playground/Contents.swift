import UIKit

let stringA = "Merhaba"
let stringB = String("Merhaba Nesne")
let stringC = """
Merhaba nasılsınız
Bu bir swift eğitimidir
Umarım faydalı oluyordur...
"""

print(stringA)
print(stringB)
print(stringC)

// Null Control

var str1 = ""

if(str1.isEmpty){
    print("Boş")
}else{
    print("Boş Değil")
}
