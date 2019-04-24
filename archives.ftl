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
                <main class="archives-articles">
                    <span class="title">
                         <h3><i class="icon-inbox"></i>
                             &nbsp;${statistic.statisticPublishedBlogArticleCount} ${articleLabel}</h3>
                    </span>
                    <#if 0 != archiveDates?size>
                        <div class="archives-list list">
                        <#list archiveDates as archiveDate>
                            <#if "en" == localeString?substring(0, 2)>
                                <a class="archives-list-item" href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}">
                                    ${archiveDate.monthName} ${archiveDate.archiveDateYear}(${archiveDate.archiveDatePublishedArticleCount})
                                </a>
                            <#else>
                                <a class="archives-list-item" href="${servePath}/archives/${archiveDate.archiveDateYear}/${archiveDate.archiveDateMonth}">
                                    ${archiveDate.archiveDateYear} ${yearLabel} ${archiveDate.archiveDateMonth} ${monthLabel}(${archiveDate.archiveDatePublishedArticleCount})
                                </a>
                            </#if>
                        </#list>
                        </div>
                    </#if>
                </main>
            </div>
            <#include "side.ftl">
        </div>
        <#include "footer.ftl">
    </body>
</html>
