CREATE TABLE ITEM_AVAILABILITY (
	id BIGINT GENERATED BY DEFAULT AS IDENTITY,
	available BIT DEFAULT FALSE
);

INSERT INTO ITEM_AVAILABILITY(id, available)
SELECT id, available FROM ITEM;