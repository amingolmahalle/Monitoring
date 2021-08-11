# Monitoring
Monitoring System By Prometheus and Grafana. 

we use Below queryExporter in this sample:
https://github.com/albertodonato/query-exporter

the database we use in example called <b>SqlServer</b>.
In this example, we want to monitor <b>ticket purchase orders</b>.

To get started , Please Run Below Scripts in <b>Sql Server Managment</b>:
<pre><code>
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
</code></pre>

now run this command from project root directory:

<code>sudo docker-compose up -d </code>

after command successfully executed.check all services are running.

<ul>
<li><a href="http://localhost:9090/" rel="nofollow">Prometheus</a>  =&gt; <a href="http://localhost:9090/" rel="nofollow">http://localhost:9090/</a></li>
<li><a href="http://localhost:3000/" rel="nofollow">Grafana</a> =&gt; <a href="http://localhost:3000/" rel="nofollow">http://localhost:3000/</a>
<ul>
<li>username: admin password: admin</li>
</ul>
</li>
<li><a href="http://localhost:9093/" rel="nofollow">Alert Manager</a> =&gt; <a href="http://localhost:9093/" rel="nofollow">http://localhost:9093/</a></li>
<li><a href="http://localhost:9100/" rel="nofollow">Node Exporter</a><a href="http://localhost:9100/" rel="nofollow">http://localhost:9100/</a> =&gt; </li>
<li><a href="http://localhost:8080/containers/" rel="nofollow">Google cAdvisor</a> =&gt; <a href="http://localhost:8080/containers/" rel="nofollow">http://localhost:8080/containers/</a></li>
</ul>

at the end call <a href="http://localhost:3000" rel="nofollow">this link</a> for show dashboard in grafana.


