import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                Color.black
                    // .ignoresSafeArea()
            
            Text("Mathis Zerari")
                .font(.largeTitle)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack(alignment: .top){
            Color.black
                .ignoresSafeArea()
            
            Rectangle()
                .frame(height: 200)
                .background(.blue)
            Text("To Make")
                .padding(.horizontal, 136)
                .padding(.top, 20)
                .padding(.bottom, 25)
                .font(.largeTitle)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .background(.blue)
            
            Button(action: {
                print("Round Action")
            }) {
                Text("Press")
                    .frame(width: 200, height: 700)
                    .foregroundColor(Color.green)
                    .background(Color.red)
                    .clipShape(Circle())
            }
        }
    }
}
