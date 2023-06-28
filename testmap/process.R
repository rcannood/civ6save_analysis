library(tidyverse)

options(width = 200)

as_hex <- function(x) x %>% as.integer %>% as.hexmode %>% format %>% paste(collapse = "")
width <- 74

map <- jsonlite::read_json("testmap/testmap_v0.4.json", simplifyVector = TRUE) %>%
  .$tiles %>%
  as_tibble() %>%
  mutate(
    i = row_number() - 1,
    x = i %% width,
    y = floor(i / width),
    # buffer0_len = map_int(buffer0, length),
    # buffer1_len = map_int(buffer1, length),
    # buffer0_chr = map_chr(buffer0, as_hex),
    # buffer1_chr = map_chr(buffer1, as_hex)
  ) %>%
  select(i, x, y, everything())

map %>% filter(grepl("\\?\\?\\?", terrain)) %>% select(1:10)

library(googlesheets4)

gs4_auth("robrecht.cannoodt@gmail.com")

terrains <- read_sheet("1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "terrains")
terrains$terrain_i <- map$terrain[terrains$testmap_tile + 1]
write_sheet(terrains, "1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "terrains")

features <- read_sheet("1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "features")
features$feature_i <- map$feature[features$testmap_tile + 1]
write_sheet(features, "1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "features")

improvements <- read_sheet("1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "improvements")
improvements$improvement_i <- map$improvement[improvements$testmap_tile + 1]
write_sheet(improvements, "1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "improvements")

continents <- read_sheet("1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "continents")
continents$continent_i <- map$continent[continents$testmap_tile + 1]
write_sheet(continents, "1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "continents")

resources <- read_sheet("1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "resources")
resources$resource_i <- map$resource[resources$testmap_tile + 1]
write_sheet(resources, "1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs", "resources")

# check rivers
map[c(665, 666, 741, 742)+1,] %>% as.data.frame

# check cliffs
map[c(665, 668, 670, 671)+1,] %>% as.data.frame

# check pillaged improvements
map[c(665, 1407, 1408, 1410)+1,] %>% as.data.frame

buffer_tiles <- map %>%
  mutate(
    i = row_number() - 1,
    x = i %% width,
    y = floor(i / width),
  ) %>%
  filter(!map_lgl(buffer0, is.null)) %>%
  select(i, x, y, terrain, feature, resource, buffer0, tile_overlay_num) %>%
  mutate(
    buffer0_len = map_int(buffer0, length),
    buffer0 = map_chr(buffer0, paste, collapse = "")
  )

buffer_tiles %>% print(n = 300)

# width <- 74
# df <- map %>%
#   mutate(
#     i = row_number() - 1,
#     x = i %% width,
#     y = floor(i / width),
#   ) %>%
#   civ6saves:::add_coordinates()

# df

# ggplot(df) +
#   geom_point(aes(x, y, colour = terrain))


# xy_ratio <- 0.5 / cos(30/180*pi)


# plot_terrain_map <- function(tib, alpha = 1) {

#   plot_empty_map(tib) +
#     ggforce::geom_regon(aes(fill = terrain), alpha = alpha) +
#     ggforce::geom_regon(aes(fill = feature, r = xy_ratio * .9), data = tib %>% filter(feature == "FeatureType::Ice"), alpha = alpha) +
#     geom_text(aes(label = "^"), tib %>% filter(terrain == "FeatureType::Hill"), alpha = alpha) +
#     geom_text(aes(label = "^"), tib %>% filter(terrain == "FeatureType::Mountain"), fontface = "bold", alpha = alpha)#+
#     #geom_segment(aes(x = xa, xend = xb, y = ya, yend = yb), colour = feature_palette[["River"]], rivers, size = 1, alpha = alpha) +
#     #scale_fill_manual(values = c(terrain_palette, feature_palette))
# }

# plot_terrain_map(df)

# plot_empty_map <- function(tib) {
#   ggplot(tib, aes(x = x0, y = y0, x0 = x0, y0 = y0, sides = 6, angle = 30 / 180 * pi, r = xy_ratio)) +
#     theme_void() +
#     theme(axis.line=element_blank(),
#           axis.ticks=element_blank(),
#           axis.title=element_blank(),
#           axis.text.y=element_blank(),
#           axis.text.x=element_blank(),
#           panel.border = element_blank(),
#           panel.grid.major = element_blank(),
#           panel.grid.minor = element_blank(),
#           panel.background = element_blank(),
#           plot.title = element_text(hjust = .5, size = 16),
#           plot.subtitle = element_text(hjust = .5, size = 12),
#           legend.position = "bottom") +
#     coord_equal(expand = FALSE)
# }

# #' @importFrom rlang %|%
# #' @export
# plot_terrain_map <- function(tib, alpha = 1) {
#   rivers <- get_river_coordinates(tib)

#   plot_empty_map(tib) +
#     ggforce::geom_regon(aes(fill = terrain_name), alpha = alpha) +
#     ggforce::geom_regon(aes(fill = feature_name, r = xy_ratio * .9), data = tib %>% filter(feature_name == "Ice"), alpha = alpha) +
#     geom_text(aes(label = "^"), tib %>% filter(terrain_form == "Hill"), alpha = alpha) +
#     geom_text(aes(label = "^"), tib %>% filter(terrain_form == "Mountain"), fontface = "bold", alpha = alpha) +
#     geom_segment(aes(x = xa, xend = xb, y = ya, yend = yb), colour = feature_palette[["River"]], rivers, size = 1, alpha = alpha) +
#     scale_fill_manual(values = c(terrain_palette, feature_palette))
# }

# #' @export
# plot_feature_map <- function(tib) {
#   plot_terrain_map(tib, 0.3) +
#     geom_point(aes(colour = feature_name), size = point_size, tib %>% filter(!is.na(feature_name)), shape = 20) +
#     scale_colour_manual(values = feature_palette)
# }

# #' @export
# pal_many_categories <- rep(c(
#   RColorBrewer::brewer.pal(9, "Set1"),
#   RColorBrewer::brewer.pal(8, "Set2"),
#   RColorBrewer::brewer.pal(12, "Set3"),
#   RColorBrewer::brewer.pal(8, "Pastel1"),
#   RColorBrewer::brewer.pal(8, "Pastel2"),
#   RColorBrewer::brewer.pal(8, "Dark2")
# ), 100)

# #' @export
# pal_some_categories <- c(
#   RColorBrewer::brewer.pal(8, "Dark2"),
#   RColorBrewer::brewer.pal(8, "Pastel2"),
#   RColorBrewer::brewer.pal(8, "Set2")
# )