view: sales_data {
  derived_table: {
    sql:
      SELECT
        *
      FROM
        "DATA_SETS"."Sales_Data"
      ;;
  }

  dimension: cost_of_sales {
    type: string
    label: "原価"
    sql: ${TABLE}."Cost_of_Sales" ;;
  }
  dimension: customer_id {
    type: number
    label: "顧客ID"
    sql: ${TABLE}."Customer_ID" ;;
  }
  dimension: gross_profit {
    type: string
    label: "粗利"
    sql: ${TABLE}."Gross_Profit" ;;
  }
  dimension: order_date_key {
    type: number
    label: "受付日付KEY"
    sql: ${TABLE}."Order_date_KEY" ;;
  }
  dimension: product_id {
    type: number
    label: "製品ID"
    sql: ${TABLE}."Product_ID" ;;
  }
  dimension: quantity {
    type: string
    label: "数量"
    sql: ${TABLE}."Quantity" ;;
  }
  dimension: sales {
    type: string
    label: "売上"
    sql: ${TABLE}."Sales" ;;
  }
  dimension: sales_date {
    type: string
    label: "売上日"
    sql: ${TABLE}."Sales_Date" ;;
  }
  dimension: sales_date_month{
    type: string
    label: "売上月"
    sql: DATE_TRUNC('month',TO_DATE($(TABLE)."Sales_Date",'YYYY/MM/DD')) ;;
  }
  dimension: store_id {
    type: number
    label: "店舗ID"
    sql: ${TABLE}."Store_ID" ;;
  }
  dimension: voucher_number {
    type: string
    label: "伝票番号"
    sql: ${TABLE}."Voucher_Number" ;;
  }
  dimension: sales_comparison {
    type: yesno
    sql: ${TABLE}."Sales" >= 500 ;;
  }
  measure: average_sales {
    type: average
    label: "平均売上額"
    value_format: "\"¥\"#,##0"
    sql: abs(${TABLE}."Sales") ;;
  }
  measure: sales_amount {
    type: sum
    label: "売上金額"
    sql: abs(${TABLE}."Sales") ;;
  }
  measure: count {
    type: count
  }
}
