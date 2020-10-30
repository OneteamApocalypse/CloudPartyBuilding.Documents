create definer = root@`%` function getUUID(str varchar(100)) returns varchar(100)
begin
    return REPLACE(str,'-','');
end;

