{include file="header.tpl" extracss='index.css'}

<div class="row">
    <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav tree">
            <li><label class="tree-toggler nav-header">Header 1</label>
                <ul class="nav tree">
                    <li><label class="tree-toggler nav-header">Header 1.1</label>
                        <ul class="nav tree">
                            <li><a href="#">Link</a></li>
                            <li><a href="#">Link</a></li>
                            <li><label class="tree-toggler nav-header">Header 1.1.1</label>
                                <ul class="nav tree">
                                    <li><a href="#">Link</a></li>
                                    <li><a href="#">Link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="divider"></li>
            <li><label class="tree-toggler nav-header">Header 2</label>
                <ul class="nav nav-list tree">
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><label class="tree-toggler nav-header">Header 2.1</label>
                        <ul class="nav nav-list tree">
                            <li><a href="#">Link</a></li>
                            <li><a href="#">Link</a></li>
                            <li><label class="tree-toggler nav-header">Header 2.1.1</label>
                                <ul class="nav nav-list tree">
                                    <li><a href="#">Link</a></li>
                                    <li><a href="#">Link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><label class="tree-toggler nav-header">Header 2.2</label>
                        <ul class="nav nav-list tree">
                            <li><a href="#">Link</a></li>
                            <li><a href="#">Link</a></li>
                            <li><label class="tree-toggler nav-header">Header 2.2.1</label>
                                <ul class="nav nav-list tree">
                                    <li><a href="#">Link</a></li>
                                    <li><a href="#">Link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
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