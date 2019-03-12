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
<#include "macro-head.ftl">
<#include "macro-comments.ftl">
<#include "../../common-template/macro-comment_script.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${page.pageTitle} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${page.pageTitle}" />
        <meta name="description" content="${metaDescription}" />
        </@head>
    </head>
    <body>
        <#include "header.ftl">
        <div class="am-g am-g-fixed blog-fixed">
            <div class="am-u-lg-8 am-u-sm-12">
                <main class="post-list">
                    <article class="post">
                        <div class="content-reset">
                        ${page.pageContent}
                        </div>
                        <@comments commentList=pageComments article=page></@comments>
                    </article>
                </main>
            </div>
            <#include "side.ftl">
        </div>
        <#include "footer.ftl">
        <@comment_script oId=page.oId commentable=page.commentable></@comment_script>
    </body>
</html>
