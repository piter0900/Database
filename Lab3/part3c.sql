DROP PROCEDURE IF EXISTS transfer_funds;

DELIMITER $
CREATE procedure transfer_funds(IN fromProject INT, IN toProject INT, IN amount Double(10,2),
 OUT errorCode INT) 
BEGIN
	START TRANSACTION;
		set errorCode = 0;
        if ((select funds from Project where projID=fromProject) < amount) then set
			errorCode = 1;
		elseif ((select count(projID) from Project where projID in (fromProject,toProject)) = 0) then set errorCode = 2;
        else 
			UPDATE Project set funds= (funds - amount) where projID=fromProject;
			UPDATE Project set funds= (funds + amount) where projID=toProject;
		END IF;
	if (errorCode = 0) then
	COMMIT;
    else
    ROLLBACK;
    end if;
END	

 $
DELIMITER ;

CALL transfer_funds(123,345,100000,@errorcode);
select @errorcode;
