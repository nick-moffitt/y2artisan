#### Add 6 Charts ####
### Description
#' Add 6 charts to PowerPoint slide
#'
#' This function adds 6 charts to a PowerPoint slide. The charts are automatically added to the last slide of the PP object in R.
#' @param name The name of the ms_chart object to be added to a new PowerPoint slide.
#' @param position Position options: "topright"; "bottomright"; "topleft"; "bottomleft"; "topcenter"; "bottomcenter". The chart layout can either be left-centerleft-centerright-right OR topleft-bottomleft-topright-bottomright.
#' @param label_first_only DEFAULT = F; Set to T when only the first charts on the left has axis labels. Changing this setting to T in this case will slightly adjut positioning for equally sized graphs
#' @keywords chart
#' @export
#' @examples
#' doc <- officer::add_slide(doc, layout = "Findings / 1 chart", master = "Office Theme")
#' doc <- add6c_y2(chart_name, 'topleft')
#' doc <- add6c_y2(chart_name, 'bottomleft')
#' doc <- add6c_y2(chart_name, 'topcenter')
#' doc <- add6c_y2(chart_name, 'bottomcenter')
#' doc <- add6c_y2(chart_name, 'topright')
#' doc <- add6c_y2(chart_name, 'bottomright')



### Function
add6c_y2 <- function(
  name,
  position,
  label_first_only = F
) {
  if(label_first_only == F){
    mschart::ph_with_chart_at(
      doc,
      chart = name,
      left = dplyr::case_when(
        position == 'topright' ~ 8.5,
        position == 'bottomright' ~ 8.5,
        position == 'topleft' ~ 0,
        position == 'bottomleft' ~ 0,
        position == 'topcenter' ~ 4.25,
        position == 'bottomcenter' ~ 4.25

      ),
      top = dplyr::case_when(
        position == 'topright' ~ 2,
        position == 'bottomright' ~ 4.25,
        position == 'topleft' ~ 2,
        position == 'bottomleft' ~ 4.25,
        position == 'topcenter' ~ 2,
        position == 'bottomcenter' ~ 4.25
      ),
      height = dplyr::case_when(
        position == 'topright' ~ 2.75,
        position == 'bottomright' ~ 2.75,
        position == 'topleft' ~ 2.75,
        position == 'bottomleft' ~ 2.75,
        position == 'topcenter' ~ 2.75,
        position == 'bottomcenter' ~ 2.75
      ),
      width = dplyr::case_when(
        position == 'topright' ~ 4.5,
        position == 'bottomright' ~ 4.5,
        position == 'topleft' ~ 4.5,
        position == 'bottomleft' ~ 4.5,
        position == 'topcenter' ~ 4.5,
        position == 'bottomcenter' ~ 4.5
      )
    ) } else{ #label_first == T
      mschart::ph_with_chart_at(
        doc,
        chart = name,
        left = dplyr::case_when(
          position == 'topright' ~ 9.5,
          position == 'bottomright' ~ 9.5,
          position == 'topleft' ~ 0,
          position == 'bottomleft' ~ 0,
          position == 'topcenter' ~ 5.875,
          position == 'bottomcenter' ~ 5.875

        ),
        top = dplyr::case_when(
          position == 'topright' ~ 2,
          position == 'bottomright' ~ 4.25,
          position == 'topleft' ~ 2,
          position == 'bottomleft' ~ 4.25,
          position == 'topcenter' ~ 2,
          position == 'bottomcenter' ~ 4.25
        ),
        height = dplyr::case_when(
          position == 'topright' ~ 2.75,
          position == 'bottomright' ~ 2.75,
          position == 'topleft' ~ 2.75,
          position == 'bottomleft' ~ 2.75,
          position == 'topcenter' ~ 2.75,
          position == 'bottomcenter' ~ 2.75
        ),
        width = dplyr::case_when(
          position == 'topright' ~ 3.75,
          position == 'bottomright' ~ 3.75,
          position == 'topleft' ~ 6,
          position == 'bottomleft' ~ 6,
          position == 'topcenter' ~ 3.75,
          position == 'bottomcenter' ~ 3.75
        )
      )
    }
}
