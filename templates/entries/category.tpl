<ul class="nav tree">
    {foreach $categories as $category}
        <li>
        {if $category.sub|sizeof > 0}
            <label class="tree-toggler nav-header">{$category.name}</label>
            {include file="entries/category.tpl" categories=$category.sub}
        {else}
            {$category.name}
        {/if}
        </li>
    {/foreach}
</ul>