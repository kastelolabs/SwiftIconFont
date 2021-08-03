import class Foundation.Bundle

extension Foundation.Bundle {
    static var module: Bundle = {
        let mainPath = "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/SwiftIconFont_SwiftIconFont.bundle"
        let buildPath = "/Users/neural/Work/kastelolabs/SwiftIconFont/.build/x86_64-apple-macosx/debug/SwiftIconFont_SwiftIconFont.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle != nil ? preferredBundle : Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}