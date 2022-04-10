resource "spotify_playlist" "House_1" {
  name        = "House#1"
  description = "this is test"
  public      = true

  tracks = concat(
    [for s in data.spotify_search_track.Endless_Luminosity_EP.tracks : s.id if s.name == "Endless Luminosity"],
    [for s in data.spotify_search_track.Coffee_Time.tracks : s.id if s.name == "Coffee Time"],
    [for s in data.spotify_search_track.Rumours.tracks : s.id if s.name == "Rumours - Radio Edit"],
    [for s in data.spotify_search_track.Huggin_and_A_Luvin.tracks : s.id if s.name == "Huggin' & A Luvin' - Chocolate Puma Remix"],
    [for s in data.spotify_search_track.Thinking_Of_You.tracks : s.id if s.name == "Thinking Of You" && s.id == "1lfiw9JMiaAwaMG7rFo3mm"],
  )
}
