select 401，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#401'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#401'
 and t.type = 'out'
  )

union all

select 402，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#402'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#402'
 and t.type = 'out'
  )

union all

select 403，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#403'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#403'
 and t.type = 'out'
  )
  
union all 

select 404，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#404'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#404'
 and t.type = 'out'
  )

union all


select 405，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#405'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#405'
 and t.type = 'out'
  )

union all


select 406，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#406'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#406'
 and t.type = 'out'
  )

union all


select 407，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#407'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#407'
 and t.type = 'out'
  )

union all


select 408，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#408'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#408'
 and t.type = 'out'
  )

union all


select 409，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#409'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#409'
 and t.type = 'out'
  )

union all


select 410，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#410'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#410'
 and t.type = 'out'
  )

union all


select 411，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#411'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '1'
  and t.classroom = '1#411'
 and t.type = 'out'
  )

