//
//  Created by admin on 30/01/23.
//

import SwiftUI

struct ModelView: View {
    @Binding var isShowing: Bool
    @State private var curHeight: CGFloat = 400
    
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    var body: some View {
        if isShowing{
            withAnimation(.easeInOut){
                ZStack(alignment: .bottom){
                    Color.black
                        .opacity(0.3)
                        .ignoresSafeArea()
                        .onTapGesture{
                            isShowing = false
                        }
                    mainView
                        .transition(.move(edge: .bottom))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
            }
        }
      }
    var mainView: some View{
        
        VStack{
            ZStack{
                Capsule()
                    .frame(width: 40, height: 6)
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.00001))
//            .gesture(DragGesture)
            
            ZStack{
                VStack{
                    Text("Hello")
                        .font(.system(size: 20, weight: .regular))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 10)
                    Text("Arcadix")
                        .font(.system(size: 20, weight: .bold))
                }
                .padding(.horizontal, 30)
            }
            .frame(maxHeight: .infinity)
            .padding(.bottom, 35)
        }
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                Rectangle()
                    .frame(height: curHeight / 2)
            }
                .foregroundColor(.white)
        )
    }
    
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
//        ModelView(isShowing: .constant(true))
        ContentView()
    }
}
