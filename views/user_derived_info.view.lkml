view: user_derived_info {

    derived_table: {
      sql: select users.id as user_id,
               max(access_log.created_at)
        from customer
        left join user_profile_customer on user_profile_customer.customer_id = customer.id
        left join users on users.customer_profile_default_id = user_profile_customer.id
        left join access_log on users.id = access_log.user_id
        group by 1
         ;;
    }

    dimension: user_id {
      hidden: yes
      type: string
      sql: ${TABLE}."user_id" ;;
    }

    dimension_group: max {
      type: time
      label: "last access"
      timeframes: [
        raw,
        time,
        hour,
        date,
        week,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}."max" ;;
    }

    set: detail {
      fields: [user_id, max_time]
    }

 }
