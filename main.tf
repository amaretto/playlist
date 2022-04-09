resource "spotify_playlist" "test" {
  name        = "test playlist"
  description = "this is test"
  public      = true

  tracks = concat(
    [for s in data.spotify_search_track.FANTASY_CLUB.tracks : s.id if s.name == "WHAT YOU GOT"],
    [for s in data.spotify_search_track.Eisei_Ep.tracks : s.id if s.name == "Trendy"]
  )
}
