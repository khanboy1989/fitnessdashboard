//
//  DashboardView.swift
//  FitnessDashboard
//
//  Created by Serhan Khan on 22/08/2024.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ZStack {
            // Gradient Background
            LinearGradient(gradient: Gradient(colors: [
                        Color.lightGray,  // Light Gray
                        Color.darkGray   // Dark Gray
                    ]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
    
            ScrollView {
                VStack {
                    ProfileHeaderView()
                    Spacer()
                }.ignoresSafeArea()
                    .padding(.vertical)
            }
            
        }
    }
}

#Preview {
    DashboardView()
}
