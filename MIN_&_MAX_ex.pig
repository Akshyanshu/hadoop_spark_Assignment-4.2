emp = load 'emp_dtls.txt' USING PigStorage(',') as (id:int, name:chararray, sal:int, deptno:int);
grp = GROUP emp by deptno;
sum_sal = foreach grp generate group, MIN(emp.sal), MAX(emp.sal);
Dump sum_sal;
