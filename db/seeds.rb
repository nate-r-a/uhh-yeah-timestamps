Episode.create(number: 642)
Episode.create(number: 645)
Segment.create(title: "Ask Amy")
Segment.create(title: "USA Today Snapshots")
Timestamp.create(episode: Episode.first, start: 500, segment: Segment.first, comment: "Seth just wants to find vegan butterscotch yogurt")
Timestamp.create(episode: Episode.second, start: 1000, segment: Segment.first, comment: "Jonathan can't buy a vegan burger with a fresh hundo")
Timestamp.create(episode: Episode.first, start: 1500, segment: Segment.second, comment: "Seth is forced to steal ice cream")
