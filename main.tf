resource "newrelic_alert_policy" "newPilicy" {
  name = "newPilicy"
}

resource "newrelic_nrql_alert_condition" "newAlertPilicy" {
  for_each = var.allData
  type                         = each.value.type
  account_id                   = each.value.account_id
  name                         = each.value.name
  policy_id                    = newrelic_alert_policy.newPilicy.id
  description                  = each.value.description
  enabled                      = each.value.enabled
  runbook_url                  = each.value.runbook_url
  violation_time_limit_seconds = each.value.violation_time_limit_seconds
  aggregation_method           = each.value.aggregation_method
  aggregation_delay            = each.value.aggregation_delay
  slide_by                     = each.value.slide_by

  # baseline type only
  baseline_direction = each.value.baseline_direction

  nrql {
    query = each.value.query
  }

  critical {
    operator              = each.value.operator
    threshold             = each.value.threshold
    threshold_duration    = each.value.threshold_duration
    threshold_occurrences = each.value.threshold_occurrences
  }

  warning {
    operator              = each.value.operatorW
    threshold             = each.value.thresholdW
    threshold_duration    = each.value.threshold_durationW
    threshold_occurrences = each.value.threshold_occurrencesW
  }
}