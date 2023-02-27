import SwiftUI

struct Task_Paragraph: View {

    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("BSC_Logo")
                    Spacer()
                    Text("Deutsch Text schreiben")
                        .font(.headline)
                        .foregroundColor(Color.black)
                }
                HStack {
                    Text("Berufs-Check")
                        .font(.headline)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                    Text("Gruppenzeit : 00:57")
                        .font(.headline)
                        .foregroundColor(Color.red)
                }
            }
            Divider()
            ScrollView {
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Bitte schreibe einen kurzen Text.")
                            .font(.body)
                            .fontWeight(.regular)
                        
                            Text("Thema: Erzähle von einem Ereignis aus deinem Leben.")
                                .font(.body)
                                .fontWeight(.regular)
                                .padding(.top, 1.0)
                    }
                    Spacer()
                }
                .padding(.top)

                
                HStack {
                    Text("Antwort")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
//                    Image("Calculator")
                    Spacer()
                }.padding(.top)
                
                VStack(alignment: .leading){
                    TextEditor(text: /*@START_MENU_TOKEN@*/.constant("Placeholder")/*@END_MENU_TOKEN@*/)
                        .padding(/*@START_MENU_TOKEN@*/.all, 2.0/*@END_MENU_TOKEN@*/)
                        .frame(minHeight: 200.0)
                        .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        
                        
                        
                }
                
                Spacer()
                
                HStack {
//                    Button("Gebiet beenden") {
//                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                    }.buttonStyle(GreenBorderButton())
//
//                    Spacer()
//                    Button("Vorherige Seite") {
//                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                    }.buttonStyle(BSCGreenFillButton())
                    Spacer()
                    Button("Dieses Gebiet Beenden") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(BSCGreenFillButton())
                }
                .padding(.vertical)
                
                HStack{
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 32.0, height: 32.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("BSC_Light_Green")/*@END_MENU_TOKEN@*/)
                    Text("Gelöst")
                        .font(.body)
                    RoundedRectangle(cornerRadius: 4)
                      .stroke(Color.black, lineWidth: 1)
                      .frame(width: 31, height: 31)
                    Text("Ungelöst")
                        .font(.body)
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 32.0, height: 32.0)
                    Text("Aktuell")
                        .font(.body)
                        
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                
                ScrollView(.horizontal) {
                    HStack {
                        Button("1") {}
                        .buttonStyle(BlackFillButton())
                    }
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom)
        }
        .padding(.horizontal)
    }
}

struct Task_Paragraph_Previews: PreviewProvider {
    static var previews: some View {
        Task_Paragraph()
    }
}
