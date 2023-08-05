import SwiftUI

struct CampaignView: View {
    @State var currentTab = 0
    let items = [
        "전체",
        "범죄",
        "실종"
    ]
    @Namespace var tabAnimation

    var body: some View {
        NavigationStack {
            VStack {
                topTabbar()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("안내 문자")
                }
            }
        }
    }

    @ViewBuilder
    func topTabbar() -> some View {
        HStack(spacing: 0) {
            ForEach(items.indices, id: \.self) { index in
                Button {
                    withAnimation {
                        currentTab = index
                    }
                } label: {
                    VStack {
                        Text(items[index])
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.black)
                        
                        if currentTab == index {
                            RoundedRectangle(cornerRadius: 17)
                                .fill(Color.gray900)
                                .frame(height: 2)
                                .matchedGeometryEffect(id: "TAB", in: tabAnimation, properties: .position)
                        } else {
                            Color.gray500
                                .frame(height: 2)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .background {
                        Color.clear
                    }
                }
                
            }
        }
    }
}
