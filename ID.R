library(DiagrammeR)

# Create a node data frame
nodes_1 <-
  create_node_df(
    n = 19,
    type =  c(rep("uncertainty",11), rep("formula", 3), "value"),
    label = c("Disturbances", "Predator Risk", "Food Nutritional Value", "Field visibility", "Distance to roost", "Food volume",
              "Field Area", "Presence of other birds/species", "Sward height", "Water surface area", "Access to water", 
              "Energy cost", "Energy gain", "Safety", "Net Energy", "Foraging site", "Roosting site", "RS Disturbances", "RS Predator risk"),
    style = "filled",
    color = "grey",
    fontsize =14,
    fontcolor =c(rep("black",11), rep("white", 3), "black", rep("black", 3), rep("black", 2)),
    fillcolor = c(rep("green",11), rep("forestgreen", 3), "turquoise", rep("yellow", 2), rep("green",2)),
    width = 1.3,
    shape = c(rep("ellipse",11), rep("ellipse", 3), "hexagon", rep("rectangle", 2), rep("ellipse", 2)),
    data = c(1))

# Inspect the `nodes_1` NDF
nodes_1


edges_1 <-
  create_edge_df(
    from = c(1,  1,  2, 4, 7, 7, 9, 7, 8, 8,  3, 6, 5, 16,  3,  6,  1, 12, 13, 11, 10, 17, 14, 18, 19, 18, 11),
    to =   c(16, 2, 16, 2, 4, 2, 4, 6, 2, 6, 16,16,16, 13, 13, 13, 12, 15, 15, 17, 19, 14, 15, 19, 17, 17, 10),
    color = "grey",
    data = c(1))

edges_1


create_graph(
    nodes_df = nodes_1,
    edges_df = edges_1) %>% 
    select_edges() %>%
    add_global_graph_attrs(
    attr = "splines",
    value = "spline",
    attr_type = "graph") %>% 
    render_graph()
