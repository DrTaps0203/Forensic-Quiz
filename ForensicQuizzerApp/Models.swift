import Foundation

struct Question: Identifiable {
    let id = UUID()
    let text: String
    let options: [String]
    let correctIndex: Int
    let explanation: String
    let category: String
}

struct Category: Identifiable {
    let id = UUID()
    let name: String
    var questions: [Question]
}
