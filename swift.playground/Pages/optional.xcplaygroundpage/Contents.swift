import Cocoa

var eCode: String?
eCode = "404"
//print(erroCode)

if let theError = eCode, let eCodeInt = Int(theError), eCodeInt == 404 {
    print(theError)
}
