DELIMITER $$
create procedure numPrimo(In num int, out num2 int)
begin
	declare x int;
	set x = num - 1;
	comeco:while x > 1 do
		if (num % x = 0) then
			set num2 = 0;
            leave comeco;
		else
			set num2 = 1;
        end if;
        set x = x - 1;
	end while;
end $$
DELIMITER ;


call numPrimo(10, @n);

select @n;
