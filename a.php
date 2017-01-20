<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>val demo</title>
    <style>
        p {
            color: red;
            margin: 4px;
        }
        b {
            color: blue;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>

<p></p>

<select id="single">
    <option>Single</option>
    <option>Single2</option>
</select>

<select id="multiple" multiple="multiple">
    <option selected="selected">Multiple</option>
    <option>Multiple2</option>
    <option selected="selected">Multiple3</option>
</select>


<table id="choose-address-table" class="ui-widget ui-widget-content">
    <thead>
    <tr class="ui-widget-header ">
        <th>Name/Nr.</th>
        <th>Street</th>
        <th>Town</th>
        <th>Postcode</th>
        <th>Country</th>
        <th>Options</th>
    </tr>
    </thead>
    <tbody>
    <tr id="address">
        <td class="nr"><span>50</span>

        </td>
        <td>Some Street 1</td>
        <td>Glas</td>
        <td>G0 0XX</td>
        <td>United Kingdom</td>
        <td>
            <button type="button" class="use-address">Use</button>
        </td>
    </tr>
    <tr class="address">
        <td class="nr"><span>30</span>

        </td>
        <td>Some Street 2</td>
        <td>Glasgow</td>
        <td>G0 0XX</td>
        <td>United Kingdom</td>
        <td>
            <button type="button" class="use-address">Use</button>
        </td>
    </tr>
    </tbody>
</table>



<script>
    function displayVals() {
        var singleValues = $( "#single" ).val();
        var multipleValues = $( "#multiple" ).val() || [];
        $( "p" ).html( "<b>Single:</b> " + singleValues +
            " <b>Multiple:</b> " + multipleValues.join( ", " ) );
    }

    $( "select" ).change( displayVals );
    displayVals();

    $('.address').click(function () {
        var id = $(this).closest("tr").find('td:eq(2)').text();
        alert(id);
    });

</script>

</body>
</html>