import SwiftUI
struct RatingsView: View {
    var rating:Int
    var maxRating:Int = 5
    var body: some View {
        HStack{
            ForEach(1...maxRating,id:\.self){ star in
                Image(systemName: star <= rating ? "star.fill":"star")
                    .padding(-5)
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(rating:3,maxRating: 3)
    }
}
