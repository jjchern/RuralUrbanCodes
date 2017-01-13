url = "https://www.ers.usda.gov/webdocs/DataFiles/RuralUrban_Continuum_Codes__18011/ruralurbancodes2003.xls"
fil = paste0("data-raw/", basename(url))
download.file(url, fil)

library(tidyverse)

readxl::read_excel(fil) %>%
    rename(fips = `FIPS Code`,
           state = State,
           county = `County Name`,
           rucc_1993 = `1993 Rural-urban Continuum Code`,
           rucc_2003 = `2003 Rural-urban Continuum Code`,
           pop_2000 = `2000 Population `,
           pct_metro_workers = `Percent of workers in nonmetro counties commuting to central counties of adjacent metro areas`,
           rucc_2003_desc = `Description for 2003 codes`) -> rucc2003
devtools::use_data(rucc2003)
