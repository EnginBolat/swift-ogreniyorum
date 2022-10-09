import UIKit
import Foundation

// nil = null

var userName:String?

if(userName != nil){
    print(userName)
}
else{
    print("Data is Nil")
}


// Optional Binding

var str:String?

if let info = str{
    print(info)
}
else{
    print("Data is Nil")
}
