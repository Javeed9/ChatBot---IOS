import SwiftUI

struct TitleRow: View {
    var ImageUrl = URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8TA7k8ml36wJ428s3n4jJnEL9lBDRFrkQEKUjveB5fw&s")
    var name = "Hiro Hamada"
    
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: ImageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading){
                Text(name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                Text("online").font(.caption).foregroundColor(.gray)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
        .background(.peach)
    }
}
