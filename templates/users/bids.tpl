{include file="header.tpl"}

<div class="row">
    <div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
        <h2>Mijn Biedingen</h2>
        {foreach $objects as $object}
            {include file="entries/bids.tpl"}
        {/foreach}
    </div>
</div>

{include file="footer.tpl"}