//
//  SoberDateView.swift
//  SobrietyTrackerApp
//
//  Created by Dhriti on 30/05/2566 BE.
//

import SwiftUI

struct SoberDateView: View {
    @ObservedObject var addiction: Addiction
    @State private var soberDate = Date()
    
    var body: some View {
        VStack {
            Text("Sober Date for \(addiction.name)")
                .font(.title)
                .padding()
            
            DatePicker(
                "Select Sober Date",
                selection: $soberDate,
                displayedComponents: .date
            )
            .datePickerStyle(WheelDatePickerStyle())
            .padding()
            
            Button(action: {
                addiction.soberDate = soberDate
            }) {
                Text("Save")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}
