{include file="header.tpl" extracss='objects.css'}

<input type="hidden" value="{$maxPages}" id="maxPages" />
<div class="col-sm-3 col-md-2 sidebar">
    {include file="entries/category.tpl"}
</div>

<div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
    {if $paginationNeeded}
    <div class="row">
        <div class="col-md-2 col-md-offset-10">
            <ul class="pagination">
                <li>
                    <a class="pagination-prev" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                {for $p=1 to $maxPages+1}
                    <li><a class="pagination-button">{$p}</a></li>
                {/for}
                <li>
                    <a class="pagination-next" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
        <div class="row">
            <div class="col-md-12">
    {/if}
                {if $objects|sizeof == 0}
                        <div class=" alert alert-info alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>Deze rubriek heeft nog geen kavels!</div>
                {/if}
    {foreach $objects as $object}
            {include file="entries/object.tpl"}
    {/foreach}
    {if $paginationNeeded}
            </div>
        </div>
    <div class="row">
        <div class="col-md-2 col-md-offset-10">
            <ul class="pagination">
                <li>
                    <a class="pagination-prev" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                {for $p=1 to $maxPages+1}
                    <li><a class="pagination-button">{$p}</a></li>
                {/for}
                <li>
                    <a class="pagination-next" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    {/if}
</div>

{include file="footer.tpl"}