# download the data

library(downloader)

# Download row data from ANES

downloader::download(url = "https://electionstudies.org/anes_timeseries_cdf/",
                     "anes_timeseries_cdf_data_copy.zip", mode = "wb")

# extract file from zip

unzip(zipfile = "anes_timeseries_cdf_data_copy.zip",
      files = "anes_timeseries_cdf_rawdata.txt",
      list = FALSE,
      unzip = getOption("unzip"))

# read the file into a data frame
read_anes_cdf <- read.table("anes_timeseries_cdf_rawdata.txt",
                            sep = "|",
                            header = T)
