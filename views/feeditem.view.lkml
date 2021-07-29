view: feeditem {
  sql_table_name: "PUBLIC"."FEEDITEM"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Id" ;;
  }

  dimension: best_comment_id {
    type: string
    sql: ${TABLE}."BestCommentId" ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}."Body" ;;
  }

  dimension: comment_count {
    type: number
    sql: ${TABLE}."CommentCount" ;;
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

  dimension: has_content {
    type: yesno
    sql: ${TABLE}."HasContent" ;;
  }

  dimension: has_feed_entity {
    type: yesno
    sql: ${TABLE}."HasFeedEntity" ;;
  }

  dimension: has_link {
    type: yesno
    sql: ${TABLE}."HasLink" ;;
  }

  dimension: has_verified_comment {
    type: yesno
    sql: ${TABLE}."HasVerifiedComment" ;;
  }

  dimension: inserted_by_id {
    type: string
    sql: ${TABLE}."InsertedById" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IsDeleted" ;;
  }

  dimension: is_rich_text {
    type: yesno
    sql: ${TABLE}."IsRichText" ;;
  }

  dimension: last_edit_by_id {
    type: string
    sql: ${TABLE}."LastEditById" ;;
  }

  dimension_group: last_edit {
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
    sql: ${TABLE}."LastEditDate" ;;
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

  dimension: like_count {
    type: number
    sql: ${TABLE}."LikeCount" ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}."LinkUrl" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."ParentId" ;;
  }

  dimension: related_record_id {
    type: string
    sql: ${TABLE}."RelatedRecordId" ;;
  }

  dimension: revision {
    type: number
    sql: ${TABLE}."Revision" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."Status" ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}."SystemModstamp" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."Title" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."Type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
