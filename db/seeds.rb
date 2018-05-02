Episode.create(number: 642, filename: "ep642podcastappropriateattire")
Segment.create(title: "Ask Amy")
Timestamp.create(episode: Episode.first, start: 500, segment: Segment.first)