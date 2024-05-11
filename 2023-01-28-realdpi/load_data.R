start_date <- as.Date("1980-01-01")
end_date <- as.Date("2022-12-31")

# GDP
  # Nominal (GDP)
  # Real (GDPC1)
# Prices
  # CPI (CPIAUCSL)
  # Median CPI (MEDCPIM158SFRBCLE)
  # PCEPI (PCEPI)
  # Inflation expectations
# Employment
  # Employed
  # Unemployment
  # Labor force participation (rate)
  # Empirical Phillips curve
# Debt
  # Total federal debt
  # Held by public
  # Market value
# Public Finance
  # Federal spending
  # Federal transfers
  # Revenue
# Interest rates
  # Fed funds
  # T-bull
  # 10-year Treasury
# Equity
  # DJIA
  # S&P 500
# Trade balance
  # Net exports
  # Net borrowing or lending, NIPAs,
# Exchange rates
  # Broad U.S. dollar index

# Prices
# cpi
cpiaucsl <- fredr(
  series_id = "CPIAUCSL",
  observation_start = start_date,
  observation_end = end_date,
  frequency = "q",
  units = "log"
)

pcepi <- fredr(
  series_id = "PCEPI",
  observation_start = start_date,
  observation_end = end_date,
  frequency = "q",
  units = "log"
)


# Real GDP
gdpc1 <- fredr(
  series_id = "GDPC1",
  observation_start = start_date,
  observation_end = end_date,
  frequency = "q",
  units = "log"
)

gdpdef <- fredr(
  series_id = "GDPDEF",
  observation_start = start_date,
  observation_end = end_date,
  frequency = "q",
  units = "log"
)

fedfunds <- fredr(
  series_id = "FEDFUNDS",
  observation_start = start_date,
  observation_end = end_date,
  frequency = "q"
)

