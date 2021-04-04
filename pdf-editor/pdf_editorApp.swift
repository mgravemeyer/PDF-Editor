//
//  pdf_editorApp.swift
//  pdf-editor
//
//  Created by Maximilian Gravemeyer on 04.04.21.
//

import SwiftUI

@main
struct pdf_editorApp: App {
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                PDFListView()
                    .environmentObject(PDFMediaViewModel())
            }
        }
    }
}
