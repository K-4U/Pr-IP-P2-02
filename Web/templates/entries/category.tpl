<ul class="nav tree">
    {foreach $categories as $category}
        <li>
        {if $category.sub|sizeof > 0}
            <label class="tree-toggler nav-header" {if $category.active}data-active="true"{/if}>{$category.name}</label>
            {include file="entries/category.tpl" categories=$category.sub}
        {else}
            <a href="{baseurl url="Rubriek/`$category.id`"}">{$category.name}</a>
        {/if}
        </li>
    {/foreach}
</ul>