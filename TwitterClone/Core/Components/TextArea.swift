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
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .topLeading) {
            

            TextEditor(text: $text)
                .padding(4)
            
            if text.isEmpty {
                Text(placeholder)
                    .padding(.horizontal,  8)
                    .padding(.vertical, 12)
                    .foregroundStyle(Color(.placeholderText))
            }
            
        }
        .font(.body)
        
    }
}
