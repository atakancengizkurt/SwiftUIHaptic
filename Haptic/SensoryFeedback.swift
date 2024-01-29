//
//  SensoryFeedback.swift
//  Haptic
//
//  Created by Atakan Cengiz KURT on 29.01.2024.
//

import SwiftUI

struct SensoryFeedback: View {
    @State private var isOn = false
    @State var stepperValue: Double = 50
    
    @State private var completeSuccess = false
    @State private var completeWarning = false
    @State private var completeError = false
    
    @State private var impactLight = false
    @State private var impactMedium = false
    @State private var impactHeavy = false
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    Section("sensoryFeedback(.impact(weight: .light)"){
                        Button("Light") {
                            impactLight.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .sensoryFeedback(.impact(weight: .light), trigger: impactLight)
                        
                        Button("Medium") {
                            impactMedium.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .sensoryFeedback(.impact(weight: .medium), trigger: impactMedium)
                        
                        Button("Heavy") {
                            impactHeavy.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .sensoryFeedback(.impact(weight: .heavy), trigger: impactHeavy)
                    }
                    
                    Section("sensoryFeedback(.success"){
                        Button("Succes") {
                            completeSuccess.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        .sensoryFeedback(.success, trigger: completeSuccess)
                        
                        Button("Warning") {
                            completeWarning.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        .sensoryFeedback(.warning, trigger: completeWarning)
                        
                        Button("Error") {
                            completeError.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                        .sensoryFeedback(.error, trigger: completeError)
                    }
                    
                    Section("sensoryFeedback(.selection"){
                        Toggle("Toggle", isOn: $isOn)
                            .onChange(of: isOn) {
                                
                            }
                            .sensoryFeedback(.selection, trigger: isOn)
                        Stepper("Stepper \(stepperValue, specifier:"%.0f")", value: $stepperValue, in: 1...100, step: 1)
                            .sensoryFeedback(trigger: stepperValue){ oldValue, newValue in
                                
                                return oldValue < newValue ? .increase : .decrease
                                
                            }
                        
                    }
                    
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    SensoryFeedback()
}
