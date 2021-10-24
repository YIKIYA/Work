/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/10/23 11:17:22                          */
/*==============================================================*/


drop table if exists ATime;

drop table if exists Note_Information;

drop table if exists Power;

drop table if exists PowerInformation;

drop table if exists User;

drop table if exists User_Information;

drop table if exists User_Study;

drop table if exists User_Submit;

drop table if exists User_Train;

drop table if exists User_Work;

/*==============================================================*/
/* Table: ATime                                                 */
/*==============================================================*/
create table ATime
(
   Year                 smallint not null,
   SBTime               date not null,
   SETime               date not null,
   ABTime               date not null,
   AETime               date not null,
   NoteTime             date not null,
   primary key (Year)
);

/*==============================================================*/
/* Table: Note_Information                                      */
/*==============================================================*/
create table Note_Information
(
   NID                  int not null,
   Information          varchar(200) not null,
   NType                smallint not null,
   primary key (NID)
);

/*==============================================================*/
/* Table: Power                                                 */
/*==============================================================*/
create table Power
(
   PID                  smallint not null,
   PName                varchar(20) not null,
   Type                 smallint not null,
   path                 varchar(20) not null,
   primary key (PName)
);

/*==============================================================*/
/* Table: PowerInformation                                      */
/*==============================================================*/
create table PowerInformation
(
   ID                   smallint not null,
   Title                varchar(20) not null,
   path                 varchar(20) not null,
   PID                  smallint not null,
   primary key (ID)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table User
(
   UserID               int not null,
   UserName             varchar(20),
   UserPWD              varchar(20),
   Type                 smallint,
   Submit               smallint,
   primary key (UserID)
);

/*==============================================================*/
/* Table: User_Information                                      */
/*==============================================================*/
create table User_Information
(
   UserID               int not null,
   Name                 varchar(15) not null,
   Sex                  varchar(4) not null,
   Nation               varchar(20) not null,
   ID                   varchar(18) not null,
   Birthday             date not null,
   Phone                varchar(13) not null,
   Email                varchar(20) not null,
   Politics             varchar(12) not null,
   JoinTime             date not null,
   PoliticsJob          varchar(15) not null,
   PartyInformation     varchar(200) not null,
   StudyInformation     varchar(200) not null,
   FLAbility            varchar(50) not null,
   Tlevel               varchar(100) not null,
   primary key (UserID)
);

/*==============================================================*/
/* Table: User_Study                                            */
/*==============================================================*/
create table User_Study
(
   UserID               int not null,
   Gtime                date not null,
   Education            varchar(20) not null,
   Degree               varchar(20) not null,
   School               varchar(20) not null,
   Major                varchar(20) not null,
   Stime                smallint not null,
   GtimeM               date not null,
   EducationM           varchar(20) not null,
   DegreeM              varchar(20) not null,
   SchoolM              varchar(20) not null,
   MajorM               varchar(20) not null,
   StimeM               smallint not null,
   primary key (UserID)
);

/*==============================================================*/
/* Table: User_Submit                                           */
/*==============================================================*/
create table User_Submit
(
   UserID               int not null,
   AType                smallint not null,
   primary key (UserID)
);

/*==============================================================*/
/* Table: User_Train                                            */
/*==============================================================*/
create table User_Train
(
   UserID               int not null,
   TrainMajor           varchar(20) not null,
   TrainProgram         varchar(20) not null,
   TrainContent         varchar(20) not null,
   TrainDate            date not null,
   TrainTime            smallint not null,
   TrainLocation        varchar(20) not null,
   primary key (UserID)
);

/*==============================================================*/
/* Table: User_Work                                             */
/*==============================================================*/
create table User_Work
(
   UserID               int not null,
   WorkName             varchar(20) not null,
   WorkTime             smallint not null,
   WorkTitle            varchar(20) not null,
   SchooleName          varchar(20) not null,
   SchooleDepartment    varchar(20) not null,
   primary key (UserID)
);

alter table User_Information add constraint FK_Reference_1 foreign key (UserID)
      references User (UserID) on delete restrict on update restrict;

alter table User_Study add constraint FK_Reference_2 foreign key (UserID)
      references User (UserID) on delete restrict on update restrict;

alter table User_Submit add constraint FK_Reference_5 foreign key (UserID)
      references User (UserID) on delete restrict on update restrict;

alter table User_Train add constraint FK_Reference_3 foreign key (UserID)
      references User (UserID) on delete restrict on update restrict;

alter table User_Work add constraint FK_Reference_4 foreign key (UserID)
      references User (UserID) on delete restrict on update restrict;

