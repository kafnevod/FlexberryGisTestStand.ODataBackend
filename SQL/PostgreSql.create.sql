/****** Pre-script START ******/
CREATE TABLE LayerMetadata (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 Description TEXT NULL,

 KeyWords TEXT NULL,

 Type VARCHAR(255) NOT NULL,

 Settings TEXT NULL,

 Scale INT NULL,

 CoordinateReferenceSystem VARCHAR(255) NULL,

 BoundingBox GEOGRAPHY NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE DataLink (

 primaryKey UUID NOT NULL,

 ClearWithoutLink BOOLEAN NULL,

 LayerTable VARCHAR(255) NOT NULL,

 CreateObject BOOLEAN NULL,

 MapObjectSetting UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE LinkMetadata (

 primaryKey UUID NOT NULL,

 AllowShow BOOLEAN NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 MapObjectSetting UUID NOT NULL,

 Layer UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE MapLayer (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NULL,

 Description TEXT NULL,

 KeyWords TEXT NULL,

 Index INT NULL,

 Visibility BOOLEAN NULL,

 Type VARCHAR(255) NOT NULL,

 Settings TEXT NULL,

 Scale INT NULL,

 CoordinateReferenceSystem VARCHAR(255) NULL,

 BoundingBox GEOGRAPHY NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Parent UUID NULL,

 Map UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ParameterMetadata (

 primaryKey UUID NOT NULL,

 ObjectField VARCHAR(255) NULL,

 LayerField VARCHAR(255) NULL,

 Expression VARCHAR(255) NULL,

 QueryKey VARCHAR(255) NULL,

 LinkField BOOLEAN NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 LayerLink UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE CswConnection (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 Url VARCHAR(255) NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE MapObjectSetting (

 primaryKey UUID NOT NULL,

 TypeName VARCHAR(255) NULL,

 ListForm VARCHAR(255) NULL,

 EditForm VARCHAR(255) NULL,

 Title VARCHAR(255) NULL,

 DefaultMap UUID NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Map (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 Description TEXT NULL,

 KeyWords TEXT NULL,

 Lat DOUBLE PRECISION NULL,

 Lng DOUBLE PRECISION NULL,

 Zoom DOUBLE PRECISION NULL,

 Public BOOLEAN NOT NULL,

 Scale INT NULL,

 CoordinateReferenceSystem VARCHAR(255) NULL,

 BoundingBox GEOGRAPHY NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE LinkParameter (

 primaryKey UUID NOT NULL,

 ObjectField VARCHAR(255) NULL,

 LayerField VARCHAR(255) NULL,

 Expression VARCHAR(255) NULL,

 QueryKey VARCHAR(255) NULL,

 LinkField BOOLEAN NULL,

 LayerLink UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE DataLinkParameter (

 primaryKey UUID NOT NULL,

 ObjectField VARCHAR(255) NULL,

 LayerField VARCHAR(255) NULL,

 Expression VARCHAR(255) NULL,

 LinkField BOOLEAN NULL,

 Link UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE LayerLink (

 primaryKey UUID NOT NULL,

 AllowShow BOOLEAN NULL,

 MapObjectSetting UUID NOT NULL,

 Layer UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE DataLink ADD CONSTRAINT FK78a0f0d4fe7449c6adb2e65ca156b7e1 FOREIGN KEY (MapObjectSetting) REFERENCES MapObjectSetting;
CREATE INDEX Index08f2f1e169f94994bdd8b9a479f5f16f on DataLink (MapObjectSetting);

 ALTER TABLE LinkMetadata ADD CONSTRAINT FKc5253ab9a07049f8847a7148cf861f6e FOREIGN KEY (MapObjectSetting) REFERENCES MapObjectSetting;
CREATE INDEX Index5ebe6e2ccb344b26afb890cbc810aa28 on LinkMetadata (MapObjectSetting);

 ALTER TABLE LinkMetadata ADD CONSTRAINT FKfb4d4ed6456645daa9ad85eea8e56a12 FOREIGN KEY (Layer) REFERENCES LayerMetadata;
CREATE INDEX Indexaf0408eff47b4fe78a5c06d118ffddd5 on LinkMetadata (Layer);

 ALTER TABLE MapLayer ADD CONSTRAINT FK17993b4009364c898608d94460c7fc7a FOREIGN KEY (Parent) REFERENCES MapLayer;
CREATE INDEX Index40b7df4e3c1e4fcc827493c80321ba3c on MapLayer (Parent);

 ALTER TABLE MapLayer ADD CONSTRAINT FKf66705e299a042488d9eb89e445f3b7d FOREIGN KEY (Map) REFERENCES Map;
CREATE INDEX Index28f4a6dce95b41618a9b951421600586 on MapLayer (Map);

 ALTER TABLE ParameterMetadata ADD CONSTRAINT FK52106e23d1064fceab8ccb992b12b2a2 FOREIGN KEY (LayerLink) REFERENCES LinkMetadata;
CREATE INDEX Index4531ceb758074fa9a14b19e67f4e4c61 on ParameterMetadata (LayerLink);

 ALTER TABLE MapObjectSetting ADD CONSTRAINT FKebe14930b39d4dfe80926b825914dfb9 FOREIGN KEY (DefaultMap) REFERENCES Map;
CREATE INDEX Index08108c7be0de4e92b9c4cd1217a58b62 on MapObjectSetting (DefaultMap);

 ALTER TABLE LinkParameter ADD CONSTRAINT FK2ce9557466cc45acbda5a726f977d96e FOREIGN KEY (LayerLink) REFERENCES LayerLink;
CREATE INDEX Index960c52583a5b4c1fbae30539cf6fd74c on LinkParameter (LayerLink);

 ALTER TABLE DataLinkParameter ADD CONSTRAINT FKde0e79c2cf0b4833af007b38f075cda7 FOREIGN KEY (Link) REFERENCES DataLink;
CREATE INDEX Indexb6c3187cedd9433cae3bb0f117fed727 on DataLinkParameter (Link);

 ALTER TABLE LayerLink ADD CONSTRAINT FK3afb7e468f634c678b2f3be1cf1329bf FOREIGN KEY (MapObjectSetting) REFERENCES MapObjectSetting;
CREATE INDEX Indexe04101cdad2d4c6497cbdfbe5e67d4d5 on LayerLink (MapObjectSetting);

 ALTER TABLE LayerLink ADD CONSTRAINT FKd54fbf5a4d5249d28bc2a5ed6e217117 FOREIGN KEY (Layer) REFERENCES MapLayer;
CREATE INDEX Index532f4f30f60b46a3a4ea6ba9bdf4b3cd on LayerLink (Layer);

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK6bfc44ab17a649b9aa9d5bafc532c854 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING;

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKc1549c45172144d08cc27b0ce8a3bcc9 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING;

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK22b36c3dc6994f77a250478d0d659871 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING;

/****** Pre-script END ******/





CREATE TABLE Address (

 primaryKey UUID NOT NULL,

 Place VARCHAR(255) NULL,

 Location GEOGRAPHY NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Request (

 primaryKey UUID NOT NULL,

 Date TIMESTAMP(3) NULL,

 Urgently BOOLEAN NULL,

 Task VARCHAR(255) NULL,

 Author UUID NOT NULL,

 Address UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Comment (

 primaryKey UUID NOT NULL,

 Text VARCHAR(255) NULL,

 Type VARCHAR(12) NULL,

 Request UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Author (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NULL,

 Phone BIGINT NULL,

 Email VARCHAR(255) NULL,

 Birthday TIMESTAMP(3) NULL,

 Gender VARCHAR(7) NULL,

 Vip BOOLEAN NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE Request ADD CONSTRAINT FKe66df4a9ae2849c58aec3913a3078ee8 FOREIGN KEY (Author) REFERENCES Author; 
CREATE INDEX Indexf3dd8afeaa8e44cfa675f71627a80ef7 on Request (Author); 

 ALTER TABLE Request ADD CONSTRAINT FK1f0fc23ceedf49958d477d4116d87b3a FOREIGN KEY (Address) REFERENCES Address; 
CREATE INDEX Index7d46247e723a41f4a468fd14637c1a18 on Request (Address); 

 ALTER TABLE Comment ADD CONSTRAINT FK104b9e95fa6e43fe88e9793389068bb5 FOREIGN KEY (Request) REFERENCES Request; 
CREATE INDEX Indexb46d91a7a4c0482c81c0901183e3ac03 on Comment (Request); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FKd4f038aceea949b8a0050870d9d51393 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKe4de9912547f452e9f8d8ccdf938e693 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKfb03aa3e4c074bbbb2d86a6f3e2c5552 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

