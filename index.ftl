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
<#include "../../common-template/macro-common_head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${blogTitle}">
        <link type="text/css" rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
        </@head>
    </head>
    <body id="blog">
        <#include "header.ftl">
        <div class="am-g am-g-fixed blog-fixed">
            <div class="am-u-lg-8 am-u-sm-12">
                <main class="articles-list">
                    <#include "article-list.ftl">
                </main>
            </div>
            <#include "side.ftl">
        </div>
        <#include "footer.ftl">
    </body>
</html>