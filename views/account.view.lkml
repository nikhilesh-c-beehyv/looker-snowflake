view: account {
  sql_table_name: "PUBLIC"."ACCOUNT"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."AccountNumber" ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}."AccountSource" ;;
  }

  dimension: active__c {
    type: string
    sql: ${TABLE}."Active__c" ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."AnnualRevenue" ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}."BillingCity" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."BillingCountry" ;;
  }

  dimension: billing_geocode_accuracy {
    type: string
    sql: ${TABLE}."BillingGeocodeAccuracy" ;;
  }

  dimension: billing_latitude {
    type: string
    sql: ${TABLE}."BillingLatitude" ;;
  }

  dimension: billing_longitude {
    type: string
    sql: ${TABLE}."BillingLongitude" ;;
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}."BillingPostalCode" ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}."BillingState" ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}."BillingStreet" ;;
  }

  dimension: clean_status {
    type: string
    sql: ${TABLE}."CleanStatus" ;;
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

  dimension: customer_priority__c {
    type: string
    sql: ${TABLE}."CustomerPriority__c" ;;
  }

  dimension: dandb_company_id {
    type: string
    sql: ${TABLE}."DandbCompanyId" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."Description" ;;
  }

  dimension: duns_number {
    type: string
    sql: ${TABLE}."DunsNumber" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."Fax" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."Industry" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}."Jigsaw" ;;
  }

  dimension: jigsaw_company_id {
    type: string
    sql: ${TABLE}."JigsawCompanyId" ;;
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

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MasterRecordId" ;;
  }

  dimension: naics_code {
    type: string
    sql: ${TABLE}."NaicsCode" ;;
  }

  dimension: naics_desc {
    type: string
    sql: ${TABLE}."NaicsDesc" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NumberOfEmployees" ;;
  }

  dimension: numberof_locations__c {
    type: string
    sql: ${TABLE}."NumberofLocations__c" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}."Ownership" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."ParentId" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."Phone" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PhotoUrl" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."Rating" ;;
  }

  dimension: segment__c {
    type: string
    sql: ${TABLE}."Segment__c" ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}."ShippingAddress" ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}."ShippingCity" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."ShippingCountry" ;;
  }

  dimension: shipping_geocode_accuracy {
    type: string
    sql: ${TABLE}."ShippingGeocodeAccuracy" ;;
  }

  dimension: shipping_latitude {
    type: string
    sql: ${TABLE}."ShippingLatitude" ;;
  }

  dimension: shipping_longitude {
    type: string
    sql: ${TABLE}."ShippingLongitude" ;;
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}."ShippingPostalCode" ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}."ShippingState" ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}."ShippingStreet" ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}."Sic" ;;
  }

  dimension: sic_desc {
    type: string
    sql: ${TABLE}."SicDesc" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}."Site" ;;
  }

  dimension: sla__c {
    type: string
    sql: ${TABLE}."SLA__c" ;;
  }

  dimension_group: slaexpiration_date__c {
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
    sql: ${TABLE}."SLAExpirationDate__c" ;;
  }

  dimension: slaserial_number__c {
    type: string
    sql: ${TABLE}."SLASerialNumber__c" ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}."SystemModstamp" ;;
  }

  dimension: ticker_symbol {
    type: string
    sql: ${TABLE}."TickerSymbol" ;;
  }

  dimension: tradestyle {
    type: string
    sql: ${TABLE}."Tradestyle" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."Type" ;;
  }

  dimension: upsell_opportunity__c {
    type: string
    sql: ${TABLE}."UpsellOpportunity__c" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."Website" ;;
  }

  dimension: year_started {
    type: string
    sql: ${TABLE}."YearStarted" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, opportunity.count, task.count]
  }
}
