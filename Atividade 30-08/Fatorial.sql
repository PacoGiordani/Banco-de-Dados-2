DELIMITER $$
create procedure fatorial(in num int, out num2 int)
begin
declare i int;
set num2 = num;
set i = num - 1;
	while i > 0 do
		set num2 = num2 * i;
		set i = i - 1;
	end while;
end $$

DELIMITER ;

call fatorial(4, @n);

select @n;