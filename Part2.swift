class Language {
    let name: String
    var inventor: Person?

    init(name: String) {
        self.name = name
        print("\(name) was initialized")
    }

    deinit {
        print("\(self.name) was deinitialized")
    }
}

class Person {
    let name: String
    weak var language: Language?

    init(name: String) {
        self.name = name
        print("\(self.name) has been initialized")
    }

    deinit {
        print("\(self.name) has been deinitialized")
    }
}

var language: Language?
var inventor: Person?

language = Language(name: "Swift")
inventor = Person(name: "Chris Lattner")

// Create a cycle
inventor!.language = language
language!.inventor = inventor

// Both will be deinitialized because of the weak reference
inventor = nil
language = nil