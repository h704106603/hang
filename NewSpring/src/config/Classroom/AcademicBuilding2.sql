select 401，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#401'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#402'
 and t.type = 'out'
  )

union all

select 402，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#402'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#402'
 and t.type = 'out'
  )

union all

select 403，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#403'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#403'
 and t.type = 'out'
  )
  
union all 

select 404，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#404'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#404'
 and t.type = 'out'
  )

union all


select 405，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#405'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#405'
 and t.type = 'out'
  )

union all


select 406，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#406'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#406'
 and t.type = 'out'
  )

union all


select 407，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#407'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#407'
 and t.type = 'out'
  )

union all


select 408，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#408'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#408'
 and t.type = 'out'
  )

union all


select 409，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#409'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#409'
 and t.type = 'out'
  )

union all


select 410，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#410'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#410'
 and t.type = 'out'
  )

union all


select 411，count(t.studentid) from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#411'
 and t.type = 'in'
  and t.studentid not in  
(

select t.studentid from classroom t 
where time < sysdate
  and time> trunc(sysdate)
  and t.academicbuilding = '2'
  and t.classroom = '2#411'
 and t.type = 'out'
  )

