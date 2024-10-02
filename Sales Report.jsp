<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="Sales Report" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="SALES REPORT" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforePageHtmlEscape>
    <![CDATA[#NULL#]]>
    </beforePageHtmlEscape>
    <afterPageHtmlEscape>
    <![CDATA[<hr size=5 noshade>
]]>
    </afterPageHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html dir=&Direction>
<body bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
    <pageNavigationHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
<TITLE>Oracle HTML Navigator</TITLE>
<SCRIPT type="text/javascript" LANGUAGE = "JavaScript">

var jump_index = 1			// Jump to this page
var num_pages = &TotalPages			// Total number of pages
var basefilename = "&file_name"		// Base file name
var fileext = "&file_ext"		//File extension

/* jumps to "new_page" */
function new_page(form, new_page)
{
	form.reqpage.value = new_page;
	parent.frames[0].location = basefilename + "_" + new_page + "."+fileext;
}

/* go back one page */
function back(form)
{
	/* if we are not in first page */
	if (jump_index > 1)
	{
		jump_index--;
		new_page(form, jump_index);
	}
}

/* go forward one page */
function forward(form)
{
	/* if we are not in last page */
	if (jump_index < num_pages)
	{
		jump_index++;
		new_page(form, jump_index);
	}
}

/* go to first page */
function first(form)
{
	if(jump_index != 1)
	{
		jump_index = 1;
		new_page(form, jump_index);
	}
}

/* go to last page */
function last(form)
{
	if(jump_index != num_pages)
	{
		jump_index = num_pages;
		new_page(form, jump_index);
	}
}

/* go to the user specified page number */
function pagenum(form)
{
	/* sanity check */
	if (form.reqpage.value < 1)
	{
		form.reqpage.value = 1;
	}
	if (form.reqpage.value > num_pages)
	{
		form.reqpage.value = num_pages;
	}
	jump_index = form.reqpage.value;
	new_page(form, jump_index);
}
</SCRIPT>
</HEAD>

<BODY>
<FORM NAME="ThisForm" action="" onSubmit="pagenum(this); return false;">
<center><table><tr>
<td> <INPUT TYPE="button"  VALUE="<< " onClick="first(this.form)">
<td> <INPUT TYPE="button"  VALUE=" < " onClick="back(this.form)">
<td> <INPUT TYPE="button"  VALUE="Page:" onClick="pagenum(this.form)">
<td> <INPUT NAME="reqpage" VALUE="1" SIZE=2>
<td> <INPUT TYPE="button"  VALUE=" > " onClick="forward(this.form)">
<td> <INPUT TYPE="button"  VALUE=" >>" onClick="last(this.form)">
</table></center>
</FORM>
</body></html>]]>
    </pageNavigationHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[select distinct a.department, a.branch, sum (nvl(a.t_qty,0)), sum (nvl(a.g_total,0)) sales, sum (nvl(b.qty,0)) tar from sales a, target b
where a.department= b.department and a.branch=b.branch and a.branch='dhk.'
group by a.department, a.branch
order by a.department



]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_DEPARTMENT">
        <displayInfo x="1.04395" y="2.09583" width="1.89380" height="3.16504"
        />
        <dataItem name="DEPARTMENT" datatype="vchar2" columnOrder="11"
         width="60" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Department">
          <dataDescriptor expression="a.department"
           descriptiveExpression="DEPARTMENT" order="1" width="60"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="tar" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Tar">
          <dataDescriptor expression="sum ( nvl ( b.qty , 0 ) )"
           descriptiveExpression="TAR" order="5" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sum_nvl_a_t_qty_0_" oracleDatatype="number"
         columnOrder="13" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Sales">
          <xmlSettings xmlTag="SALES"/>
          <dataDescriptor expression="sum ( nvl ( a.t_qty , 0 ) )"
           descriptiveExpression="SUM(NVL(A.T_QTY,0))" order="3"
           oracleDatatype="number" width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sales" oracleDatatype="number" columnOrder="15"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Sales">
          <dataDescriptor expression="sum ( nvl ( a.g_total , 0 ) )"
           descriptiveExpression="SALES" order="4" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="BRANCH" datatype="vchar2" columnOrder="12" width="4"
         defaultWidth="40000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Branch">
          <dataDescriptor expression="a.branch" descriptiveExpression="BRANCH"
           order="2" width="4"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <dataSource name="Q_2">
      <select>
      <![CDATA[select distinct a.department, a.branch, sum (nvl(a.t_qty,0)), sum (nvl(a.g_total,0)) sales, sum (nvl(b.qty,0)) tar from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='CTG'
group by a.branch, a.department
order by a.department

]]>
      </select>
      <displayInfo x="4.33313" y="1.44788" width="4.06250" height="0.51038"/>
      <group name="G_department1">
        <displayInfo x="5.53931" y="2.82288" width="1.75464" height="2.65234"
        />
        <dataItem name="tar1" oracleDatatype="number" columnOrder="20"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Tar1">
          <dataDescriptor expression="sum ( nvl ( b.qty , 0 ) )"
           descriptiveExpression="TAR" order="5" width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sum_nvl_a_t_qty_0_1" oracleDatatype="number"
         columnOrder="18" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33"
         defaultLabel="Sum Nvl A T Qty 0 1">
          <dataDescriptor expression="sum ( nvl ( a.t_qty , 0 ) )"
           descriptiveExpression="SUM(NVL(A.T_QTY,0))" order="3" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sales1" oracleDatatype="number" columnOrder="19"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Sales1">
          <dataDescriptor expression="sum ( nvl ( a.g_total , 0 ) )"
           descriptiveExpression="SALES" order="4" width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="department1" datatype="vchar2" columnOrder="16"
         width="60" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Department1">
          <dataDescriptor expression="a.department"
           descriptiveExpression="DEPARTMENT" order="1" width="60"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="branch1" datatype="vchar2" columnOrder="17" width="3"
         defaultWidth="30000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Branch1">
          <dataDescriptor expression="a.branch" descriptiveExpression="BRANCH"
           order="2" width="3"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <dataSource name="Q_3">
      <select>
      <![CDATA[select distinct a.department, a.branch, sum (nvl(a.t_qty,0)), sum (nvl(a.g_total,0)) sales, sum (nvl(b.qty,0)) tar from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='khl'
group by a.branch, a.department
order by a.department

]]>
      </select>
      <displayInfo x="9.08337" y="2.47913" width="1.90625" height="0.36462"/>
      <group name="G_department2">
        <displayInfo x="9.15918" y="3.34375" width="1.75464" height="2.82324"
        />
        <dataItem name="tar2" oracleDatatype="number" columnOrder="25"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Tar2">
          <dataDescriptor expression="sum ( nvl ( b.qty , 0 ) )"
           descriptiveExpression="TAR" order="5" width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sum_nvl_a_t_qty_0_2" oracleDatatype="number"
         columnOrder="23" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="33"
         defaultLabel="Sum Nvl A T Qty 0 2">
          <dataDescriptor expression="sum ( nvl ( a.t_qty , 0 ) )"
           descriptiveExpression="SUM(NVL(A.T_QTY,0))" order="3" width="22"
           precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sales2" oracleDatatype="number" columnOrder="24"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Sales2">
          <dataDescriptor expression="sum ( nvl ( a.g_total , 0 ) )"
           descriptiveExpression="SALES" order="4" width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="department2" datatype="vchar2" columnOrder="21"
         width="60" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Department2">
          <dataDescriptor expression="a.department"
           descriptiveExpression="DEPARTMENT" order="1" width="60"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="branch2" datatype="vchar2" columnOrder="22" width="3"
         defaultWidth="30000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Branch2">
          <dataDescriptor expression="a.branch" descriptiveExpression="BRANCH"
           order="2" width="3"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <dataSource name="Q_4">
      <select>
      <![CDATA[select distinct a.department, a.branch, sum (nvl(a.t_qty,0)), sum (nvl(a.g_total,0)) sales, sum (nvl(b.qty,0)) tar from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='Cor.'
group by a.branch, a.department
order by a.department

]]>
      </select>
      <displayInfo x="2.06470" y="6.41663" width="1.81250" height="0.32983"/>
      <group name="G_department3">
        <displayInfo x="2.10803" y="7.11658" width="1.75464" height="1.11426"
        />
        <dataItem name="tar3" oracleDatatype="number" columnOrder="30"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Tar3">
          <dataDescriptor expression="sum ( nvl ( b.qty , 0 ) )"
           descriptiveExpression="TAR" order="5" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sum_nvl_a_t_qty_0_3" oracleDatatype="number"
         columnOrder="28" width="22" defaultWidth="90000"
         defaultHeight="10000" columnFlags="1"
         defaultLabel="Sum Nvl A T Qty 0 3">
          <dataDescriptor expression="sum ( nvl ( a.t_qty , 0 ) )"
           descriptiveExpression="SUM(NVL(A.T_QTY,0))" order="3"
           oracleDatatype="number" width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="sales3" oracleDatatype="number" columnOrder="29"
         width="22" defaultWidth="90000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Sales3">
          <dataDescriptor expression="sum ( nvl ( a.g_total , 0 ) )"
           descriptiveExpression="SALES" order="4" oracleDatatype="number"
           width="22" precision="38"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="department3" datatype="vchar2" columnOrder="26"
         width="60" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Department3">
          <dataDescriptor expression="a.department"
           descriptiveExpression="DEPARTMENT" order="1" width="60"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="branch3" datatype="vchar2" columnOrder="27" width="4"
         defaultWidth="40000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Branch3">
          <dataDescriptor expression="a.branch" descriptiveExpression="BRANCH"
           order="2" width="4"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <link name="L_1" parentGroup="G_DEPARTMENT" parentColumn="DEPARTMENT"
     childQuery="Q_2" childColumn="department1" condition="eq"
     sqlClause="where"/>
    <link name="L_2" parentGroup="G_DEPARTMENT" childQuery="Q_4"
     condition="eq" sqlClause="where"/>
    <link name="L_3" parentGroup="G_DEPARTMENT" parentColumn="DEPARTMENT"
     childQuery="Q_3" childColumn="department2" condition="eq"
     sqlClause="where"/>
  </data>
  <layout>
  <section name="main">
    <body width="8.50000">
      <location x="0.00000" y="0.18750"/>
      <frame name="M_G_DEPARTMENT_GRPFR">
        <geometryInfo x="0.00000" y="0.37500" width="3.50000" height="1.75000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_DEPARTMENT" source="G_DEPARTMENT"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.56250" width="3.50000"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_DEPARTMENT" source="DEPARTMENT" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="0.00000" y="0.56250" width="1.43750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_tar" source="tar" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="1.43750" y="0.56250" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sum_nvl_a_t_qty_0_" source="sum_nvl_a_t_qty_0_"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="2.12500" y="0.56250" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sales" source="sales" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="2.81250" y="0.56250" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_DEPARTMENT_HDR">
          <geometryInfo x="0.00000" y="0.37500" width="3.50000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_DEPARTMENT" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.37500" width="1.43750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Department]]>
              </string>
            </textSegment>
          </text>
          <text name="B_tar" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.43750" y="0.37500" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Tar]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sum_nvl_a_t_qty_0_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.12500" y="0.37500" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sales]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sales" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.81250" y="0.37500" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sales]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
      <frame name="M_G_department1_GRPFR">
        <geometryInfo x="3.50000" y="0.37500" width="2.56250" height="1.75000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_department1" source="G_department1"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="3.50000" y="0.56250" width="2.56250"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_tar1" source="tar1" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="3.50000" y="0.56250" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sum_nvl_a_t_qty_0_1" source="sum_nvl_a_t_qty_0_1"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="4.25000" y="0.56250" width="0.87500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sales1" source="sales1" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="5.18750" y="0.56250" width="0.87500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_department1_HDR">
          <geometryInfo x="3.50000" y="0.37500" width="2.56250"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_tar1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.50000" y="0.37500" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Tar1]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sum_nvl_a_t_qty_0_1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.25000" y="0.37500" width="0.87500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sum Nvl A T Qty 0 1]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sales1" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.18750" y="0.37500" width="0.87500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sales1]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
      <frame name="M_G_department3_GRPFR">
        <geometryInfo x="0.50000" y="2.43750" width="3.43750" height="1.75000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_department3" source="G_department3"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.68750" y="2.62500" width="3.18750"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_tar3" source="tar3" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="0.68750" y="2.62500" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sum_nvl_a_t_qty_0_3" source="sum_nvl_a_t_qty_0_3"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="1.75000" y="2.62500" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sales3" source="sales3" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="2.81250" y="2.62500" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_department3_HDR">
          <geometryInfo x="0.68750" y="2.43750" width="3.18750"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_tar3" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.68750" y="2.43750" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Tar3]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sum_nvl_a_t_qty_0_3" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.75000" y="2.43750" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sum Nvl A T Qty 0 3]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sales3" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.81250" y="2.43750" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sales3]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
      <frame name="M_G_department2_GRPFR">
        <geometryInfo x="4.18750" y="2.68750" width="2.75000" height="1.75000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_department2" source="G_department2"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="4.18750" y="2.87500" width="2.56250"
           height="0.18738"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_tar2" source="tar2" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="4.37500" y="2.87500" width="0.81250"
             height="0.18738"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sum_nvl_a_t_qty_0_2" source="sum_nvl_a_t_qty_0_2"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="5.18750" y="2.87500" width="0.81250"
             height="0.18738"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_sales2" source="sales2" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="6.00000" y="2.87500" width="0.75000"
             height="0.18738"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_department2_HDR">
          <geometryInfo x="4.18750" y="2.68762" width="2.75000"
           height="0.18738"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableHeading"/>
          <text name="B_tar2" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.43750" y="2.68762" width="0.81250"
             height="0.18738"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Tar2]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sum_nvl_a_t_qty_0_2" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.31250" y="2.68762" width="0.68750"
             height="0.18738"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sum Nvl A T Qty 0 2]]>
              </string>
            </textSegment>
          </text>
          <text name="B_sales2" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="6.00000" y="2.68762" width="0.93750"
             height="0.18738"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Sales2]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
      <text name="B_1" minWidowLines="1">
        <textSettings spacing="0"/>
        <geometryInfo x="4.12500" y="0.12500" width="0.76038" height="0.16663"
        />
        <visualSettings fillBackgroundColor="TableHeading"/>
        <textSegment>
          <font face="helvetica" size="10" bold="yes" textColor="TextColor"/>
          <string>
          <![CDATA[CTG & BOG]]>
          </string>
        </textSegment>
      </text>
      <text name="B_2" minWidowLines="1">
        <textSettings spacing="0"/>
        <geometryInfo x="1.75000" y="0.12500" width="0.76038" height="0.16663"
        />
        <visualSettings fillBackgroundColor="TableHeading"/>
        <textSegment>
          <font face="helvetica" size="10" bold="yes" textColor="TextColor"/>
          <string>
          <![CDATA[DHK & KST]]>
          </string>
        </textSegment>
      </text>
    </body>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#000000"/>
    <color index="191" displayName="TableHeading" value="#046804"/>
    <color index="192" displayName="TableCell" value="#c0d9c0"/>
    <color index="193" displayName="Totals" value="#81b381"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" versionFlags2="0"
   templateName="rwgreen"/>
  <reportWebSettings>
  <![CDATA[#NULL#]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>

<HEAD>
  <TITLE> Your Title </TITLE>
  <rw:style id="rwgreen12">
<link rel="StyleSheet" type="text/css" href="css/rwgreen.css">
</rw:style>

  <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</HEAD>

<BODY bgColor="#ffffff" link="#000000" vLink="#000000">

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ffffff" rowSpan=2 vAlign=middle width=188><IMG alt="" src="images/rwgreen_logo.gif" width="135" height="36"></TD>
    <TD bgColor="#ffffff" height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor="#ffffff" vAlign=bottom>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE bgColor="#ff0000" border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" class="OraColumnHeader">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor="#000000" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#9a9c9a" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#b3b4b3" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top">
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/green_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/green_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
      <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGDEPARTMENTGRPFR127">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBDEPARTMENT127" asArray="no"/> class="OraColumnHeader"> Department </th>
   <th <rw:id id="HBtar127" asArray="no"/> class="OraColumnHeader"> Tar </th>
   <th <rw:id id="HBsumnvlatqty0127" asArray="no"/> class="OraColumnHeader"> Sales </th>
   <th <rw:id id="HBsales127" asArray="no"/> class="OraColumnHeader"> Sales </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGDEPARTMENT1271" src="G_DEPARTMENT">
   <tr>
    <td <rw:headers id="HFDEPARTMENT127" src="HBDEPARTMENT127"/> class="OraCellText"><rw:field id="FDEPARTMENT127" src="DEPARTMENT" nullValue="&nbsp;"> F_DEPARTMENT </rw:field></td>
    <td <rw:headers id="HFtar127" src="HBtar127"/> class="OraCellNumber"><rw:field id="Ftar127" src="tar" nullValue="&nbsp;"> F_tar </rw:field></td>
    <td <rw:headers id="HFsumnvlatqty0127" src="HBsumnvlatqty0127"/> class="OraCellNumber"><rw:field id="Fsumnvlatqty0127" src="sum_nvl_a_t_qty_0_" nullValue="&nbsp;"> F_sum_nvl_a_t_qty_0_ </rw:field></td>
    <td <rw:headers id="HFsales127" src="HBsales127"/> class="OraCellNumber"><rw:field id="Fsales127" src="sales" nullValue="&nbsp;"> F_sales </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGDEPARTMENTGRPFR127" -->
<!-- End of Data Area Generated by Reports Developer -->
<!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGdepartment3GRPFR127">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBtar3127" asArray="no"/> class="OraColumnHeader"> Tar3 </th>
   <th <rw:id id="HBsumnvlatqty03127" asArray="no"/> class="OraColumnHeader"> Sum Nvl A T Qty 0 3 </th>
   <th <rw:id id="HBsales3127" asArray="no"/> class="OraColumnHeader"> Sales3 </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGdepartment31271" src="G_department3">
   <tr>
    <td <rw:headers id="HFtar3127" src="HBtar3127"/> class="OraCellNumber"><rw:field id="Ftar3127" src="tar3" nullValue="&nbsp;"> F_tar3 </rw:field></td>
    <td <rw:headers id="HFsumnvlatqty03127" src="HBsumnvlatqty03127"/> class="OraCellNumber"><rw:field id="Fsumnvlatqty03127" src="sum_nvl_a_t_qty_0_3" nullValue="&nbsp;"> F_sum_nvl_a_t_qty_0_3 </rw:field></td>
    <td <rw:headers id="HFsales3127" src="HBsales3127"/> class="OraCellNumber"><rw:field id="Fsales3127" src="sales3" nullValue="&nbsp;"> F_sales3 </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGdepartment3GRPFR127" -->
<!-- End of Data Area Generated by Reports Developer -->
<!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGdepartment1GRPFR127">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBtar1127" asArray="no"/> class="OraColumnHeader"> Tar1 </th>
   <th <rw:id id="HBsumnvlatqty01127" asArray="no"/> class="OraColumnHeader"> Sum Nvl A T Qty 0 1 </th>
   <th <rw:id id="HBsales1127" asArray="no"/> class="OraColumnHeader"> Sales1 </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGdepartment11271" src="G_department1">
   <tr>
    <td <rw:headers id="HFtar1127" src="HBtar1127"/> class="OraCellNumber"><rw:field id="Ftar1127" src="tar1" nullValue="&nbsp;"> F_tar1 </rw:field></td>
    <td <rw:headers id="HFsumnvlatqty01127" src="HBsumnvlatqty01127"/> class="OraCellNumber"><rw:field id="Fsumnvlatqty01127" src="sum_nvl_a_t_qty_0_1" nullValue="&nbsp;"> F_sum_nvl_a_t_qty_0_1 </rw:field></td>
    <td <rw:headers id="HFsales1127" src="HBsales1127"/> class="OraCellNumber"><rw:field id="Fsales1127" src="sales1" nullValue="&nbsp;"> F_sales1 </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGdepartment1GRPFR127" -->
<!-- End of Data Area Generated by Reports Developer -->
<!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGdepartment2GRPFR127">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBtar2127" asArray="no"/> class="OraColumnHeader"> Tar2 </th>
   <th <rw:id id="HBsumnvlatqty02127" asArray="no"/> class="OraColumnHeader"> Sum Nvl A T Qty 0 2 </th>
   <th <rw:id id="HBsales2127" asArray="no"/> class="OraColumnHeader"> Sales2 </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGdepartment21271" src="G_department2">
   <tr>
    <td <rw:headers id="HFtar2127" src="HBtar2127"/> class="OraCellNumber"><rw:field id="Ftar2127" src="tar2" nullValue="&nbsp;"> F_tar2 </rw:field></td>
    <td <rw:headers id="HFsumnvlatqty02127" src="HBsumnvlatqty02127"/> class="OraCellNumber"><rw:field id="Fsumnvlatqty02127" src="sum_nvl_a_t_qty_0_2" nullValue="&nbsp;"> F_sum_nvl_a_t_qty_0_2 </rw:field></td>
    <td <rw:headers id="HFsales2127" src="HBsales2127"/> class="OraCellNumber"><rw:field id="Fsales2127" src="sales2" nullValue="&nbsp;"> F_sales2 </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGdepartment2GRPFR127" -->
<!-- End of Data Area Generated by Reports Developer -->

      </DIV>
    </TD>
  </TR>
</TABLE>

<P>
  <BR>
</P>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ff0000" colSpan=2 class="OraColumnHeader"><IMG alt="" border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ffffff">&nbsp;</TD>
    <TD align=right bgColor="#ffffff">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

</BODY>

</HTML>

<!--
</rw:report>
-->
