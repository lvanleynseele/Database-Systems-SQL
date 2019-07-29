Select * From L_EMP 
Natural Join L_DEPT; 


Select E.empname From L_EMP E, L_DEPT D 
Where E.deptId=D.deptId 
And D.deptname='Testing';


