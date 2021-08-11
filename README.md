# Monitoring
Monitoring System By Prometheus and Grafana. 
we use Below queryExporter in this sample:
https://github.com/albertodonato/query-exporter

the database we use in example called SqlServer.
In this example, we want to monitor ticket purchase orders.

To get started , Please Run Below Scripts in Sql Server Managment:
<pre><code>{
  create table dbo.BookState
(
    BookStateId int          not null PRIMARY KEY,
    Title       nvarchar(30) not null
)
go

INSERT INTO dbo.BookState (BookStateId, Title) VALUES (1, 'New');
INSERT INTO dbo.BookState (BookStateId, Title) VALUES (2, 'ReserveFailed');
INSERT INTO dbo.BookState (BookStateId, Title) VALUES (3, 'Reserved');
INSERT INTO dbo.BookState (BookStateId, Title) VALUES (4, 'IssueFailed');
INSERT INTO dbo.BookState (BookStateId, Title) VALUES (5, 'Issued');

go
create table dbo.ModuleType
(
    ModuleTypeId int          not null primary key,
    Title        nvarchar(30) not null
)

go

INSERT INTO dbo.ModuleType (ModuleTypeId, Title) VALUES (1, 'Flight');
INSERT INTO dbo.ModuleType (ModuleTypeId, Title) VALUES (2, 'Hotel');
INSERT INTO dbo.ModuleType (ModuleTypeId, Title) VALUES (3, 'Train');
INSERT INTO dbo.ModuleType (ModuleTypeId, Title) VALUES (4, 'Bus');
}</code></pre>

now run this command from project root directory:

<code>docker-compose -f "Prometheus\docker-compose.yml" up -d --build </code>

after command successfully executed.check all services are running.

at the end call below url for show dashboard in grafana.

<a href="http://localhost:3000" rel="nofollow">localhost:3000</a>
