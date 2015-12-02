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
        <fieldset class="row">
            <legend>Bijna aflopende veilingen</legend>
            {foreach $soonEndingObjects as $object}
                {include file="entries/object.tpl"}
            {/foreach}
        </fieldset>
        <fieldset class="row">
            <legend>Nieuw!</legend>
            {foreach $newObjects as $object}
                {include file="entries/object.tpl"}
            {/foreach}
        </fieldset>
        <!--<fieldset class="row">
            <legend>Populaire rubrieken</legend>
            <div class="col-md-4 well" style="height:200px;"></div>
            <div class="col-md-4 well"></div>
            <div class="col-md-4 well"></div>
        </fieldset>-->
    </div>
</div>

{include file="footer.tpl"}