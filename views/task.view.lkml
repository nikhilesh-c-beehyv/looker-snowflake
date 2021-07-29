view: task {
  sql_table_name: "PUBLIC"."TASK"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."AccountId" ;;
  }

  dimension_group: activity {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ActivityDate" ;;
  }

  dimension: call_disposition {
    type: string
    sql: ${TABLE}."CallDisposition" ;;
  }

  dimension: call_duration_in_seconds {
    type: number
    sql: ${TABLE}."CallDurationInSeconds" ;;
  }

  dimension: call_object {
    type: string
    sql: ${TABLE}."CallObject" ;;
  }

  dimension: call_type {
    type: string
    sql: ${TABLE}."CallType" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CreatedById" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CreatedDate" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description" ;;
  }

  dimension: is_archived {
    type: yesno
    sql: ${TABLE}."IsArchived" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IsClosed" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: is_high_priority {
    type: yesno
    sql: ${TABLE}."IsHighPriority" ;;
  }

  dimension: is_recurrence {
    type: yesno
    sql: ${TABLE}."IsRecurrence" ;;
  }

  dimension: is_reminder_set {
    type: yesno
    sql: ${TABLE}."IsReminderSet" ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LastModifiedById" ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LastModifiedDate" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."Priority" ;;
  }

  dimension: recurrence_activity_id {
    type: string
    sql: ${TABLE}."RecurrenceActivityId" ;;
  }

  dimension: recurrence_day_of_month {
    type: string
    sql: ${TABLE}."RecurrenceDayOfMonth" ;;
  }

  dimension: recurrence_day_of_week_mask {
    type: string
    sql: ${TABLE}."RecurrenceDayOfWeekMask" ;;
  }

  dimension_group: recurrence_end_date_only {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."RecurrenceEndDateOnly" ;;
  }

  dimension: recurrence_instance {
    type: string
    sql: ${TABLE}."RecurrenceInstance" ;;
  }

  dimension: recurrence_interval {
    type: string
    sql: ${TABLE}."RecurrenceInterval" ;;
  }

  dimension: recurrence_month_of_year {
    type: string
    sql: ${TABLE}."RecurrenceMonthOfYear" ;;
  }

  dimension: recurrence_regenerated_type {
    type: string
    sql: ${TABLE}."RecurrenceRegeneratedType" ;;
  }

  dimension_group: recurrence_start_date_only {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."RecurrenceStartDateOnly" ;;
  }

  dimension: recurrence_time_zone_sid_key {
    type: string
    sql: ${TABLE}."RecurrenceTimeZoneSidKey" ;;
  }

  dimension: recurrence_type {
    type: string
    sql: ${TABLE}."RecurrenceType" ;;
  }

  dimension_group: reminder_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ReminderDateTime" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."Subject" ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}."SystemModstamp" ;;
  }

  dimension: task_subtype {
    type: string
    sql: ${TABLE}."TaskSubtype" ;;
  }

  dimension: what_id {
    type: string
    sql: ${TABLE}."WhatId" ;;
  }

  dimension: who_id {
    type: string
    sql: ${TABLE}."WhoId" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.name]
  }
}
