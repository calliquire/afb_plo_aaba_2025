#load workflowr
library("workflowr")

#start workflowr
wflow_start("~/afb_plo_aaba_2025"
            ,
            name = NULL,
            git = TRUE,
            existing = TRUE,
            overwrite = FALSE,
            change_wd = TRUE,
            disable_remote = FALSE,
            dry_run = FALSE,
            user.name = NULL,
            user.email = NULL
)

#build workflowr
wflow_build()

#publish
wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd"),
              "Publish the initial files for afb_plo_aaba_2025")

#build your first analysis
wflow_open("analysis/nhanes_exclusion_cleaning.Rmd")
