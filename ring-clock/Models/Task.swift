//
//  Task.swift
//  ring-clock
//
//  Created by Dani Benet on 8/9/23.
//

public class Task: Identifiable, Decodable {
    var label: String = ""
    var notes: String = ""
    
    init(title: String, notes: String) {
        self.label = title
        self.notes = notes
    }
}
