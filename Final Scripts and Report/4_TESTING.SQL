SET SERVEROUTPUT ON;

BEGIN

--CUSTOMER_LOGIN('FIRST NAME','LAST NAME','M/F','EMAIL ID',CONTACTNO(10),SSN(9),'CASUAL'/'REGISTERED','DOB');
MHATREA.PKG_CUSTOMER.CUSTOMER_LOGIN('ASHISH','MHATRE','M','ASHISHMHATRE@GMAIL.COM',1234567890,123456789,'REGISTERED','05-AUG-1996');
---SELECT * FROM MHATREA.CUSTOMER;

END;
/


BEGIN

--CUSTOMER_ADDRESS_ENTER('LINE1','LINE2','CITY','STATE','TYPE',CUSTOMER_ID,'INSERT/UPDATE');
MHATREA.PKG_CUSTOMER.CUSTOMER_ADDRESS_ENTER('881 HUNTINGTON AVE','APT 7','BOSTON','MA','02115','HOME',1100,'INSERT');
--SELECT * FROM MHATREA.CUSTOMER_ADDRESS;

END;
/


BEGIN
--BOOK_RIDE(CUSTOMER_ID,5);
MHATREA.PKG_BOOKING.BOOK_RIDE(1005,5);
--SELECT * FROM MHATREA.PAYMENT;

END;
/


BEGIN 
--SELECT * FROM MHATREA.BIKE_AT_STATION;

--ENTER_RIDE_DETAILS(CUSTOMER_ID,PAYMENT_ID,STATION_ID,BIKE_ID);
MHATREA.PKG_BOOKING.ENTER_RIDE_DETAILS(1005,5051,9002,5);
--SELECT * FROM MHATREA.RIDE_TRANSACTION;

END;
/


BEGIN

--AUTHENTICATE(CUSTOMER_ID,OTP,RIDE_TRANSACTION_ID);
MHATREA.PKG_RIDE_AUTHENTICATE.AUTHENTICATE(1005,63776,51);

END;
/


BEGIN

--COMPLETE_RIDE(CUSTOMER_ID,RIDE_TRANSACTION_ID,DROP STN ID, BIKE ID);
MHATREA.PKG_BOOKING.COMPLETE_RIDE(1005,51,9002,5);
--SELECT * FROM MHATREA.RIDE_TRANSACTION;
-- SELECT * FROM MHATREA.PAYMENT;
END;
/

--CUSTOMER OFFBOARDING
BEGIN 
--CUSTOMER OFFBOARDING PROCEDURE
MHATREA.PKG_CUSTOMER.CUST_OFFBOARDING(1033);
--SELECT * FROM MHATREA.RIDE_TRANSACTION_ARCHIVE;
END;

