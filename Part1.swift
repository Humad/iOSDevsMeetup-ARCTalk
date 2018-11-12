class Language {
    let name: String

    init(name: String) {
        self.name = name
        print("\(name) was initialized")
    }

    deinit {
        print("\(self.name) was deinitialized")
    }
}

var reference1: Language?
var reference2: Language?
var reference3: Language?

// Initialize all
reference1 = Language(name: "Swift")
reference2 = Language(name: "Java")
reference3 = Language(name: "C")

// All references point to Swift, causing Java and C to be deinitialized
reference2 = reference1
reference3 = reference1

// Remove 2 references, but Swift is still not deinitialized
reference2 = nil
reference3 = nil

// Remove last reference, causing Swift to be deinitialized
reference1 = nil

