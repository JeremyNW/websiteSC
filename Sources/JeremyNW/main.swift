import Foundation
import Publish
import Plot
import MacrinaSites

// This type acts as the configuration for your website.
struct HelloWorld: MacrinaWebsite {
    
    // Update these properties to configure your website:
    var url = URL(string: "https://JeremyNW.github.io")!
    var name = "JeremyNW"
    var description = "My personal website"
    var language: Language = .usEnglish
    var favicon: Favicon?
    // Path to the image that represents your website
    var imagePath: Path?
    
    // Pass one or more pages to this array. If it receives two or more, a navigation bar will be generated at the top of each page.
    var pages: [MacrinaPage] = [
        Home(),
        About(),
        Contact(),
        Privacy()
    ]
}

// This will generate your website using the built-in Foundation theme:
try HelloWorld().publish()


// MARK: Sample Pages
// A MacrinaPage will typically exist in its own file. These are just a few examples.

struct Home: MacrinaPage {
    // Displayed in an `<h1>` at the top of each page
    var title: String = "Home"
    var path: String = "/"
    var body: Component {
        Div {
            H2("Welcome to my personal website!")
            LineBreak()
            Paragraph("Feel free to explore my published apps, learn a little bit more about me, or check out the privacy policy for all my published apps.")
            MacrinaImage("swift-logo.webp", style: .circle) // Use `Image` for standard <img> or `MacrinaImage` if you want some css styling built in.
        }
    }
    var footer: Component?
}

struct About: MacrinaPage {
    var title: String = "About"
    var path: String = "/about"
    var body: Component {
        Div {
            H2("Bio")
            Paragraph("Hi, I'm Jeremy Warren! I'm an iOS Developer for Macrina LLC. For now coding is a hobby, but soon I hope to turn coding into a career! I spend most of my time writing in SwiftUI but I wrtie in Objective-C, and Swift as well. I also have 2 published apps on the App Store - Prepodium, and WorkNout. ")
            Divider()
            H2("Projects")
            Paragraph {
                MacrinaImage("/PrepodiumAppIcon.png", style: .circle)
                    .style("box-shadow: 0px 0px 5px black;")
                LineBreak()
                Link("Prepodium", url: "https://apps.apple.com/us/app/prepodium/id1597320769")
                LineBreak()
                Text( "Prepodium is a thought journal that builds talks for you. Whenever you have an impression or an interesting thought - record it in Prepodium. When its time to write a talk, the app will automatically gather your thoughts on the subject and assemble one for you!")
            }
            LineBreak()
            MacrinaImage("/WorkNoutAppIcon.png", style: .circle)
            LineBreak()
            Link("WorkNout", url: "https://apps.apple.com/us/app/worknout/id1609098576")
            Paragraph("Are you tracking your progress in your notes app? WorkNout helps you track everything you need to know to see progress!")
        }
    }
    var footer: Component?
}

struct Contact: MacrinaPage {
    var title: String = "Contact"
    var path: String = "/contact"
    var body: Component {
        Paragraph {
            Paragraph("jeddynwarren@gmail.com")
            Divider(width: 12)
            
            
            Link(url: "https://www.linkedin.com/in/jeremynw/") {
                Image("https://img.shields.io/badge/-JeremyNW-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/jeremynw/)](https://www.linkedin.com/in/jeremynw/")
            }
            LineBreak()
            Link(url: "https://www.instagram.com/jeddynwarren/?hl=en") {
                MacrinaImage("/Instagram.png", style: .icon)
                    .style("vertical-align:middle;")
                Text("Instagram")
            }
            LineBreak()
            Link(url: "https://www.Github.com/Jeremynw") {
                MacrinaImage("/Github.png", style: .icon)
                    .style("vertical-align:middle;")
                Text("Github")
            }
        }
    }
    
    var footer: Component?
}

struct Privacy: MacrinaPage {
    var title: String = "Privacy"
    var path: String = "/privacy"
    var body: Component {
        Paragraph {
            Paragraph("I like to keep it pretty simple:")
            LineBreak()
            Paragraph("I do not collect or record any information users provide in any app!")
            Paragraph("If you have any questions - feel free to email me at jeddynwarren@gmail.com")
        }
    }
    
    var footer: Component?
    
}
