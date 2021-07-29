view: opportunity {
  sql_table_name: "PUBLIC"."OPPORTUNITY"
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

  dimension: amount {
    type: number
    sql: ${TABLE}."Amount" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."CampaignId" ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}."CloseDate" ;;
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

  dimension: current_generators__c {
    type: string
    sql: ${TABLE}."CurrentGenerators__c" ;;
  }

  dimension: delivery_installation_status__c {
    type: string
    sql: ${TABLE}."DeliveryInstallationStatus__c" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description" ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}."ExpectedRevenue" ;;
  }

  dimension: fiscal {
    type: string
    sql: ${TABLE}."Fiscal" ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}."FiscalQuarter" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FiscalYear" ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}."ForecastCategory" ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}."ForecastCategoryName" ;;
  }

  dimension: has_open_activity {
    type: yesno
    sql: ${TABLE}."HasOpenActivity" ;;
  }

  dimension: has_opportunity_line_item {
    type: yesno
    sql: ${TABLE}."HasOpportunityLineItem" ;;
  }

  dimension: has_overdue_task {
    type: yesno
    sql: ${TABLE}."HasOverdueTask" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IsClosed" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}."IsPrivate" ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}."IsWon" ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}."LastActivityDate" ;;
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

  dimension_group: last_referenced {
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
    sql: ${TABLE}."LastReferencedDate" ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}."LastViewedDate" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LeadSource" ;;
  }

  dimension: main_competitors__c {
    type: string
    sql: ${TABLE}."MainCompetitors__c" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}."NextStep" ;;
  }

  dimension: opportunity_source__c {
    type: string
    sql: ${TABLE}."Opportunity_Source__c" ;;
  }

  dimension: order_number__c {
    type: string
    sql: ${TABLE}."OrderNumber__c" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: pricebook2_id {
    type: string
    sql: ${TABLE}."Pricebook2Id" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."Probability" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RecordTypeId" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."StageName" ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}."SystemModstamp" ;;
  }

  dimension: total_opportunity_quantity {
    type: number
    sql: ${TABLE}."TotalOpportunityQuantity" ;;
  }

  dimension: tracking_number__c {
    type: string
    sql: ${TABLE}."TrackingNumber__c" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."Type" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      stage_name,
      name,
      forecast_category_name,
      account.id,
      account.name
    ]
  }
}
