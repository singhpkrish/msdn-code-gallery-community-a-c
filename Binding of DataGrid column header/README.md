# Binding of DataGrid column header
## Requires
- Visual Studio 2012
## License
- Apache License, Version 2.0
## Technologies
- C#
- WPF
- XAML
- Visual Basic .NET
- VB.Net
## Topics
- DataGrid
- WPF Data Binding
- DataGrid ColumnHeader
## Updated
- 01/22/2015
## Description

<h1>Introduction</h1>
<p>This sample shows how to bind dynamically DataGrid Headers of Columns.</p>
<p>The columns of DataGrid.Columns do not inherit the DataContext of the DataGrid element, so you cannot easily bind Headers with the default binding expression.</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="xaml"><span class="xaml__tag_start">&lt;DataGridTemplateColumn</span><span class="xaml__attr_name">Header</span>=<span class="xaml__attr_value">&quot;{Binding&nbsp;BindingName}&quot;</span><span class="xaml__tag_start">&gt;</span></pre>
</div>
</div>
</div>
<p class="endscriptcode">This is caused by not inheriting from FrameworkElement.</p>
<h1><span>Building the Sample</span></h1>
<p>There are no special requirements for building the sample.<em> <br>
</em></p>
<h1><span style="font-size:20px; font-weight:bold">Description</span></h1>
<p>There are several solutions to solve this problem. I will introduce to the simplest solution (in my opinion).</p>
<p>Since DataGridColumn does not inherit the DataContext of the superior element, you have to indicate the DataContext to use. This can be easily done as the following code snippet shows:</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>XAML</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">xaml</span>

<div class="preview">
<pre class="xaml"><span class="xaml__tag_start">&lt;DataGrid</span><span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;<span class="xaml__tag_start">&lt;DataGrid</span>.Columns<span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;DataGridTemplateColumn</span><span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;DataGridTemplateColumn</span>.Header<span class="xaml__tag_start">&gt;&nbsp;
</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_start">&lt;TextBlock</span>&nbsp;<span class="xaml__attr_name">Text</span>=<span class="xaml__attr_value">&quot;{Binding&nbsp;DataContext.HeaderNameText,&nbsp;RelativeSource={RelativeSource&nbsp;AncestorType={x:Type&nbsp;DataGrid}}}&quot;</span>&nbsp;<span class="xaml__tag_start">/&gt;</span>&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/DataGridTemplateColumn.Header&gt;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="xaml__tag_end">&lt;/DataGridTemplateColumn&gt;</span>&nbsp;
&nbsp;&nbsp;&lt;/DataGrid.Columns&gt;&nbsp;
<span class="xaml__tag_start">&lt;DataGrid</span><span class="xaml__tag_start">&gt;</span></pre>
</div>
</div>
</div>
<p class="endscriptcode">As you can see the header is defined by using a TextBlock. The Text property of the TextBlock is binded to the property HeaderNameText of the DataContext of the DataGrid. In a similar way you could use your own DataContext for the
 DataGridColumns. By defining the header in this way you could further customize your header by using further elements, e.g. Images.</p>
<div class="endscriptcode"></div>
<p class="endscriptcode">The DataContext of the DataGrid is set in code</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span><span>Visual Basic</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span><span class="hidden">vb</span>


<div class="preview">
<pre class="csharp">Data&nbsp;data&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;Data();&nbsp;
data.HeaderNameText&nbsp;=&nbsp;<span class="cs__string">&quot;Header2&quot;</span>;&nbsp;
data.Items&nbsp;=&nbsp;<span class="cs__keyword">new</span>&nbsp;List&lt;<span class="cs__keyword">string</span>&gt;()&nbsp;{&nbsp;<span class="cs__string">&quot;Item1&quot;</span>,&nbsp;<span class="cs__string">&quot;Item2&quot;</span>&nbsp;};&nbsp;
&nbsp;
DataContext&nbsp;=&nbsp;data;</pre>
</div>
</div>
</div>
<p>The DataContext is an own object containing the values of the DataGrid and the Header name</p>
<div class="scriptcode">
<div class="pluginEditHolder" pluginCommand="mceScriptCode">
<div class="title"><span>C#</span><span>Visual Basic</span></div>
<div class="pluginLinkHolder"><span class="pluginEditHolderLink">Edit</span>|<span class="pluginRemoveHolderLink">Remove</span></div>
<span class="hidden">csharp</span><span class="hidden">vb</span>


<div class="preview">
<pre class="csharp"><span class="cs__keyword">public</span>&nbsp;<span class="cs__keyword">class</span>&nbsp;Data&nbsp;
{&nbsp;
&nbsp;&nbsp;<span class="cs__keyword">public</span>&nbsp;<span class="cs__keyword">string</span>&nbsp;HeaderNameText&nbsp;
&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">get</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">set</span>;&nbsp;
&nbsp;&nbsp;}&nbsp;
&nbsp;
&nbsp;&nbsp;<span class="cs__keyword">public</span>&nbsp;List&lt;<span class="cs__keyword">string</span>&gt;&nbsp;Items&nbsp;
&nbsp;&nbsp;{&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">get</span>;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<span class="cs__keyword">set</span>;&nbsp;
&nbsp;&nbsp;}&nbsp;
}</pre>
</div>
</div>
</div>
<div class="endscriptcode">&nbsp;</div>
<h1><span>Source Code Files</span></h1>
<ul>
<li><em>source code file name Data.cs - contains the data for DataGrid Binding.</em>
</li><li><em><em>source code file name MainWindow.xaml - contains the XAML DataGrid.Column Header Binding.</em></em>
</li><li><em>source code file name MainWindow.xaml.cs - contains the setting of the DataContext</em>
</li></ul>
<h1>More Information</h1>
<p><strong>For further code samples visit <em><a href="http://chrigas.blogspot.com/">http://chrigas.blogspot.com/</a></em></strong></p>
<p>For more information on DataGrid, see <br>
<a href="http://msdn.microsoft.com/en-us/library/system.windows.controls.datagrid.aspx">http://msdn.microsoft.com/en-us/library/system.windows.controls.datagrid.aspx</a></p>
<p>For more information on Columns, see <a href="http://msdn.microsoft.com/en-us/library/system.windows.controls.datagrid.columns.aspx">
http://msdn.microsoft.com/en-us/library/system.windows.controls.datagrid.columns.aspx</a></p>
<p>For more information on Binding, see <a href="http://msdn.microsoft.com/en-us/library/system.windows.data.binding.aspx">
http://msdn.microsoft.com/en-us/library/system.windows.data.binding.aspx</a> and <a href="http://msdn.microsoft.com/en-us/library/ms750413.aspx">
http://msdn.microsoft.com/en-us/library/ms750413.aspx</a></p>
