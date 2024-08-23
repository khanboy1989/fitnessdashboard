//
//  CustomeProgressBar.swift
//  FitnessDashboard
//
//  Created by Serhan Khan on 23/08/2024.
//

import SwiftUI

struct CustomProgressBar: View {
    var progress: CGFloat = 0.7
    var body: some View {
        ZStack(alignment: .leading) {
            //Background Bar
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.gray.opacity(0.3))
                .frame(height: 20)
            
        }
    }
}

#Preview {
    CustomProgressBar().previewLayout(.sizeThatFits)
}
