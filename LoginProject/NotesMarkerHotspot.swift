import SwiftUI

struct NotesMarkerHotspot: View {
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
                    Text("Hinweis Markierung (Hotspot)")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    Text("Wenn du bei einer Hotspot-Aufgabe die Markierung am falschen Ort gesetzt hast, kannst du diese folgendermassen ändern: ")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 10){
                    Text("• Klicke auf die Markierung und halte die Maustaste gedrückt.")
                    Text("• Verschiebe die Markierung mit gedrückter Maustaste zum richtigen Ort.")
                    Text("• Lass die Maustaste los.")
                }
                .padding(.vertical)
                
                HStack {
                    Text("Animation")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                Image("kraide")
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
                        .buttonStyle(BlackFillButton())
                        Button("3") {}
                        .buttonStyle(BlackBorderButton())
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

struct NotesMarkerHotspot_Previews: PreviewProvider {
    static var previews: some View {
        NotesMarkerHotspot()
    }
}
