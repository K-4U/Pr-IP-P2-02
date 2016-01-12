{include file="header.tpl" extracss='objects.css'}

<input type="hidden" value="{$maxPages}" id="maxPages"/>
{if $categories}
    <div class="col-sm-3 col-md-2 sidebar">
        {include file="entries/category.tpl"}
    </div>
{/if}
<div class="col-sm-9 col-sm-offset-3 col-md-8 col-md-offset-2 main">
    {if $paginationNeeded}
    <div class="row">
        <div class="pull-right">
            <ul class="pagination">
                <li>
                    <a class="pagination-prev hand" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                {if $maxPages > 10}
                    {for $p=1 to 3}
                        <li><a class="pagination-button hand">{$p}</a></li>
                    {/for}
                    {if $page > 4}
                        <li><span class="pagination-button">...</span></li>
                    {/if}
                    {if $page > 5}
                        <li><span class="pagination-button hand">{$page-1}</span></li>
                    {/if}
                    {if $page >= 3 && $page <= $maxPages-3}
                        <li><a class="pagination-button">{$page}</a></li>
                    {/if}
                    {if $page < $maxPages-3}
                        <li><span class="pagination-button hand">{$page+1}</span></li>
                    {/if}
                    {if $page < $maxPages-2}
                        <li><span class="pagination-button">...</span></li>
                    {/if}
                    {for $p=$maxPages-1 to $maxPages+1}
                        <li><a class="pagination-button hand">{$p|floor}</a></li>
                    {/for}
                {else}
                    {for $p=1 to $maxPages+1}
                        <li><a class="pagination-button">{$p}</a></li>
                    {/for}
                {/if}

                <li>
                    <a class="pagination-next hand" aria-label="Next">
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
                                aria-hidden="true">&times;</span></button>
                    Deze rubriek heeft nog geen kavels!
                </div>
            {/if}
            {foreach $objects as $object}
                {include file="entries/object.tpl"}
            {/foreach}
        </div>
    </div>
    {if $paginationNeeded}
        <div class="row">
            <div class="pull-right">
                <ul class="pagination">
                    <li>
                        <a class="pagination-prev" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    {if $maxPages > 10}
                        {for $p=1 to 3}
                            <li><a class="pagination-button hand">{$p}</a></li>
                        {/for}
                        {if $page > 4}
                            <li><span class="pagination-button">...</span></li>
                        {/if}
                        {if $page > 5}
                            <li><span class="pagination-button hand">{$page-1}</span></li>
                        {/if}
                        {if $page >= 3 && $page <= $maxPages-3}
                            <li><a class="pagination-button">{$page}</a></li>
                        {/if}
                        {if $page < $maxPages-3}
                            <li><span class="pagination-button hand">{$page+1}</span></li>
                        {/if}
                        {if $page < $maxPages-2}
                            <li><span class="pagination-button">...</span></li>
                        {/if}
                        {for $p=$maxPages-1 to $maxPages+1}
                            <li><a class="pagination-button hand">{$p|floor}</a></li>
                        {/for}
                    {else}
                        {for $p=1 to $maxPages+1}
                            <li><a class="pagination-button">{$p}</a></li>
                        {/for}
                    {/if}
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