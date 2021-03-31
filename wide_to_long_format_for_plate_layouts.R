layout_P1 <-
  readr::read_csv(sprintf("%s_Layout/S1_layout_P1.csv", base_path))
colnames(layout_P1) <-
  c("Row", "02", "03", "04", "05", "06" ,"07" ,"08" , "09", "10", "11")
layout_P1 <-
  reshape2::melt(layout_P1, id.vars = 1)
layout_P1$Plate <- 1
layout_P2 <-
  readr::read_csv(sprintf("%s_Layout/S1_layout_P2.csv", base_path))
colnames(layout_P2) <-
  c("Row", "02", "03", "04", "05", "06" ,"07" ,"08" , "09", "10", "11")
layout_P2 <-
  reshape2::melt(layout_P2, id.vars = 1)
layout_P2$Plate <- 2

layout <-
  dplyr::bind_rows(layout_P1, layout_P2)

colnames(layout) <- c("row", "col", "Metadata_Compound", "Metadata_Plate")

layout %<>% dplyr::mutate(Metadata_Well = paste(row, col, sep=""))

layout_S4 <-
  readr::read_csv(sprintf("%s_Layout/S4_layout.csv", base_path))
colnames(layout_S4) <-
  c("Row",
    "02", "03", "04", "05", "06" ,"07" ,"08", "09", "10", "11", "12",
    "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23")
layout_S4 <-
  reshape2::melt(layout_S4[1:14,], id.vars = 1)
colnames(layout_S4) <- c("row", "col", "Metadata_Compound")
layout_S4 %<>% dplyr::mutate(Metadata_Well = paste(row, col, sep=""))
layout %>%
  dplyr::select(contains("Metadata")) %>%
  readr::write_csv(sprintf("%s_Layout/layput_compounds_96well.csv", base_path))
layout_S4 %>%
  dplyr::select(contains("Metadata")) %>%
    readr::write_csv(sprintf("%s_Layout/layput_compounds_384well.csv", base_path))
