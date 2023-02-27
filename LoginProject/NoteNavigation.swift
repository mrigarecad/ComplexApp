import SwiftUI

struct NoteNavigation: View {
    var body: some View {
        VStack {
            HStack {
                Image("BSC_Logo")
                Spacer()
                Text("Berufs-Check")
                    .font(.title)
                    .foregroundColor(Color("BSC_Green"))
            }
            Divider()
            ScrollView {
                HStack {
                    Text("Hinweis Navigation")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    Text("Bei jeder Aufgabe findest du am unteren Fensterrand eine Navigationsleiste.")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 10){
                    Text("• Die Farbe der Füllung der Aufgabennummern zeigt dir an, ob du die Aufgabe bereits gelöst hast (grün) oder nicht (weiss).                         Die aktuelle Aufgabe wird weiss auf schwarzem Hintergrund dargestellt. ")
                    Text("• Durch Anklicken der Nummer kannst du die entsprechende Aufgabe öffnen.")
                }
                .padding(.vertical)
                
                HStack {
                    Text("Navigationsleiste am unteren Fensterrand")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                Image("Navigation")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                HStack {
                    Button("Vorherige Seite") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(GreenBorderButton())
                    
                    Spacer()
                    
                    Button("Nächste Seite") {
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
                        .buttonStyle(GreenFillButton())
                        Button("2") {}
                        .buttonStyle(GreenFillButton())
                        Button("3") {}
                        .buttonStyle(BlackFillButton())
                        Button("4") {}
                        .buttonStyle(BlackBorderButton())
                        Button("5") {}
                        .buttonStyle(BlackBorderButton())
                        Button("6") {}
                        .buttonStyle(BlackBorderButton())
                        Button("7") {}
                        .buttonStyle(BlackBorderButton())
                    }
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)

            }
            
        }
        .padding(.horizontal)
    }
}

struct NoteNavigation_Previews: PreviewProvider {
    static var previews: some View {
        NoteNavigation()
    }
}
