create user hr1_20455619;
create user pm1_20455619;
create user sysAdm1_20455619;

grant select, update, insert, delete on y22lai.employee to 'hr1_20455619';
grant select on y22lai.Department to 'hr1_20455619';
grant select, update, insert, delete on y22lai.employee to 'pm1_20455619';
grant ALL on y22lai.* to 'sysAdm1_20455619';

