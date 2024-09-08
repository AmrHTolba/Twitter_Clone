//
//  TextArea.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 08/09/2024.
//

import SwiftUI

struct TextArea: View {
    
    // MARK: - Variables
    @Binding var text: String
    let placeholder: String
    
    
    // MARK: - Initializer
    init(text: Binding<String>, _ placeholder: String) {
        self._text = text
        self.placeholder = placeholder
        UITextView.appearance().backgroundColor = .clear
    }
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundStyle(.placeholder)
                    .padding()
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}
