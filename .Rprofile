utils::assignInNamespace("q",
                                function(save = "no", status = 0, runLast = TRUE) {
     .Internal(quit(save, status, runLast))
}, "base")
utils::assignInNamespace("quit",
                                function(save = "no", status = 0, runLast = TRUE) {
     .Internal(quit(save, status, runLast))
 }, "base")
 
# Config for TODOR which check "TODOs" in code
options("todor_rmd" = TRUE,
        # searcher package
        searcher.launch_delay       = 0,
        searcher.use_rstudio_viewer = FALSE
        )
 
