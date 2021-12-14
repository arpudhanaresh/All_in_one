Create Table Student_log (Stu_roll_no Int , Action_type Varchar(30) , At_Time Datetime);

Create Trigger Student_Trigger_Insert on Student after Insert
As
Begin
	Insert into Student_log select Stu_roll_no , 'Inserted' ,GetDate() from Inserted
End

Create Trigger Student_Trigger_Update on Student after Update
As
Begin
	Insert into Student_log select Stu_roll_no , 'Updated' ,GetDate() from Inserted
End

Create Trigger Student_Trigger_Deleted on Student after Insert
As
Begin
	Insert into Student_log select Stu_roll_no , 'Deleted' ,GetDate() from Deleted
End

Insert into STUDENT values ('Devoloper5' , 'FullStack');

Update STUDENT set dept_name = 'Testing' where stu_roll_no =104;
