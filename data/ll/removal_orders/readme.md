# London Lives: St Clement Danes Removal Orders

This is a dataset of 3180 names of paupers and vagrants ordered to be removed from the parish of St Clement Danes between 1752 and 1793. The data has been created from [London Lives](http://www.londonlives.org) XML data for the [Register of Paupers Removed from the Parish (RV)](https://www.londonlives.org/static/RV.jsp) (see the link for a full description of the source). 

The dataset is intended to complement the [London Lives Pauper Examinations](http://earlymodernweb.org/londonlives/) data.

A caveat: not all names mentioned in the original orders appear in this dataset, because they were not all captured by the London Lives name tagging. (This tends to be particularly the case with dependant children and with wives.) A very small number of untagged names (where they were principal names in the order) has been added to the data. So, this dataset would not be suitable if you wanted to (let's say) count the average number of people per order, without further work to rectify the omissions. The rekeyed text of the order is included in the data in part to enable such omissions to be identified. It should also be borne in mind that the rekeying method is not as accurate as academic researchers might wish and for absolute certainty it may be necessary to refer to the images at the London Lives website.

This data is released under a Creative Commons Attribution-ShareAlike 4.0 International Licence.

[![License: CC BY-SA 4.0](https://licensebuttons.net/l/by-sa/4.0/80x15.png)](http://creativecommons.org/licenses/by-sa/4.0/)

Data tables
-------------

This is version 2 of the data (May 2017)

Changes from version 1:

* added a new summary table for orders, containing links to other orders, examinations and petitions
* minor corrections to a number of errors in the names data
* addition of removal area (city/county/country) to data

**cd_removal_orders_v2_orders.tsv**

| Field label | Description |
| ---------- | ------------ |
| uid | unique identifier for dataset |
| order_id | removal order ID  |
| img | London Lives image ID |
| doc_date | date of removal order YYYY-MM-DD |
| order_txt | rekeyed text of the order |
| to_place | place to be sent |
| to_area | city/county/country |
| vagrant | 'v' = vagrant removal order |
| link_exam_id | [LLEP](https://github.com/sharonhoward/llep) examination ID(s) linked to the order |
| link_petition_id | [LLPP](https://github.com/sharonhoward/llpp) petition image ID(s) linked to the order |
| link_rv_id | other orders linked to the order |

**cd_removal_orders_v2_names.tsv**

| Field label | Description |
| ---------- | ------------ |
| uid | unique identifier for dataset |
| name_id | London Lives name ID |
| order_id | removal order ID  |
| img | London Lives image ID |
| doc_date | date of removal order YYYY-MM-DD |
| name | name as rekeyed |
| given | given name (as rekeyed) |
| stdgiv | standardised version of given name |
| surname | surname  |
| altname | aliases, spelling variants, etc |
| gender | gender (derived from given name) |
| name_add | further information about the name |
| removed_to | place to be sent |
| removed_area | city/county/country of removal place |
| vagrant | 'v' = removed as a vagrant |
| order_txt | rekeyed text of the order |

Notes:
* there is some repetition between the two tables 
* the tables are linked on the ***order_id*** field
* added names not tagged in the LL data have the text string 'nkid' in the name_id
* the order_id is designed to enable grouping together of names in the same order
* a few document dates are approximate dates (year and month only); a very few orders did not have dates at all and month-year has been inferred from context in the volume (assuming that orders were always recorded chronologically)
* **name_add** is used mainly for two kinds of information: a) the name is of a child; b) in square brackets, to indicate a person who is mentioned but is not actually an object of the order. In most cases, this is a husband; it can generally be inferred that the husband is absent or dead, but I have also added this piece of information if the order explicitly states it. (I may remove these names entirely in a future version of this dataset.)
* **to_place/removed_to** is usually a parish; in most cases this is the text as rekeyed; there has been *no* attempt to standardise place names for georeferencing.
* **to_area/removed_area** is either a city, county or country

To link to the version on the London Lives website, you will need the **img** identifier. You can either paste it into the Reference search at the website or  construct the page URL as follows:

https://www.londonlives.org/browse.jsp?div=**{img}**
