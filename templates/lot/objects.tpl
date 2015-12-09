{include file="header.tpl" extracss='objects.css'}

<div class="col-sm-3 col-md-2 sidebar">
    {include file="entries/category.tpl"}
</div>

<div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
    {foreach $objects as $object}
        <div class="pull-left">
            {include file="entries/object.tpl"}
        </div>
    {/foreach}
</div>

{include file="footer.tpl"}