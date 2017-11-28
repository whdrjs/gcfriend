drop database sparegtime;
#--------------------------------
create database sparegtime;
#-------------------------------
use sparegtime;
#------------------------------
create table category(
main varchar(15),
content varchar(15));
#------------------------------
create table contents(
content varchar(15),
name varchar(25),
star numeric(2,1),
address varchar(50),
distance INT);
#----------------------------
create table roomlist(
port int(3),
time varchar(2),
content varchar(15));
#------------------------------
insert into category
values('Dessert','Ice');
insert into category
values('Dessert','Coffee');
insert into category
values('Dessert','Bakery');
insert into category
values('Entertainment','Billard');
insert into category
values('Entertainment','Pcroom');
insert into category
values('Entertainment','Sing');
insert into category
values('Events','Event');
insert into category
values('Events','Advertise');
#--------------------------------
insert into roomlist
values(101,'09','Ice');
insert into roomlist
values(102,'10','Ice');
insert into roomlist
values(103,'11','Ice');
insert into roomlist
values(104,'12','Ice');
insert into roomlist
values(105,'13','Ice');
insert into roomlist
values(106,'14','Ice');
insert into roomlist
values(107,'15','Ice');
insert into roomlist
values(108,'16','Ice');
insert into roomlist
values(201,'09','Coffee');
insert into roomlist
values(202,'10','Coffee');
insert into roomlist
values(203,'11','Coffee');
insert into roomlist
values(204,'12','Coffee');
insert into roomlist
values(205,'13','Coffee');
insert into roomlist
values(206,'14','Coffee');
insert into roomlist
values(207,'15','Coffee');
insert into roomlist
values(208,'16','Coffee');
insert into roomlist
values(301,'09','Bakery');
insert into roomlist
values(302,'10','Bakery');
insert into roomlist
values(303,'11','Bakery');
insert into roomlist
values(304,'12','Bakery');
insert into roomlist
values(305,'13','Bakery');
insert into roomlist
values(306,'14','Bakery');
insert into roomlist
values(307,'15','Bakery');
insert into roomlist
values(308,'16','Bakery');
insert into roomlist
values(401,'09','Billard');
insert into roomlist
values(402,'10','Billard');
insert into roomlist
values(403,'11','Billard');
insert into roomlist
values(404,'12','Billard');
insert into roomlist
values(405,'13','Billard');
insert into roomlist
values(406,'14','Billard');
insert into roomlist
values(407,'15','Billard');
insert into roomlist
values(408,'16','Billard');
insert into roomlist
values(501,'09','Pcroom');
insert into roomlist
values(502,'10','Pcroom');
insert into roomlist
values(503,'11','Pcroom');
insert into roomlist
values(504,'12','Pcroom');
insert into roomlist
values(505,'13','Pcroom');
insert into roomlist
values(506,'14','Pcroom');
insert into roomlist
values(507,'15','Pcroom');
insert into roomlist
values(508,'16','Pcroom');
insert into roomlist
values(601,'09','Sing');
insert into roomlist
values(602,'10','Sing');
insert into roomlist
values(603,'11','Sing');
insert into roomlist
values(604,'12','Sing');
insert into roomlist
values(605,'13','Sing');
insert into roomlist
values(606,'14','Sing');
insert into roomlist
values(607,'15','Sing');
insert into roomlist
values(608,'16','Sing');
insert into roomlist
values(701,'09','Event');
insert into roomlist
values(702,'10','Event');
insert into roomlist
values(703,'11','Event');
insert into roomlist
values(704,'12','Event');
insert into roomlist
values(705,'13','Event');
insert into roomlist
values(706,'14','Event');
insert into roomlist
values(707,'15','Event');
insert into roomlist
values(708,'16','Event');
#--------------------------------
insert into contents
values('Event','�������',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Event','������!!',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Event','����ã��',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Event','����',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Advertise','������ 1+1',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Advertise','�ø��꿵 50%����',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Advertise','�丶�䵵�ö� ���� size up!',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Advertise','Ediya �Ƹ޸�ī�� ����',0,'��� ������ ������ ������ 7 �·����',0);
insert into contents
values('Sing','�븮�Ϳ�����',3.0,'��� ������ ������ ������ 7 �·����',8);
insert into contents
values('Coffee','ormak coffee',3.5,'��� ������ ������ ������ 7 �·����',8);
insert into contents
values('Billiard','��õ��籸��',3.0,'��� ������ ������ ������ 7 �·����',8);
insert into contents
values('Bakery','�ѷ��긣',5.0,'��� ������ ������ ������� 1390���� 5 �������',9);
insert into contents
values('Sing','¯�뷡������',2.0,'��� ������ ������ ������ 15',10);
insert into contents
values('Pcroom','�����pc��',4.0,'��� ������ ������ ������ 711-1���� ����� pc��',10);
insert into contents
values('Coffee','Coffee Camper',4.0,'��� ������ ������ ������ 711-1����',12);
insert into contents
values('Pcroom','�ٴҶ�pc��',5.0,'��� ������ ������ ������ 21 ��Ǫ������',12);
insert into contents
values('Billiard','K2�籸Ŭ��',4.0,'��⵵ ������ ������ ������ 25-1',13);
insert into contents
values('Sing','�ζǳ뷡������',4.0,'��� ������ ������ ������ 53',15);
insert into contents
values('Sing','�ݳ뷡������',4.0,'��� ������ ������ ������ 45',15);
insert into contents
values('Coffee','The Hans',5.0,'��� ������ ������ ������ 49',18);
insert into contents
values('Pcroom','������pc��',5.0,'��⵵ ������ ������ ������ 35',18);
insert into contents
values('Billiard','�¾�籸��',2.0,'��� ������ ������ ������ 57 �������',20);
insert into contents
values('Sing','���޳뷡��',3.0,'��� ������ ������ ������ 57 �������',20);
insert into contents
values('Sing','���з��뷡��',1.0,'��� ������ ������ ������ 61 ���ֺ���',22);
insert into contents
values('Sing','����Ʈ���뷡��',1.0,'��� ������ ������ ������ 63',22);
insert into contents
values('Pcroom','�Ϳ�pc��',3.0,'��� ������ ������ ������ 63',24);
insert into contents
values('Coffee','Coffea Coffee',4.0,'��� ������ ������ ������ 65',26);
insert into contents
values('Billiard','ĳ�Ҵ籸��',2.0,'��� ������ ������ ������ 68',27);
insert into contents
values('Coffee','Ediya coffee(���������)',5.0,'��� ������ ������ ������ 68',25);
insert into contents
values('Billiard','Ȧ���籸��',2.0,'��� ������ ������ ������ 64',23);
insert into contents
values('Billiard','�����籸��',3.0,'��� ������ ������ ������ 68',21);
insert into contents
values('Sing','���ͳ뷡������',4.0,'��⵵ ������ ������ ������ 58',19);
insert into contents
values('Coffee','����ϱ��� Ŀ�Ǻ�����',5.0,'��� ������ ������ ������ 20',17);
insert into contents
values('Coffee','Cityracoon Cafe R42',5.0,'��� ������ ������ ������ 20',16);
insert into contents
values('Coffee','Joyful coffee',5.0,'��� ������ ������ ������20���� 3',14);
insert into contents
values('Sing','��ϳ뷡��',2.0,'��⵵ ������ ������ ������ 18 �������',11);
insert into contents
values('Coffee','The brown',5.0,'��� ������ ������ ������20���� 3',9);
insert into contents
values('Coffee','Sleep walk',5.0,'��� ������ ������ ������� 1334',6);
insert into contents
values('Billiard','����籸��',3.0,'��� ������ ������ ������� 1334',6);
insert into contents
values('Billiard','���ɴ籸��',3.0,'��� ������ ������ ������� 1334',6);
insert into contents
values('Sing','����뷡��',3.0,'��� ������ ������ ������� 1334',6);
insert into contents
values('Coffee','Ediya coffee(��õ����)','��� ������ ������ ������� 1334',5);
insert into contents
values('Coffee','�����',5.0,'��� ������ ������ ������� 1334',5);
insert into contents
values('Coffee','Ŀ�Ǹ�',4.0,'��� ������ ������ ������� 1334',5);
insert into contents
values('Coffee','Dr.juice',3.0,'��⵵ ������ ������ ������� 1330',4);
insert into contents
values('Coffee','���ٹ�',5.0,'��� ������ ������ ������� 1330',3);
insert into contents
values('Coffee','Gong cha',5.0,'��� ������ ������ ������� 1330',2);
insert into contents
values('Coffee','Mammoth coffee',5.0,'��� ������ ������ ������� 1330',1);
insert into contents
values('Billiard','��ī���� �籸��',4.0,'��� ������ ������ ������� 1332 ��������',0);
insert into contents
values('Ice','����',5.0,'��� ������ ������ ������� 1332 ��������',0);
insert into contents
values('Ice','Ediya coffee(���������)',5.0,'��� ������ ������ ������ 68',25);
insert into contents
values('Ice','Ediya coffee(��õ����)',5.0,'��� ������ ������ ������� 1334',5);
insert into contents
values('Bakery','The brown',5.0,'��� ������ ������ ������20���� 3',9);
insert into contents
values('Bakery','Cityracoon Cafe R42',5.0,'��� ������ ������ ������ 20',16);
insert into contents
values('Bakery','Gong cha',5.0,'��� ������ ������ ������� 1330',2);
insert into contents
values('Ice','���ٹ�',5.0,'��� ������ ������ ������� 1330',3);
insert into contents
values('Coffee','Cafero',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Coffee','�����÷��̽�',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Bakery','�����÷��̽�',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Ice','�����÷��̽�',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Bakery','��Ų����',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Coffee','Caffe-pascucci',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Ice','Caffe-pascucci',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Bakery','ormak coffee',5.0,'��� ������ ������ ������ 7 �·����',8);
insert into contents
values('Billiard','ť�籸��',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Ice','Joyful coffee',5.0,'��� ������ ������ ������20���� 3',10);
insert into contents
values('Bakery','Joyful coffee',5.0,'��� ������ ������ ������20���� 3',14);
insert into contents
values('Bakery','����ϱ��� Ŀ�Ǻ�����',3.0,'��⵵ ������ ������ ������32���� 1',17);
insert into contents
values('Bakery','The Hans',5.0,'��� ������ ������ ������ 49',18);
insert into contents
values('Bakery','Coffea Coffee',5.0,'��� ������ ������ ������ 65',26);
insert into contents
values('Bakery','Caffe-pascucci',5.0,'��� ������ ������ ������� 1342',7);
insert into contents
values('Bakery','�ĸ��ٰ�Ʈ',5.0,'��� ������ ������ ������� 1342',7);