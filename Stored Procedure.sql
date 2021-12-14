create procedure sp_view_all
AS
Select * from STUDENT
Select * from Student_log

Exec sp_view_all

**********************************************************************************************************

Create procedure sp_view_parameter @stu_roll INT AS Select * from Student where stu_roll_no = @stu_roll;

EXEC sp_view_parameter @stu_roll = 102
