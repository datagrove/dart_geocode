class Provider {
  var NPI; 
//  var Entity_Type_Code;
//  var Replacement_NPI;
  var EIN; //Employer Identification Number (EIN) 
  var Provider_Business_Name; //Provider Organization Name (Legal Business Name) 
  var Provider_Last_Name; //Provider Last Name (Legal Name)
  var Provider_First_Name; //Provider First Name 
//  var Provider Middle Name;
  var Provider_Name_Prefix; //Provider Name Prefix Text
//  var Provider Name Suffix Text;
  var Provider_Credential; //Provider Credential Text
//  var Provider Other Organization Name;
//  var Provider Other Organization Name Type Code;
//  var Provider Other Last Name;
//  var Provider Other First Name;
//  var Provider Other Middle Name;
//  var Provider Other Name Prefix Text;
//  var Provider Other Name Suffix Text;
//  var Provider Other Credential Text;
//  var Provider Other Last Name Type Code;
//  var Provider First Line Business Mailing Address;
//  var Provider Second Line Business Mailing Address;
//  var Provider Business Mailing Address City Name;
//  var Provider Business Mailing Address State Name;
//  var Provider Business Mailing Address Postal Code;
//  var Provider Business Mailing Address Country Code (If outside U.S.);
//  var Provider Business Mailing Address Telephone Number;
//  var Provider Business Mailing Address Fax Number;
  var Provider_Practice_Location_Address; //Provider First Line Business Location Address
  var Provider_Second_Line_Practice_Location_Address; //Provider Second Line Business Location Address 
  var Provider_Practice_City; //Provider Business Location Address City Name
  var Provider_Practice_State; //Provider Business Location Address State Name
  var Provider_Practice_Postal_Code; //Provider Business Location Address Postal Code
  var Provider_Practice_Country_Code; //Provider Business Location Address Country Code (If outside U.S.) 
//  var Provider Business Practice Location Address Telephone Number;
//  var Provider Business Practice Location Address Fax Number;
//  var Provider Enumeration Date;
//  var Last Update Date;
//  var NPI Deactivation Reason Code;
//  var NPI Deactivation Date;
//  var NPI Reactivation Date;
//  var Provider Gender Code;
//  var Authorized Official Last Name;
//  var Authorized Official First Name;
//  var Authorized Official Middle Name;
//  var Authorized Official Title or Position;
//  var Authorized Official Telephone Number;
    var Provider_Taxonomy_Code; //Healthcare Provider Taxonomy Code_1
//  var Provider License Number_1;
//  var Provider License Number State Code_1;
//  var Healthcare Provider Primary Taxonomy Switch_1;
//  var Healthcare Provider Taxonomy Code_2;
//  var Provider License Number_2;
//  var Provider License Number State Code_2;
//  var Healthcare Provider Primary Taxonomy Switch_2;
//  var Healthcare Provider Taxonomy Code_3;
//  var Provider License Number_3;
//  var Provider License Number State Code_3;
//  var Healthcare Provider Primary Taxonomy Switch_3;
//  var Healthcare Provider Taxonomy Code_4;
//  var Provider License Number_4;
//  var Provider License Number State Code_4;
//  var Healthcare Provider Primary Taxonomy Switch_4;
//  var Healthcare Provider Taxonomy Code_5;
//  var Provider License Number_5;
//  var Provider License Number State Code_5;
//  var Healthcare Provider Primary Taxonomy Switch_5;
//  var Healthcare Provider Taxonomy Code_6;
//  var Provider License Number_6;
//  var Provider License Number State Code_6;
//  var Healthcare Provider Primary Taxonomy Switch_6;
//  var Healthcare Provider Taxonomy Code_7;
//  var Provider License Number_7;
//  var Provider License Number State Code_7;
//  var Healthcare Provider Primary Taxonomy Switch_7;
//  var Healthcare Provider Taxonomy Code_8;
//  var Provider License Number_8;
//  var Provider License Number State Code_8;
//  var Healthcare Provider Primary Taxonomy Switch_8;
//  var Healthcare Provider Taxonomy Code_9;
//  var Provider License Number_9;
//  var Provider License Number State Code_9;
//  var Healthcare Provider Primary Taxonomy Switch_9;
//  var Healthcare Provider Taxonomy Code_10;
//  var Provider License Number_10;
//  var Provider License Number State Code_10;
//  var Healthcare Provider Primary Taxonomy Switch_10;
//  var Healthcare Provider Taxonomy Code_11;
//  var Provider License Number_11;
//  var Provider License Number State Code_11;
//  var Healthcare Provider Primary Taxonomy Switch_11;
//  var Healthcare Provider Taxonomy Code_12;
//  var Provider License Number_12;
//  var Provider License Number State Code_12;
//  var Healthcare Provider Primary Taxonomy Switch_12;
//  var Healthcare Provider Taxonomy Code_13;
//  var Provider License Number_13;
//  var Provider License Number State Code_13;
//  var Healthcare Provider Primary Taxonomy Switch_13;
//  var Healthcare Provider Taxonomy Code_14;
//  var Provider License Number_14;
//  var Provider License Number State Code_14;
//  var Healthcare Provider Primary Taxonomy Switch_14;
//  var Healthcare Provider Taxonomy Code_15;
//  var Provider License Number_15;
//  var Provider License Number State Code_15;
//  var Healthcare Provider Primary Taxonomy Switch_15;
//  var Other Provider Identifier_1;
//  var Other Provider Identifier Type Code_1;
//  var Other Provider Identifier State_1;
//  var Other Provider Identifier Issuer_1;
//  var Other Provider Identifier_2;
//  var Other Provider Identifier Type Code_2;
//  var Other Provider Identifier State_2;
//  var Other Provider Identifier Issuer_2;
//  var Other Provider Identifier_3;
//  var Other Provider Identifier Type Code_3;
//  var Other Provider Identifier State_3;
//  var Other Provider Identifier Issuer_3;
//  var Other Provider Identifier_4;
//  var Other Provider Identifier Type Code_4;
//  var Other Provider Identifier State_4;
//  var Other Provider Identifier Issuer_4;
//  var Other Provider Identifier_5;
//  var Other Provider Identifier Type Code_5;
//  var Other Provider Identifier State_5;
//  var Other Provider Identifier Issuer_5;
//  var Other Provider Identifier_6;
//  var Other Provider Identifier Type Code_6;
//  var Other Provider Identifier State_6;
//  var Other Provider Identifier Issuer_6;
//  var Other Provider Identifier_7;
//  var Other Provider Identifier Type Code_7;
//  var Other Provider Identifier State_7;
//  var Other Provider Identifier Issuer_7;
//  var Other Provider Identifier_8;
//  var Other Provider Identifier Type Code_8;
//  var Other Provider Identifier State_8;
//  var Other Provider Identifier Issuer_8;
//  var Other Provider Identifier_9;
//  var Other Provider Identifier Type Code_9;
//  var Other Provider Identifier State_9;
//  var Other Provider Identifier Issuer_9;
//  var Other Provider Identifier_10;
//  var Other Provider Identifier Type Code_10;
//  var Other Provider Identifier State_10;
//  var Other Provider Identifier Issuer_10;
//  var Other Provider Identifier_11;
//  var Other Provider Identifier Type Code_11;
//  var Other Provider Identifier State_11;
//  var Other Provider Identifier Issuer_11;
//  var Other Provider Identifier_12;
//  var Other Provider Identifier Type Code_12;
//  var Other Provider Identifier State_12;
//  var Other Provider Identifier Issuer_12;
//  var Other Provider Identifier_13;
//  var Other Provider Identifier Type Code_13;
//  var Other Provider Identifier State_13;
//  var Other Provider Identifier Issuer_13;
//  var Other Provider Identifier_14;
//  var Other Provider Identifier Type Code_14;
//  var Other Provider Identifier State_14;
//  var Other Provider Identifier Issuer_14;
//  var Other Provider Identifier_15;
//  var Other Provider Identifier Type Code_15;
//  var Other Provider Identifier State_15;
//  var Other Provider Identifier Issuer_15;
//  var Other Provider Identifier_16;
//  var Other Provider Identifier Type Code_16;
//  var Other Provider Identifier State_16;
//  var Other Provider Identifier Issuer_16;
//  var Other Provider Identifier_17;
//  var Other Provider Identifier Type Code_17;
//  var Other Provider Identifier State_17;
//  var Other Provider Identifier Issuer_17;
//  var Other Provider Identifier_18;
//  var Other Provider Identifier Type Code_18;
//  var Other Provider Identifier State_18;
//  var Other Provider Identifier Issuer_18;
//  var Other Provider Identifier_19;
//  var Other Provider Identifier Type Code_19;
//  var Other Provider Identifier State_19;
//  var Other Provider Identifier Issuer_19;
//  var Other Provider Identifier_20;
//  var Other Provider Identifier Type Code_20;
//  var Other Provider Identifier State_20;
//  var Other Provider Identifier Issuer_20;
//  var Other Provider Identifier_21;
//  var Other Provider Identifier Type Code_21;
//  var Other Provider Identifier State_21;
//  var Other Provider Identifier Issuer_21;
//  var Other Provider Identifier_22;
//  var Other Provider Identifier Type Code_22;
//  var Other Provider Identifier State_22;
//  var Other Provider Identifier Issuer_22;
//  var Other Provider Identifier_23;
//  var Other Provider Identifier Type Code_23;
//  var Other Provider Identifier State_23;
//  var Other Provider Identifier Issuer_23;
//  var Other Provider Identifier_24;
//  var Other Provider Identifier Type Code_24;
//  var Other Provider Identifier State_24;
//  var Other Provider Identifier Issuer_24;
//  var Other Provider Identifier_25;
//  var Other Provider Identifier Type Code_25;
//  var Other Provider Identifier State_25;
//  var Other Provider Identifier Issuer_25;
//  var Other Provider Identifier_26;
//  var Other Provider Identifier Type Code_26;
//  var Other Provider Identifier State_26;
//  var Other Provider Identifier Issuer_26;
//  var Other Provider Identifier_27;
//  var Other Provider Identifier Type Code_27;
//  var Other Provider Identifier State_27;
//  var Other Provider Identifier Issuer_27;
//  var Other Provider Identifier_28;
//  var Other Provider Identifier Type Code_28;
//  var Other Provider Identifier State_28;
//  var Other Provider Identifier Issuer_28;
//  var Other Provider Identifier_29;
//  var Other Provider Identifier Type Code_29;
//  var Other Provider Identifier State_29;
//  var Other Provider Identifier Issuer_29;
//  var Other Provider Identifier_30;
//  var Other Provider Identifier Type Code_30;
//  var Other Provider Identifier State_30;
//  var Other Provider Identifier Issuer_30;
//  var Other Provider Identifier_31;
//  var Other Provider Identifier Type Code_31;
//  var Other Provider Identifier State_31;
//  var Other Provider Identifier Issuer_31;
//  var Other Provider Identifier_32;
//  var Other Provider Identifier Type Code_32;
//  var Other Provider Identifier State_32;
//  var Other Provider Identifier Issuer_32;
//  var Other Provider Identifier_33;
//  var Other Provider Identifier Type Code_33;
//  var Other Provider Identifier State_33;
//  var Other Provider Identifier Issuer_33;
//  var Other Provider Identifier_34;
//  var Other Provider Identifier Type Code_34;
//  var Other Provider Identifier State_34;
//  var Other Provider Identifier Issuer_34;
//  var Other Provider Identifier_35;
//  var Other Provider Identifier Type Code_35;
//  var Other Provider Identifier State_35;
//  var Other Provider Identifier Issuer_35;
//  var Other Provider Identifier_36;
//  var Other Provider Identifier Type Code_36;
//  var Other Provider Identifier State_36;
//  var Other Provider Identifier Issuer_36;
//  var Other Provider Identifier_37;
//  var Other Provider Identifier Type Code_37;
//  var Other Provider Identifier State_37;
//  var Other Provider Identifier Issuer_37;
//  var Other Provider Identifier_38;
//  var Other Provider Identifier Type Code_38;
//  var Other Provider Identifier State_38;
//  var Other Provider Identifier Issuer_38;
//  var Other Provider Identifier_39;
//  var Other Provider Identifier Type Code_39;
//  var Other Provider Identifier State_39;
//  var Other Provider Identifier Issuer_39;
//  var Other Provider Identifier_40;
//  var Other Provider Identifier Type Code_40;
//  var Other Provider Identifier State_40;
//  var Other Provider Identifier Issuer_40;
//  var Other Provider Identifier_41;
//  var Other Provider Identifier Type Code_41;
//  var Other Provider Identifier State_41;
//  var Other Provider Identifier Issuer_41;
//  var Other Provider Identifier_42;
//  var Other Provider Identifier Type Code_42;
//  var Other Provider Identifier State_42;
//  var Other Provider Identifier Issuer_42;
//  var Other Provider Identifier_43;
//  var Other Provider Identifier Type Code_43;
//  var Other Provider Identifier State_43;
//  var Other Provider Identifier Issuer_43;
//  var Other Provider Identifier_44;
//  var Other Provider Identifier Type Code_44;
//  var Other Provider Identifier State_44;
//  var Other Provider Identifier Issuer_44;
//  var Other Provider Identifier_45;
//  var Other Provider Identifier Type Code_45;
//  var Other Provider Identifier State_45;
//  var Other Provider Identifier Issuer_45;
//  var Other Provider Identifier_46;
//  var Other Provider Identifier Type Code_46;
//  var Other Provider Identifier State_46;
//  var Other Provider Identifier Issuer_46;
//  var Other Provider Identifier_47;
//  var Other Provider Identifier Type Code_47;
//  var Other Provider Identifier State_47;
//  var Other Provider Identifier Issuer_47;
//  var Other Provider Identifier_48;
//  var Other Provider Identifier Type Code_48;
//  var Other Provider Identifier State_48;
//  var Other Provider Identifier Issuer_48;
//  var Other Provider Identifier_49;
//  var Other Provider Identifier Type Code_49;
//  var Other Provider Identifier State_49;
//  var Other Provider Identifier Issuer_49;
//  var Other Provider Identifier_50;
//  var Other Provider Identifier Type Code_50;
//  var Other Provider Identifier State_50;
//  var Other Provider Identifier Issuer_50;
//  var Is Sole Proprietor;
//  var Is Organization Subpart;
//  var Parent Organization LBN;
//  var Parent Organization TIN;
//  var Authorized Official Name Prefix Text;
//  var Authorized Official Name Suffix Text;
//  var Authorized Official Credential Text;
//  var Healthcare Provider Taxonomy Group_1;
//  var Healthcare Provider Taxonomy Group_2;
//  var Healthcare Provider Taxonomy Group_3;
//  var Healthcare Provider Taxonomy Group_4;
//  var Healthcare Provider Taxonomy Group_5;
//  var Healthcare Provider Taxonomy Group_6;
//  var Healthcare Provider Taxonomy Group_7;
//  var Healthcare Provider Taxonomy Group_8;
//  var Healthcare Provider Taxonomy Group_9;
//  var Healthcare Provider Taxonomy Group_10;
//  var Healthcare Provider Taxonomy Group_11;
//  var Healthcare Provider Taxonomy Group_12;
//  var Healthcare Provider Taxonomy Group_13;
//  var Healthcare Provider Taxonomy Group_14;
//  var Healthcare Provider Taxonomy Group_15;
//  var Certification Date;

/*
Provider({
  this.NPI
  this.EIN
  this.Provider_Business_Name
  this.Provider_Practice_Location_Address;
  this.Provider_Second_Line_Practice_Location_Address;
  this.Provider_Practice_City;
  this.Provider_Practice_State;
  this.Provider_Practice_Postal_Code;
  this.Provider_Taxonomy_Code
});
*/

//Method to convert Provider to Map
Map<String, dynamic> toMap() => {
  'NPI': NPI,
  'EIN': EIN,
  'Business Name': Provider_Business_Name,
  'First Name': Provider_First_Name,
  'Last Name': Provider_Last_Name,
  'Name Prefix': Provider_Name_Prefix,
  'Credential': Provider_Credential,
  'Provider Address': Provider_Practice_Location_Address,
  'Provider Address 2': Provider_Second_Line_Practice_Location_Address,
  'Provider City': Provider_Practice_City,
  'Provider State': Provider_Practice_State,
  'Provider Zip': Provider_Practice_Postal_Code,
  'Provider Type': Provider_Taxonomy_Code,
};

}