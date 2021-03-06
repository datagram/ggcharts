#' importFrom ggplot2 coord_flip scale_fill_manual facet_wrap
post_process_plot <- function(plot, horizontal, facet, fill) {
  if (horizontal) {
    plot <- plot + coord_flip()
  }

  if (fill) {
    plot <- plot + scale_fill_manual(values = matplotlib_colors)
  }

  if (has_facet) {
    plot <- plot +
      facet_wrap(vars(!!facet), scales = "free_y") +
      tidytext::scale_x_reordered()
  }

  plot
}
