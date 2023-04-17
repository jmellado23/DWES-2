alter session set "_ORACLE_SCRIPT"=true;

create user 1234 identified by 1234 
default tablespace users 
temporary tablespace temp 
quota 500K on users;

grant create session to 1234;

grant create table to 1234;

