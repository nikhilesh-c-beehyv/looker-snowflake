view: acquiredaccount__c {
  sql_table_name: "PUBLIC"."ACQUIREDACCOUNT__C"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  dimension: acct_id__c {
    type: number
    sql: ${TABLE}."AcctId__c" ;;
  }

  dimension: billing_state__c {
    type: string
    sql: ${TABLE}."BillingState__c" ;;
  }

  dimension_group: close_date__c {
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
    sql: ${TABLE}."CloseDate__c" ;;
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

  dimension: division__c {
    type: string
    sql: ${TABLE}."Division__c" ;;
  }

  dimension: industry__c {
    type: string
    sql: ${TABLE}."Industry__c" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OwnerId" ;;
  }

  dimension: ownership__c {
    type: string
    sql: ${TABLE}."Ownership__c" ;;
  }

  dimension: rating__c {
    type: string
    sql: ${TABLE}."Rating__c" ;;
  }

  dimension_group: start_date__c {
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
    sql: ${TABLE}."StartDate__c" ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}."SystemModstamp" ;;
  }

  dimension: type__c {
    type: string
    sql: ${TABLE}."Type__c" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
