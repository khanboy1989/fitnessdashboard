import SwiftUI

struct CustomProgressBar: View {
    var progress: CGFloat = 0.7  // Example progress (70%)
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // Background Bar
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray.opacity(0.3))  // Light gray background
                    .frame(height: 20)
                
                // Foreground Bar (Gradient)
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [
                            Color.blue,  // Start of the gradient
                            Color.black.opacity(0.8)  // End of the gradient
                        ]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: progress * geometry.size.width, height: 20)  // Adjust the width based on progress
                
                // Text (Overlay)
                HStack {
                    Spacer().frame(width: 10)
                    Text("78%")  // Example text, you can customize this
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
        }
        .frame(height: 20)
    }
}

#Preview {
    CustomProgressBar()
        .padding()
}

