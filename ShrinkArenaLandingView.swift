import SwiftUI

struct ShrinkArenaLandingView: View {
    
    private let appStoreURL = URL(string: "https://apps.apple.com/app/shrink-arena-love-ball-couple/id6759005228")!
    private let googlePlayURL = URL(string: "https://play.google.com/store/apps/details?id=sam.shrink.arena.cut.ball")!
    private let trailerURL = URL(string: "https://www.youtube.com/shorts/9YEhFiXb59s")!
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                
                // MARK: - Logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
                    .shadow(radius: 10)
                
                // MARK: - Title
                VStack(spacing: 8) {
                    Text("Shrink Arena")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Love Ball Couple")
                        .font(.title2)
                        .foregroundColor(.pink)
                    
                    Text("Control The Space – Unite Them")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .multilineTextAlignment(.center)
                
                Divider()
                
                // MARK: - Description
                VStack(alignment: .leading, spacing: 12) {
                    
                    Text("Valentine Special Edition")
                        .font(.headline)
                        .foregroundColor(.red)
                    
                    Text("""
Slice the arena with precision and shrink the space strategically to bring the two love balls closer together — without touching them.

One wrong cut costs a life.
You have only 30 seconds per level.
Think fast. Cut smart. Unite them before time runs out.
""")
                        .font(.body)
                }
                .padding(.horizontal)
                
                Divider()
                
                // MARK: - Screenshots
                VStack(alignment: .leading, spacing: 12) {
                    Text("Screenshots")
                        .font(.headline)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            Image("anh1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 220)
                                .cornerRadius(16)
                            
                            Image("anh2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 220)
                                .cornerRadius(16)
                            
                            Image("anh3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 220)
                                .cornerRadius(16)
                        }
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                // MARK: - Features
                VStack(alignment: .leading, spacing: 8) {
                    Text("Why Players Love It")
                        .font(.headline)
                    
                    FeatureRow(text: "Addictive precision-based slicing gameplay")
                    FeatureRow(text: "Real-time physics with dynamic bouncing movement")
                    FeatureRow(text: "Increasing difficulty that rewards focus and skill")
                    FeatureRow(text: "Fast 30-second levels perfect for quick sessions")
                    FeatureRow(text: "Competitive global leaderboards")
                }
                .padding(.horizontal)
                
                Divider()
                
                // MARK: - Download Buttons
                VStack(spacing: 16) {
                    
                    Link(destination: appStoreURL) {
                        DownloadButton(title: "Download on App Store", color: .black)
                    }
                    
                    Link(destination: googlePlayURL) {
                        DownloadButton(title: "Get it on Google Play", color: .green)
                    }
                    
                    Link(destination: trailerURL) {
                        DownloadButton(title: "Watch Trailer", color: .red)
                    }
                }
                .padding(.horizontal)
                
                Spacer(minLength: 30)
            }
            .padding(.top, 30)
        }
    }
}

// MARK: - Feature Row
struct FeatureRow: View {
    var text: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "scissors")
                .foregroundColor(.pink)
            
            Text(text)
                .font(.subheadline)
        }
    }
}

// MARK: - Download Button
struct DownloadButton: View {
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .background(color)
            .cornerRadius(14)
            .shadow(radius: 4)
    }
}

#Preview {
    ShrinkArenaLandingView()
}
