<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/?keyword=default -->
<sql>
<datatypes db="mysql">
<group color="rgb(238,238,170)" label="Numeric">
<type label="Integer" quote="" sql="INTEGER" length="0"/>
<type label="TINYINT" quote="" sql="TINYINT" length="0"/>
<type label="SMALLINT" quote="" sql="SMALLINT" length="0"/>
<type label="MEDIUMINT" quote="" sql="MEDIUMINT" length="0"/>
<type label="INT" quote="" sql="INT" length="0"/>
<type label="BIGINT" quote="" sql="BIGINT" length="0"/>
<type label="Decimal" quote="" sql="DECIMAL" length="1" re="DEC"/>
<type label="Single precision" quote="" sql="FLOAT" length="0"/>
<type label="Double precision" quote="" sql="DOUBLE" length="0" re="DOUBLE"/>
</group>

<group color="rgb(255,200,200)" label="Character">
<type label="Char" quote="'" sql="CHAR" length="1"/>
<type label="Varchar" quote="'" sql="VARCHAR" length="1"/>
<type label="Text" quote="'" sql="MEDIUMTEXT" length="0" re="TEXT"/>
<type label="Binary" quote="'" sql="BINARY" length="1"/>
<type label="Varbinary" quote="'" sql="VARBINARY" length="1"/>
<type label="BLOB" quote="'" sql="BLOB" length="0" re="BLOB"/>
</group>

<group color="rgb(200,255,200)" label="Date &amp; Time">
<type label="Date" quote="'" sql="DATE" length="0"/>
<type label="Time" quote="'" sql="TIME" length="0"/>
<type label="Datetime" quote="'" sql="DATETIME" length="0"/>
<type label="Year" quote="" sql="YEAR" length="0"/>
<type label="Timestamp" quote="'" sql="TIMESTAMP" length="0"/>
</group>

<group color="rgb(200,200,255)" label="Miscellaneous">
<type label="ENUM" quote="" sql="ENUM" length="1"/>
<type label="SET" quote="" sql="SET" length="1"/>
<type label="Bit" quote="" sql="bit" length="0"/>
</group>
</datatypes><table x="149" y="202" name="users">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="first_name" null="1" autoincrement="0">
<datatype>CHAR</datatype>
<default>NULL</default></row>
<row name="last_name" null="1" autoincrement="0">
<datatype>CHAR</datatype>
<default>NULL</default></row>
<row name="email" null="1" autoincrement="0">
<datatype>CHAR</datatype>
<default>NULL</default></row>
<row name="password" null="1" autoincrement="0">
<datatype>CHAR</datatype>
<default>NULL</default></row>
<row name="date_created" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<row name="date_updated" null="1" autoincrement="0">
<datatype>DATETIME</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="556" y="164" name="questions">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="question" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="365" y="146" name="queries">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="users" row="id" />
</row>
<row name="question_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="questions" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="806" y="241" name="answers">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="answer" null="1" autoincrement="0">
<datatype>MEDIUMTEXT</datatype>
<default>NULL</default></row>
<row name="question_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="questions" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="436" y="334" name="replies">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="user_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="users" row="id" />
</row>
<row name="answer_id" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="answers" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>