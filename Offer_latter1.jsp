<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="Offer_latter1" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="OFFER_LATTER1" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforePageHtmlEscape>
    <![CDATA[#NULL#]]>
    </beforePageHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <userParameter name="PHONE" datatype="character" width="40"
     defaultWidth="0" defaultHeight="0"/>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL OFFER_LATTER.CURRENT_DATE, 
OFFER_LATTER.USERNAME, OFFER_LATTER.VILLAGE, OFFER_LATTER.PO, OFFER_LATTER.PS, 
OFFER_LATTER.DISTRICT, OFFER_LATTER.PHONE, OFFER_LATTER.EMAIL, 
OFFER_LATTER.POSITION, OFFER_LATTER.DOJ, OFFER_LATTER.PROBATION_PERIOD
FROM OFFER_LATTER
Where phone=: phone]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_CURRENT_DATE">
        <displayInfo x="1.08435" y="1.94995" width="1.83142" height="1.62695"
        />
        <dataItem name="CURRENT_DATE" datatype="date" oracleDatatype="date"
         columnOrder="12" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Current Date">
          <dataDescriptor expression="OFFER_LATTER.CURRENT_DATE"
           descriptiveExpression="CURRENT_DATE" order="1" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="USERNAME" datatype="vchar2" columnOrder="13"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Username">
          <dataDescriptor expression="OFFER_LATTER.USERNAME"
           descriptiveExpression="USERNAME" order="2" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="VILLAGE" datatype="vchar2" columnOrder="14" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Village">
          <dataDescriptor expression="OFFER_LATTER.VILLAGE"
           descriptiveExpression="VILLAGE" order="3" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PO" datatype="vchar2" columnOrder="15" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Po">
          <dataDescriptor expression="OFFER_LATTER.PO"
           descriptiveExpression="PO" order="4" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PS" datatype="vchar2" columnOrder="16" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Ps">
          <dataDescriptor expression="OFFER_LATTER.PS"
           descriptiveExpression="PS" order="5" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DISTRICT" datatype="vchar2" columnOrder="17"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="District">
          <dataDescriptor expression="OFFER_LATTER.DISTRICT"
           descriptiveExpression="DISTRICT" order="6" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PHONE1" datatype="vchar2" columnOrder="18" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Phone1">
          <dataDescriptor expression="OFFER_LATTER.PHONE"
           descriptiveExpression="PHONE" order="7" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="EMAIL" datatype="vchar2" columnOrder="19" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Email">
          <dataDescriptor expression="OFFER_LATTER.EMAIL"
           descriptiveExpression="EMAIL" order="8" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="POSITION" datatype="vchar2" columnOrder="20"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Position">
          <dataDescriptor expression="OFFER_LATTER.POSITION"
           descriptiveExpression="POSITION" order="9" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DOJ" datatype="date" oracleDatatype="date"
         columnOrder="21" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Doj">
          <dataDescriptor expression="OFFER_LATTER.DOJ"
           descriptiveExpression="DOJ" order="10" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PROBATION_PERIOD" oracleDatatype="number"
         columnOrder="22" width="22" defaultWidth="20000"
         defaultHeight="10000" columnFlags="1" defaultLabel="Probation Period">
          <dataDescriptor expression="OFFER_LATTER.PROBATION_PERIOD"
           descriptiveExpression="PROBATION_PERIOD" order="11" width="22"
           scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <repeatingFrame name="R_G_CURRENT_DATE" source="G_CURRENT_DATE"
       printDirection="down" maxRecordsPerPage="1" minWidowRecords="1"
       columnMode="no">
        <geometryInfo x="0.00000" y="0.00000" width="7.43750" height="8.18750"
        />
        <generalLayout verticalElasticity="variable"/>
        <text name="B_tbp" minWidowLines="1">
          <textSettings spacing="0"/>
          <geometryInfo x="0.00000" y="0.00000" width="7.43750"
           height="8.18750"/>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[KIAM/HRM/KML/OL-001/ 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Date: &<CURRENT_DATE> 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Mr. &<USERNAME> 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Mailing Address: Road/Village: &<VILLAGE>,  P.O.: &<PO> , 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[P.S. / Upazilla: &<PS> , District: &<DISTRICT> . 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Mobile: &<PHONE1> 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Email: &<EMAIL> 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Subject: Offer of Appointment.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Dear &<USERNAME> 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Congratulation!
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[We are pleased to inform you, the Management of the company has decided to offer you a career opportunity in Kiam Metal Industries Limited as per under noted terms & conditions:
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[1. Position              : &<POSITION> 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[2. Unit                  : Kiam Metal Industries Limited
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[3. Monthly Salary        : As per discussion, the breakup will be provided in appointment letter.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[4. Joining Date          : Up to &<DOJ> .
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[5. Probation Period      : &<PROBATION_PERIOD> Months.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[6. Working hour          : As per policy.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Please note that you will be given a detailed appointment letter on the date of joining. As per the company policy, you're expected to execute non-disclosure agreement, non-compete agreement and non-solicitation agreement on the date of joining.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[On the date of reporting you are requested to submit the following documents for our records: 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[1.	Original Documents: All-Academic Certificates, NID.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[2.	Photostat copies of all your academic certificates.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[3.	Passport-sized photographs: Four copies of yours & two copies of nominee.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[4.	NID card: Two copies of yours & two copies of the nominee.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[5.	Copy of release letter from the present employer (if applicable).
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[6.	Surety bond of taka three hundred valued stamps.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[7.	Citizenship / Chairman Certificate.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[8.	Blood group certificate.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[9.	Other documents: As per discussion.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10" bold="yes"/>
            <string>
            <![CDATA[Terms: All other terms are explained to you during interview / discussion,]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[If the above terms are agreeable to you, kindly acknowledge the same as a token of your acceptance. We have pleasure in welcoming you to our conglomerate and sincerely hope that having you on board, will be mutually beneficial.
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Yours Sincerely 
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[For Kiam Metal Industries Limited
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[Deputy Manager (HRM)
]]>
            </string>
          </textSegment>
          <textSegment>
            <font face="Courier New" size="10"/>
            <string>
            <![CDATA[
]]>
            </string>
          </textSegment>
        </text>
      </repeatingFrame>
    </body>
  </section>
  </layout>
  <reportPrivate versionFlags2="0" templateName=""/>
  <reportWebSettings>
  <![CDATA[#NULL#]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<html>

<head>
<meta name="GENERATOR" content="Oracle 11gR1 Reports Developer"/>
<title> Your Title </title>

<rw:style id="yourStyle">
   <!-- Report Wizard inserts style link clause here -->
</rw:style>

</head>


<body>

<rw:dataArea id="yourDataArea">
   <!-- Report Wizard inserts the default jsp here -->
</rw:dataArea>



</body>
</html>

<!--
</rw:report> 
-->
