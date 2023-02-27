import SwiftUI

struct SelfAssessment: View {
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
                    Text("Selbsteinschätzung 1")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    Text("Bitte gib unten an, wie gut du die angegebenen Gebiete beherrschst.Bewege die Maus auf das Wort mit dem hochgestellten Fragezeichen neben dem Gebiet (z. B. Deutsch? ) um zu sehen, was geprüft wird.")
                        .font(.body)
                    Spacer()
                }
                
                HStack {
                    Text("Hinweis")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("• Bitte absolviere den Check allein und ohne Hilfe.")
                    Text("• Der Lehrbetrieb hat die Möglichkeit, deine Resultate mit einem anderen Check während der Schnupperlehre zu überprüfen!")
                }
                .padding(.bottom)
                
                HStack {
                    Text("Selbsteinschätzung 1")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                Image("Table")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
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

struct SelfAssessment_Previews: PreviewProvider {
    static var previews: some View {
        SelfAssessment()
    }
}
