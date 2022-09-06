import SwiftUI

struct MenuRowView: View {
    var item:MenuItem
    var body: some View {
        Image("\(item.id)_sm")
            .resizable()
            .frame(maxWidth:50,maxHeight: 50)
            .clipShape(Circle())
        VStack(alignment:.leading){
            Text(item.name)
                .font(.caption)
            RatingsView(rating: item.rating)
                .font(.caption2)
        }
        Spacer()
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item:testMenuItem)
    }
}
