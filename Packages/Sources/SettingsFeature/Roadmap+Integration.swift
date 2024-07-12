import Foundation
import Roadmap

class CustomFeatureVoter: FeatureVoter {
    var count = 0

    func fetch(for feature: RoadmapFeature) async -> Int {
        // query data from your API here
        count
    }

    func vote(for feature: RoadmapFeature) async -> Int? {
        // push data to your API here
        count += 1
        return count
    }

    func unvote(for feature: Roadmap.RoadmapFeature) async -> Int? {
        count -= 1
        return count
    }
}
