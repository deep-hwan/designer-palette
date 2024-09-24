import SwiftUI

// Color를 hex 문자열로 초기화할 수 있도록 extension 추가
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64

        switch hex.count {
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24 & 0xFF, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct Colors {
    static let none = Color.clear

    static let white = Color(hex: "#FFFFFF")
    static let black = Color(hex: "#111111")

    struct Chiffon {
        static let `100` = Color(hex: "#FAFAFA")
        static let `200` = Color(hex: "#F8F8F8")
        static let `300` = Color(hex: "#F4F4F4")
        static let `400` = Color(hex: "#EEEEEE")
        static let `500` = Color(hex: "#E2E2E2")
        static let `600` = Color(hex: "#CCCCCC")
        static let `700` = Color(hex: "#C2C2C2")
        static let `800` = Color(hex: "#BBBBBB")
    }

    struct Tel {
        static let `100` = Color(hex: "#F8F9FC")
        static let `200` = Color(hex: "#F5F7FC")
        static let `300` = Color(hex: "#F3F4FC")
        static let `400` = Color(hex: "#EEF4FD")
        static let `500` = Color(hex: "#E5EDF8")
        static let `600` = Color(hex: "#E3EBF6")
    }

    struct Grey {
        static let `100` = Color(hex: "#AAAAAA")
        static let `200` = Color(hex: "#9D9E9F")
        static let `300` = Color(hex: "#898A8D")
        static let `400` = Color(hex: "#797979")
        static let `500` = Color(hex: "#666666")
        static let `600` = Color(hex: "#555555")
        static let `700` = Color(hex: "#444444")
        static let `800` = Color(hex: "#333333")
        static let `900` = Color(hex: "#222222")
    }

    struct Navy {
        static let `100` = Color(hex: "#9DA5B6")
        static let `200` = Color(hex: "#78829A")
        static let `300` = Color(hex: "#6E7993")
        static let `400` = Color(hex: "#56647F")
        static let `500` = Color(hex: "#445067")
        static let `600` = Color(hex: "#384661")
        static let `700` = Color(hex: "#31405E")
        static let `800` = Color(hex: "#263551")
    }

    struct Blue {
        static let `100` = Color(hex: "#72AAFF")
        static let `200` = Color(hex: "#6BA1F7")
        static let `300` = Color(hex: "#5E9EFF")
        static let `400` = Color(hex: "#5294FF")
        static let `500` = Color(hex: "#4788F4")
        static let `600` = Color(hex: "#3F87FF")
        static let `700` = Color(hex: "#2F7DFF")
        static let `800` = Color(hex: "#1D70FB")
    }

    struct LightBlue {
        static let `100` = Color(hex: "#86D3FF")
        static let `200` = Color(hex: "#76CDFE")
        static let `300` = Color(hex: "#67C4F9")
        static let `400` = Color(hex: "#55BEFA")
        static let `500` = Color(hex: "#43BAFF")
        static let `600` = Color(hex: "#38B5FB")
        static let `700` = Color(hex: "#32B5FF")
        static let `800` = Color(hex: "#19ACFF")
    }

    struct DarkBlue {
        static let `100` = Color(hex: "#7280FF")
        static let `200` = Color(hex: "#6B71F7")
        static let `300` = Color(hex: "#6171FF")
        static let `400` = Color(hex: "#5969FB")
        static let `500` = Color(hex: "#5263FF")
        static let `600` = Color(hex: "#4B5DFF")
        static let `700` = Color(hex: "#4456F9")
        static let `800` = Color(hex: "#3448FF")
        static let `900` = Color(hex: "#2E42F6")
    }

    struct Purple {
        static let `100` = Color(hex: "#A791FF")
        static let `200` = Color(hex: "#AB83FF")
        static let `300` = Color(hex: "#9B6DFE")
        static let `400` = Color(hex: "#8F5BFF")
        static let `500` = Color(hex: "#9A4BFF")
        static let `600` = Color(hex: "#903DFA")
        static let `700` = Color(hex: "#8527FD")
        static let `800` = Color(hex: "#7C15FF")
    }

    struct Yellow {
        static let `100` = Color(hex: "#FFE793")
        static let `200` = Color(hex: "#FFE072")
        static let `300` = Color(hex: "#FFDD64")
        static let `400` = Color(hex: "#FFCF72")
        static let `500` = Color(hex: "#FFDA17")
        static let `600` = Color(hex: "#FFD336")
        static let `700` = Color(hex: "#FFD600")
        static let `800` = Color(hex: "#F7D000")
    }

    struct Orange {
        static let `100` = Color(hex: "#FFD687")
        static let `200` = Color(hex: "#FFCF72")
        static let `300` = Color(hex: "#FFC452")
        static let `400` = Color(hex: "#FFB932")
        static let `500` = Color(hex: "#FEB703")
        static let `600` = Color(hex: "#FFAC0A")
        static let `700` = Color(hex: "#FF9900")
        static let `800` = Color(hex: "#F9A401")
    }

    struct Red {
        static let `100` = Color(hex: "#FF7272")
        static let `200` = Color(hex: "#FA6C6C")
        static let `300` = Color(hex: "#FB6262")
        static let `400` = Color(hex: "#F05F5F")
        static let `500` = Color(hex: "#ED5C5C")
        static let `600` = Color(hex: "#F95151")
        static let `700` = Color(hex: "#EB4444")
        static let `800` = Color(hex: "#F23030")
        static let `900` = Color(hex: "#F41818")
    }

    struct Pink {
        static let `100` = Color(hex: "#FFA4B4")
        static let `200` = Color(hex: "#FF849B")
        static let `300` = Color(hex: "#FF728B")
        static let `400` = Color(hex: "#FC7089")
        static let `500` = Color(hex: "#FF6580")
        static let `600` = Color(hex: "#FF5573")
        static let `700` = Color(hex: "#FF4162")
    }

    struct Green {
        static let `100` = Color(hex: "#99CEB5")
        static let `200` = Color(hex: "#76C39E")
        static let `300` = Color(hex: "#58C18F")
        static let `400` = Color(hex: "#3EBF81")
        static let `500` = Color(hex: "#2AB472")
        static let `600` = Color(hex: "#20A867")
        static let `700` = Color(hex: "#109F5B")
        static let `800` = Color(hex: "#008C49")
        static let `900` = Color(hex: "#027F43")
    }

    struct DarkGreen {
        static let `100` = Color(hex: "#A2B7AD")
        static let `200` = Color(hex: "#85A696")
        static let `300` = Color(hex: "#6EA68B")
        static let `400` = Color(hex: "#5A8E75")
        static let `500` = Color(hex: "#5A8D7E")
        static let `600` = Color(hex: "#3D7359")
        static let `700` = Color(hex: "#32674E")
        static let `800` = Color(hex: "#23553D")
    }

    struct Beige {
        static let `100` = Color(hex: "#DDC8B8")
        static let `200` = Color(hex: "#E1C7B4")
        static let `300` = Color(hex: "#D8C1A6")
        static let `400` = Color(hex: "#D3B797")
        static let `500` = Color(hex: "#CFAB83")
        static let `600` = Color(hex: "#D0A97C")
        static let `700` = Color(hex: "#DCA970")
    }

    struct Brown {
        static let `100` = Color(hex: "#C69D7F")
        static let `200` = Color(hex: "#C4926E")
        static let `300` = Color(hex: "#B97F55")
        static let `400` = Color(hex: "#B26F3F")
        static let `500` = Color(hex: "#A15C29")
        static let `600` = Color(hex: "#934F1D")
        static let `700` = Color(hex: "#7C431A")
        static let `800` = Color(hex: "#593012")
        static let `900` = Color(hex: "#593E29")
    }

    struct PastelBlue {
        static let `100` = Color(hex: "#EDF2F9")
        static let `200` = Color(hex: "#E9F2FF")
        static let `300` = Color(hex: "#DDE6F2")
        static let `400` = Color(hex: "#D4E7FB")
        static let `500` = Color(hex: "#CFDDF6")
    }

    struct PastelRed {
        static let `100` = Color(hex: "#FFF4F4")
        static let `200` = Color(hex: "#F9EDED")
        static let `300` = Color(hex: "#FFE9E9")
        static let `400` = Color(hex: "#F6DFDF")
        static let `500` = Color(hex: "#F6D6D6")
    }

    struct PastelNavy {
        static let `100` = Color(hex: "#EDEFF9")
        static let `200` = Color(hex: "#E8EBF8")
        static let `300` = Color(hex: "#E1E4F0")
        static let `400` = Color(hex: "#D8DDEF")
        static let `500` = Color(hex: "#C6CCE4")
    }

    struct PastelPurple {
        static let `100` = Color(hex: "#E8E1F1")
        static let `200` = Color(hex: "#E3DBED")
        static let `300` = Color(hex: "#D9CEE6")
        static let `400` = Color(hex: "#D2C2E5")
        static let `500` = Color(hex: "#D2BCEC")
    }

    struct PastelGreen {
        static let `100` = Color(hex: "#DEEDE1")
        static let `200` = Color(hex: "#D3E5D7")
        static let `300` = Color(hex: "#CDE3D2")
        static let `400` = Color(hex: "#C0DCC6")
        static let `500` = Color(hex: "#B9DBC1")
    }

    struct PastelBrown {
        static let `100` = Color(hex: "#EDE5DE")
        static let `200` = Color(hex: "#ECDFD4")
        static let `300` = Color(hex: "#DDC8B6")
        static let `400` = Color(hex: "#D5B79E")
        static let `500` = Color(hex: "#DCB697")
    }

    struct PastelYellow {
        static let `100` = Color(hex: "#FBEED6")
        static let `200` = Color(hex: "#FAE7C5")
        static let `300` = Color(hex: "#F6DDC0")
        static let `400` = Color(hex: "#FADBBF")
        static let `500` = Color(hex: "#F9E4AF")
    }
}
