library(REDCapR)

#Provide Project API Token
token <-
uri<- "https://redcap.doh.wa.gov/api/"

#Provide Report ID
report_id <- 

#Evaluate if all arguements are necessary
report <- redcap_report(uri, token, report_id, raw_or_label = "raw",
                        raw_or_label_headers = "raw", export_checkbox_label = FALSE, 
                        guess_type = TRUE,
                        guess_max = 1000L, verbose = TRUE)$data


record_ids <- report$record_id
redcap_delete(uri,token, record_ids)

