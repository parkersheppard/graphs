library(fredr)

fredr_set_key("7591c94c936d685e5b22365e42f6aea3")

fredr(
  series_id = "GDPC1",
  observation_start = as.Date("2000-01-01"),
  observation_end = as.Date("2028-12-31")
)