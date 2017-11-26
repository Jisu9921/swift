import Cocoa

var population: Int = 54221
var message: String
var hasPostOffice: Bool = true

if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
} else if population >= 50000 && population < 100000 {
    message = "\(population) is a big town!"
} else {
    message = "\(population) is a pretty big"
}

print(message)
