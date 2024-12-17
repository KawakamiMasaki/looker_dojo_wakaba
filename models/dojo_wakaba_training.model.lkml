connection: "looker_dojo_wakaba"
datagroup: dojo_wakaba_training_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dojo_wakaba_training_default_datagroup
