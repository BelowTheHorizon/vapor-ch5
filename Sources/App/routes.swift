import Vapor
import FluentSQLite

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    router.post(Acronym.self, at: "api", "acronyms") { (req, acronym) in
        return acronym.save(on: req)
    }

}
