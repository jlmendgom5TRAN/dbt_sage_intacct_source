{% macro get_vendor_columns() %}

{% set columns = [
    {"name": "_fivetran_deleted", "datatype": "boolean"},
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "accountkey", "datatype": dbt_utils.type_int()},
    {"name": "achaccountnumber", "datatype": dbt_utils.type_string()},
    {"name": "achaccounttype", "datatype": dbt_utils.type_string()},
    {"name": "achbankroutingnumber", "datatype": dbt_utils.type_string()},
    {"name": "achenabled", "datatype": "boolean"},
    {"name": "achremittancetype", "datatype": dbt_utils.type_string()},
    {"name": "apaccount", "datatype": dbt_utils.type_int()},
    {"name": "apaccounttitle", "datatype": dbt_utils.type_string()},
    {"name": "billingtype", "datatype": dbt_utils.type_string()},
    {"name": "cf_altmed_payments", "datatype": dbt_utils.type_string()},
    {"name": "cf_ato_number", "datatype": dbt_utils.type_string()},
    {"name": "cf_billback_vendor", "datatype": "boolean"},
    {"name": "cf_duplicate", "datatype": "boolean"},
    {"name": "cf_entity_private", "datatype": dbt_utils.type_string()},
    {"name": "checkenabled", "datatype": "boolean"},
    {"name": "comments", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_contactname", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_address_2", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_mailaddress_zip", "datatype": dbt_utils.type_int()},
    {"name": "contactinfo_printas", "datatype": dbt_utils.type_string()},
    {"name": "contactinfo_visible", "datatype": "boolean"},
    {"name": "contactkey_1099", "datatype": dbt_utils.type_int()},
    {"name": "contactto_1099_companyname", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_contactname", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_mailaddress_address_2", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_mailaddress_zip", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_printas", "datatype": dbt_utils.type_string()},
    {"name": "contactto_1099_visible", "datatype": "boolean"},
    {"name": "createdby", "datatype": dbt_utils.type_int()},
    {"name": "creditlimit", "datatype": dbt_utils.type_int()},
    {"name": "displaycontact_cellphone", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_companyname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_contactname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_email_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_email_2", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_fax", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_firstname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_initial", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_lastname", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_address_2", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_mailaddress_zip", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_pager", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_phone_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_phone_2", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_prefix", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_printas", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_status", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_taxable", "datatype": "boolean"},
    {"name": "displaycontact_url_1", "datatype": dbt_utils.type_string()},
    {"name": "displaycontact_visible", "datatype": "boolean"},
    {"name": "displaycontactkey", "datatype": dbt_utils.type_int()},
    {"name": "displaytermdiscount", "datatype": "boolean"},
    {"name": "displocacctnocheck", "datatype": "boolean"},
    {"name": "donotcutcheck", "datatype": "boolean"},
    {"name": "entity", "datatype": dbt_utils.type_string()},
    {"name": "federal_tax_classification", "datatype": dbt_utils.type_string()},
    {"name": "filepaymentservice", "datatype": dbt_utils.type_string()},
    {"name": "form_1099_box", "datatype": dbt_utils.type_int()},
    {"name": "form_1099_type", "datatype": dbt_utils.type_string()},
    {"name": "glgroup", "datatype": dbt_utils.type_string()},
    {"name": "glgrpkey", "datatype": dbt_utils.type_int()},
    {"name": "isindividual", "datatype": "boolean"},
    {"name": "isowner", "datatype": "boolean"},
    {"name": "megaentityid", "datatype": dbt_utils.type_string()},
    {"name": "megaentitykey", "datatype": dbt_utils.type_int()},
    {"name": "megaentityname", "datatype": dbt_utils.type_string()},
    {"name": "mergepaymentreq", "datatype": "boolean"},
    {"name": "modifiedby", "datatype": dbt_utils.type_int()},
    {"name": "name", "datatype": dbt_utils.type_string()},
    {"name": "name_1099", "datatype": dbt_utils.type_string()},
    {"name": "objectrestriction", "datatype": dbt_utils.type_string()},
    {"name": "offsetglaccountno", "datatype": dbt_utils.type_int()},
    {"name": "offsetglaccountnotitle", "datatype": dbt_utils.type_string()},
    {"name": "onetime", "datatype": "boolean"},
    {"name": "onhold", "datatype": "boolean"},
    {"name": "parentid", "datatype": dbt_utils.type_string()},
    {"name": "parentkey", "datatype": dbt_utils.type_int()},
    {"name": "parentname", "datatype": dbt_utils.type_string()},
    {"name": "paydatevalue", "datatype": dbt_utils.type_string()},
    {"name": "paymentnotify", "datatype": "boolean"},
    {"name": "paymentpriority", "datatype": dbt_utils.type_string()},
    {"name": "paymethodkey", "datatype": dbt_utils.type_string()},
    {"name": "paymethodrec", "datatype": dbt_utils.type_int()},
    {"name": "payto_companyname", "datatype": dbt_utils.type_string()},
    {"name": "payto_contactname", "datatype": dbt_utils.type_string()},
    {"name": "payto_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "payto_mailaddress_address_2", "datatype": dbt_utils.type_string()},
    {"name": "payto_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "payto_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "payto_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "payto_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "payto_mailaddress_zip", "datatype": dbt_utils.type_string()},
    {"name": "payto_phone_1", "datatype": dbt_utils.type_string()},
    {"name": "payto_printas", "datatype": dbt_utils.type_string()},
    {"name": "payto_visible", "datatype": "boolean"},
    {"name": "paytokey", "datatype": dbt_utils.type_int()},
    {"name": "primarycontactkey", "datatype": dbt_utils.type_int()},
    {"name": "recordno", "datatype": dbt_utils.type_int()},
    {"name": "returnto_companyname", "datatype": dbt_utils.type_string()},
    {"name": "returnto_contactname", "datatype": dbt_utils.type_string()},
    {"name": "returnto_email_1", "datatype": dbt_utils.type_string()},
    {"name": "returnto_firstname", "datatype": dbt_utils.type_string()},
    {"name": "returnto_lastname", "datatype": dbt_utils.type_string()},
    {"name": "returnto_mailaddress_address_1", "datatype": dbt_utils.type_string()},
    {"name": "returnto_mailaddress_address_2", "datatype": dbt_utils.type_string()},
    {"name": "returnto_mailaddress_city", "datatype": dbt_utils.type_string()},
    {"name": "returnto_mailaddress_country", "datatype": dbt_utils.type_string()},
    {"name": "returnto_mailaddress_countrycode", "datatype": dbt_utils.type_string()},
    {"name": "returnto_mailaddress_state", "datatype": dbt_utils.type_string()},
    {"name": "returnto_mailaddress_zip", "datatype": dbt_utils.type_string()},
    {"name": "returnto_phone_1", "datatype": dbt_utils.type_string()},
    {"name": "returnto_printas", "datatype": dbt_utils.type_string()},
    {"name": "returnto_visible", "datatype": "boolean"},
    {"name": "returntokey", "datatype": dbt_utils.type_int()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "supdocid", "datatype": dbt_utils.type_string()},
    {"name": "taxid", "datatype": dbt_utils.type_string()},
    {"name": "termname", "datatype": dbt_utils.type_string()},
    {"name": "termskey", "datatype": dbt_utils.type_int()},
    {"name": "termvalue", "datatype": dbt_utils.type_string()},
    {"name": "totaldue", "datatype": dbt_utils.type_float()},
    {"name": "vendoraccountno", "datatype": dbt_utils.type_string()},
    {"name": "vendoracctnokey", "datatype": dbt_utils.type_int()},
    {"name": "vendorid", "datatype": dbt_utils.type_string()},
    {"name": "vendtype", "datatype": dbt_utils.type_string()},
    {"name": "vendtypekey", "datatype": dbt_utils.type_int()},
    {"name": "whencreated", "datatype": dbt_utils.type_timestamp()},
    {"name": "whenmodified", "datatype": dbt_utils.type_timestamp()},
    {"name": "wireenabled", "datatype": "boolean"}
] %}

{{ return(columns) }}

{% endmacro %}
