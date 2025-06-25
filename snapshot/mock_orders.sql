{% snapshot snapshot_name %}
    {{
        config(
            target_schema='schema',
            target_database='database',
            unique_key='field',
            strategy='timestamp',
            hard_deletes='new_record',
            updated_at='updated_at'
        )
    }}

    select * from {{ source('source_name', 'object_name') }}
 {% endsnapshot %}