//
//  AddictionListView.swift
//  SobrietyTrackerApp
//
//  Created by Dhriti on 30/05/2566 BE.
//

import SwiftUI

struct AddictionListView: View {
    @State private var addictions = [
        Addiction(name: "Alcohol"),
        Addiction(name: "Smoking"),
        Addiction(name: "Drugs")
    ]
    
    var body: some View {
        NavigationView {
            List(addictions) { addiction in
                NavigationLink(destination: SoberDateView(addiction: addiction)) {
                    Text(addiction.name)
                }
            }
            .navigationBarTitle("Addictions")
        }
    }
}
