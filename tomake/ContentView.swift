import SwiftUI

struct ContentView: View {
    var body: some View {
        
            ZStack(alignment: .top){
                Color.black
                    .ignoresSafeArea()
                
                Rectangle()
                    .frame(height: 200)
                    .background(Color("myblue"))

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
                    LazyHGrid(rows: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Rows@*/[GridItem(.fixed(20))]/*@END_MENU_TOKEN@*/,  spacing: 40) {
                    
                    Text("Placeholder")
                            .foregroundColor(.black)
                    Text("Placeholder")
                            .foregroundColor(.black)
                
                    LazyVGrid(columns: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Columns@*/[GridItem(.fixed(200))]/*@END_MENU_TOKEN@*/, spacing: 40) {
                        Text(" ")
                            .frame(width: 100, height: 650)
                        Text("+")
                            .font(.system(size: 75))
                            .frame(width: 100, height: 75)
                            .padding(.bottom, 10)
                            .foregroundColor(Color.white)
                            .background(Color("myblue"))
                            .clipShape(Circle())
                        }
                    }
                }
            }
        }
    }

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
