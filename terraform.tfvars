allData = {
  "d1" = {
    "type"                         = "baseline"
    "account_id"                   = 4000874
    "name"                         = "Alert1"
    "description"                  = "Alert condition 1"
    "enabled"                      = true
    "runbook_url"                  = "https://www.example.com"
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction" = "upper_only"
    "query" = "SELECT count(*) FROM Transaction WHERE appName = 'FoodMe'"
    "operator"              = "above"
    "threshold"             = 5.5
    "threshold_duration"    = 150
    "threshold_occurrences" = "all"
    "operatorW"              = "above"
    "thresholdW"             = 3.5
    "threshold_durationW"    = 300
    "threshold_occurrencesW" = "all"
  }

  "d2" = {
    "type"                         = "baseline"
    "account_id"                   = 4000874
    "name"                         = "Alert2"
    "description"                  = "Alert condition 2"
    "enabled"                      = true
    "runbook_url"                  = "https://www.example.com"
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction" = "upper_only"
    "query" = "SELECT count(*) FROM PageView FACET appName"
    "operator"              = "above"
    "threshold"             = 5.5
    "threshold_duration"    = 300
    "threshold_occurrences" = "all"
    "operatorW"              = "above"
    "thresholdW"             = 3.5
    "threshold_durationW"    = 600
    "threshold_occurrencesW" = "all"
  }
  
  "d3" = {
    "type"                         = "baseline"
    "account_id"                   = 4000874
    "name"                         = "Alert3"
    "description"                  = "Alert condition 3"
    "enabled"                      = true
    "runbook_url"                  = "https://www.example.com"
    "violation_time_limit_seconds" = 3600
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction" = "upper_only"
    "query" = "SELECT count(*) FROM PageView FACET appName"
    "operator"              = "above"
    "threshold"             = 5.5
    "threshold_duration"    = 180
    "threshold_occurrences" = "all"
    "operatorW"              = "above"
    "thresholdW"             = 3.5
    "threshold_durationW"    = 120
    "threshold_occurrencesW" = "all"
  }
}