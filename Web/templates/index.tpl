{include file="header.tpl" extracss='index.css'}

<div class="row">
    <div class="col-sm-3 col-md-2 sidebar">
        {include file="entries/category.tpl"}
    </div>


    <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
        <!--<fieldset class="row">
            <legend>Uitgelicht</legend>
            <div class="col-md-4 well" style="height:200px;"></div>
            <div class="col-md-4 well"></div>
            <div class="col-md-4 well"></div>
        </fieldset>-->
        <div class="row">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <div class="panel-title">Bijna aflopende veilingen</div>
                </div>
                <div class="panel-body row-objects">
                    {foreach $soonEndingObjects as $object}
                        {include file="entries/object.tpl"}
                    {/foreach}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <div class="panel-title">Nieuw!</div>
                </div>
                <div class="panel-body row-objects">
                    {foreach $newObjects as $object}
                        {include file="entries/object.tpl"}
                    {/foreach}
                </div>
            </div>
        </div>
        <!--<fieldset class="row">
            <legend>Populaire rubrieken</legend>
            <div class="col-md-4 well" style="height:200px;"></div>
            <div class="col-md-4 well"></div>
            <div class="col-md-4 well"></div>
        </fieldset>-->
    </div>
</div>

{include file="footer.tpl"}