//
//  ReadingItem.swift
//  WebReader
//
//  Created by Joel Caldwell on 6/5/2025.
//

import Foundation
import Observation

@Observable
class ReadingItem: Identifiable, Hashable, Equatable, Codable {
    var title: String
    var url: URL
    let creationDate: Date
    var hasFinishedReading: Bool
    let id: UUID
    
    init(title: String,
         url: URL,
         creationDate: Date = Date(),
         hasFinishedReading: Bool = false,
         id: UUID = UUID()) {
        self.title = title
        self.url = url
        self.creationDate = creationDate
        self.hasFinishedReading = hasFinishedReading
        self.id = id
    }
    
    static func == (lhs: ReadingItem, rhs: ReadingItem) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    //MARK: preview helper
    static var example: ReadingItem {
        ReadingItem(title: "Sample Reading Item", url: URL(string: "https://www.apple.com")!)
    }
    
    static var examples: [ReadingItem] {
        [
            .example,
            ReadingItem(title: "Apple", url: URL(string: "https://www.apple.com")!),
            ReadingItem(title: "Samsung", url: URL(string: "https://www.samsung.com/au/")!)
        ]
    }
    
}
