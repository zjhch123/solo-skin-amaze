<#--

    Solo - A beautiful, simple, stable, fast Java blogging system.
    Copyright (c) 2010-2018, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<footer class="footer blog-footer">
    <div class="blog-text-center">
        &copy; ${year}
        ${footerContent}
        <a href="${servePath}">${blogTitle}</a>  &nbsp;   • &nbsp;
        <a href="https://solo.b3log.org" target="_blank">Solo</a> ${version}  <br/>

        Powered by <a href="https://b3log.org" target="_blank">B3log</a> 开源 &nbsp;
        <span class="ft-warn">&heartsuit;</span>
        Theme <a rel="friend" href="https://github.com/spiritree/typecho-theme-amaze" target="_blank"> Amaze</a> by <a href="https://github.com/spiritree" target="_blank">spiritree</a> & <a href="https://github.com/zjhch123" target="_blank">Jiahao.Zhang</a>
    </div>
</footer>

<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<script type="text/javascript" src="${staticServePath}/skins/${skinDirName}/js/common${miniPostfix}.js?${staticResourceVersion}" charset="utf-8"></script>
<#include "../../common-template/label.ftl">
${plugins}
