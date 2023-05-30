//
//  Addiction.swift
//  SobrietyTrackerApp
//
//  Created by Dhriti on 30/05/2566 BE.
//

import Foundation

class Addiction: Identifiable, ObservableObject {
    let id = UUID()
    let name: String
    
    @Published var soberDate: Date?
    
    init(name: String) {
        self.name = name
    }
}
