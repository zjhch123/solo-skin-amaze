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
    <body>
        <#include "header.ftl">
        <div class="am-g am-g-fixed blog-fixed">
            <div class="am-u-lg-8 am-u-sm-12">
                <main class="post post-list">
                <h3>动态</h3>
                    <#if 0 != recentComments?size>
                        <ul class="comments" id="comments">
                            <#list recentComments as comment>
                                <li id="${comment.oId}">
                                    <div>
                                        <div class="avatar tooltipped tooltipped-n" aria-label="${comment.commentName}"
                                             style="background-image: url(${comment.commentThumbnailURL})"></div>
                                        <main>
                                            <div class="fn-clear">
                                                <#if "http://" == comment.commentURL>
                                                    ${comment.commentName}
                                                    <#else>
                                                        <a class="user-name" href="${comment.commentURL}" target="_blank">${comment.commentName}</a>
                                                </#if>
                                                <time class="ft-gray">${comment.commentDate?string("yyyy-MM-dd HH:mm")}</time>
                                                <a class="reply-btn" href="${servePath}${comment.commentSharpURL}">${viewLabel}»</a>
                                            </div>
                                            <div class="vditor-reset">
                                                ${comment.commentContent}
                                            </div>
                                        </main>
                                    </div>
                                </li>
                            </#list>
                        </ul>
                    </#if>
                </main>
            </div>
            <#include "side.ftl">
        </div>
        <#include "footer.ftl">

        <script>
            Util.parseMarkdown()
        </script>
    </body>
</html>
