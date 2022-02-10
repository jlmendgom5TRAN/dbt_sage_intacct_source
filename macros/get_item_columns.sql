{% macro get_item_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "allow_backorder", "datatype": "boolean"},
    {"name": "allowmultipletaxgrps", "datatype": "boolean"},
    {"name": "autoprintlabel", "datatype": "boolean"},
    {"name": "baseprice", "datatype": dbt_utils.type_float()},
    {"name": "baseuom", "datatype": dbt_utils.type_string()},
    {"name": "buytoorder", "datatype": "boolean"},
    {"name": "cf_brand", "datatype": dbt_utils.type_string()},
    {"name": "cf_cost_analysis", "datatype": "boolean"},
    {"name": "cf_quantity_per_case_or_box", "datatype": dbt_utils.type_float()},
    {"name": "cf_quantity_per_pallet", "datatype": dbt_utils.type_float()},
    {"name": "cf_quantity_per_pallet_notes", "datatype": dbt_utils.type_string()},
    {"name": "cf_state_sold", "datatype": dbt_utils.type_string()},
    {"name": "cf_use", "datatype": dbt_utils.type_string()},
    {"name": "cf_verano_inventory_part", "datatype": dbt_utils.type_string()},
    {"name": "cf_verano_inventory_part_size", "datatype": dbt_utils.type_string()},
    {"name": "cndefaultbundle", "datatype": "boolean"},
    {"name": "compliantitem", "datatype": "boolean"},
    {"name": "computeforshortterm", "datatype": "boolean"},
    {"name": "cost_method", "datatype": dbt_utils.type_string()},
    {"name": "createdby", "datatype": dbt_utils.type_int()},
    {"name": "dropship", "datatype": "boolean"},
    {"name": "enablelandedcost", "datatype": "boolean"},
    {"name": "engineeringapproval", "datatype": "boolean"},
    {"name": "extended_description", "datatype": dbt_utils.type_string()},
    {"name": "giftcard", "datatype": "boolean"},
    {"name": "glgroup", "datatype": dbt_utils.type_string()},
    {"name": "glgrpkey", "datatype": dbt_utils.type_int()},
    {"name": "hasstartenddates", "datatype": "boolean"},
    {"name": "inv_precision", "datatype": dbt_utils.type_int()},
    {"name": "ionhand", "datatype": dbt_utils.type_int()},
    {"name": "ionorder", "datatype": dbt_utils.type_int()},
    {"name": "itemid", "datatype": dbt_utils.type_string()},
    {"name": "itemtype", "datatype": dbt_utils.type_string()},
    {"name": "megaentityid", "datatype": dbt_utils.type_string()},
    {"name": "megaentitykey", "datatype": dbt_utils.type_int()},
    {"name": "megaentityname", "datatype": dbt_utils.type_string()},
    {"name": "modifiedby", "datatype": dbt_utils.type_int()},
    {"name": "mrr", "datatype": "boolean"},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "po_precision", "datatype": dbt_utils.type_int()},
    {"name": "podescription", "datatype": dbt_utils.type_string()},
    {"name": "productlineid", "datatype": dbt_utils.type_string()},
    {"name": "producttype", "datatype": dbt_utils.type_string()},
    {"name": "qualitycontrolapproval", "datatype": "boolean"},
    {"name": "recordno", "datatype": dbt_utils.type_int()},
    {"name": "restricteditem", "datatype": "boolean"},
    {"name": "revprinting", "datatype": dbt_utils.type_string()},
    {"name": "safetyitem", "datatype": "boolean"},
    {"name": "salesapproval", "datatype": "boolean"},
    {"name": "sodescription", "datatype": dbt_utils.type_string()},
    {"name": "standard_cost", "datatype": dbt_utils.type_float()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "taxable", "datatype": "boolean"},
    {"name": "uom_invuomdetail_unit", "datatype": dbt_utils.type_string()},
    {"name": "uom_pouomdetail_convfactor", "datatype": dbt_utils.type_int()},
    {"name": "uom_pouomdetail_unit", "datatype": dbt_utils.type_string()},
    {"name": "uom_souomdetail_convfactor", "datatype": dbt_utils.type_int()},
    {"name": "uom_souomdetail_unit", "datatype": dbt_utils.type_string()},
    {"name": "uomgrp", "datatype": dbt_utils.type_string()},
    {"name": "uomgrpkey", "datatype": dbt_utils.type_int()},
    {"name": "upc", "datatype": dbt_utils.type_string()},
    {"name": "vsoecategory", "datatype": dbt_utils.type_string()},
    {"name": "vsoedlvrstatus", "datatype": dbt_utils.type_string()},
    {"name": "vsoerevdefstatus", "datatype": dbt_utils.type_string()},
    {"name": "webenabled", "datatype": "boolean"},
    {"name": "whencreated", "datatype": dbt_utils.type_timestamp()},
    {"name": "whenlastreceived", "datatype": "date"},
    {"name": "whenlastsold", "datatype": "date"},
    {"name": "whenmodified", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
