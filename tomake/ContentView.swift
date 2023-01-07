import SwiftUI

struct ContentView: View {
    var body: some View {
        
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
                
                Button {
                    print("Hello World")
                } label: {
                    ZStack(alignment: .bottomTrailing, content: {
                        Text("+")
                            .font(.system(size: 80))
                            .frame(width: 100, height: 700)
                            .padding(.bottom, 10)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .clipShape(Circle())
                    })
                }

            }
    }
}

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
