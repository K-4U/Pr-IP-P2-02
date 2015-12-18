{include file="header.tpl"}

{if $error}
    <div class=" alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>{$error} </div>
{/if}

{include file="footer.tpl"}