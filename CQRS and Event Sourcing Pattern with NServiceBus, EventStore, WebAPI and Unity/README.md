# CQRS and Event Sourcing Pattern with NServiceBus, EventStore, WebAPI and Unity
## Requires
- Visual Studio 2015
## License
- Apache License, Version 2.0
## Technologies
- Unity
- WebAPI
- NServiceBus
- CQRS and Event Sourcing
## Topics
- CQRQ EventSourcing - NServiceBus Unity EventStore
## Updated
- 05/21/2015
## Description

<h1>Introduction</h1>
<p>This is a simple example of how to use CQRS / EventSourcing pattern with NServiceBus, WebAPI, Unity and Event Store. &nbsp;The original solution was based on a design provided by
<a href="https://pablocastilla.wordpress.com/2014/09/22/cqrs-with-event-sourcing-using-nservicebus-event-store-elastic-search-angularjs-and-asp-net-mvc/">
Paublo Castilla</a>, so many thanks to him. It took me sometime to understand the design and patterns use.</p>
<p>The purpose of this solution is to provide a fully self documenting example. I wanted to also use Unity rather than StructureMap as a DI container for no reason other than to see if it could be done.</p>
<p>&nbsp;</p>
<h1><span>Sample</span></h1>
<p><span>Install the NServiceBus platform and EventSource database. Make sure the EventStore database is running in the console window wth the default name and password.&nbsp;</span></p>
<p>Make sure both the AddLocation and UI projects are set to start up. This is done through ConfigurationManager where Multiple Projects can be selected to start up.</p>
<p><span><br>
</span></p>
<ul>
</ul>
<h1>About the solution</h1>
<p>This solution purpose is to receive GPS positions and record them to an EventStore database using the CQRS pattern. Although the solution accepts position via REST It could be modified o receive positions in a number of ways such as messages, TCP/IP sockets
 etc.&nbsp;</p>
<p>ASP.NET SIGNAL/R could be used to notify the user of the event outcome. However, this is not the purpose of this article.</p>
<p>&nbsp;</p>
<h1>Putting the Location Data on the Bus</h1>
<p>A REST POST is received. This can be from anywhere a JavaScript client, a native mobile app, mobile web site, Microsoft Band. I used POSTMAN within Google</p>
<p>The POST data contains the location data in JSON format and is received by an MVC WebAPI method in the LocationController which is in the UI project. Once received the data from the JSON body is decoded into class instance addLocation. This is achieved using
 the <strong>[FromBody] </strong>attribute in the controller method POST using <strong>
Route(&quot;/api/Client&quot;)</strong> which is appended to <strong>RoutePrefix(&quot;Location&quot;)&nbsp;</strong></p>
<p>NServiceBus sends a message to the end point AddLocation using Bus.Send. For our example AddLocation end point is just NetServiceBus app hosted in a console windows listening for incoming messages. This project is found under the Services directory.&nbsp;</p>
<p>So the JSON data received by the POST is assigned to a new class instance called AddLocationCommand. NServiceBus then just sends a serialised instance of AddLocationCommand in it's constructor</p>
<p>&nbsp;</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="csharp">[Route(<span class="cs__string">&quot;api/Client&quot;</span>)]&nbsp;
[HttpPost]&nbsp;
<span class="cs__keyword">public</span>&nbsp;<span class="cs__keyword">void</span>&nbsp;Post([FromBody]&nbsp;AddLocationDTO&nbsp;addLocation)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LocationTracker.WebApiApplication.Bus.Send(<span class="cs__string">&quot;AddLocation&quot;</span>,&nbsp;<span class="cs__keyword">new</span>&nbsp;AddLocationCommand()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;Id&nbsp;=&nbsp;addLocation.id,&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.........&nbsp;
}</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;
<h1>Receiving the Location Data</h1>
</div>
<p>So now NServiceBus host (running in ac ommand window) receives the serialised message instance called AddLocationCommand which It &nbsp;then deserialises. &nbsp;The NServiceBus host checks for any registered classes which implement
<strong>IHandleMessages&lt;AddLocationCommand&gt;</strong>. That's right the type matches the class name received. in this case we have a class registered called
<strong>AddLocationHandler</strong> and an instance of this gets created &nbsp;and it's single method
<strong>Handler(AddLocationCommand message)</strong> is called with the deserialised contents of the message received</p>
<p>&nbsp;</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span>

<div class="preview">
<pre class="csharp"><span class="cs__keyword">public</span><span class="cs__keyword">class</span>&nbsp;AddLocationHandler&nbsp;:&nbsp;IHandleMessages&lt;AddLocationCommand&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;....&nbsp;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">public</span>&nbsp;AddLocationHandler()&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.......&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">public</span><span class="cs__keyword">void</span>&nbsp;Handle(AddLocationCommand&nbsp;message)&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{</pre>
</div>
</div>
</div>
<p>&nbsp;</p>
<h1>EventSource</h1>
<p>OK, that is basically it.</p>
<p>The next level of complexity is how we write and subscribe to the EventSource database which is handled through a generic pattern called the Composite Design Pattern in a class called EventStoreDomainRepository. This actually makes the solution for the beginner
 (i.e that was me) confusing but in terms of growing the number of aggregates (if you are big into DDD and I am not well not yet) easier.&nbsp;</p>
<p>Remember the purpose of subscribing is so when an event is written to the EventStore database an action &nbsp;can be taken.&nbsp;</p>
<p>Subscriptions could be used to update Polygot databases (SQL Server etc) to achieve a status called Eventual Consistency, send messages on the bus and whole host of other things.</p>
<p>Subscriptions are made using the EventStore.ClientAPI and can be run in a seperate process.</p>
<p>&nbsp;</p>
<h1>Solution</h1>
<p>I have gone through the solution and documented it as much as possible so it is easy to understand.</p>
