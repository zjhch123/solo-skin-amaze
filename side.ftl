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
<div class="am-u-lg-4 am-u-sm-12 am-u-lg-offset-0 am-u-sm-offset-0 sidebar-container">
    <section>
        <section>
            <div class="sidebar-header">
                <span class="sidebar-header-title">
                    关于博主
                </span>
            </div>
            <main class="sidebar-user">
                <img src="${adminUser.userAvatar}" aria-label="${adminUser.userName}"/>
                <div class="fn-right">
                    <a href="${servePath}/archives.html">
                        ${statistic.statisticPublishedBlogArticleCount}
                        <span class="ft-gray">${articleLabel}</span></a><br/>
                    <a href="${servePath}/dynamic.html">
                        ${statistic.statisticPublishedBlogCommentCount}
                        <span class="ft-gray">${commentLabel}</span></a><br/>
                    ${statistic.statisticBlogViewCount} <span class="ft-gray">${viewLabel}</span><br/>
                    ${onlineVisitorCnt} <span class="ft-gray">${onlineVisitorLabel}</span>
                </div>
            </main>
        </section>
        
        <#if 0 != mostUsedTags?size>
        <section>
            <div class="sidebar-header">
                <span class="sidebar-header-title">
                    分类标签
                </span>
            </div>
            <div class="tags ">
                <#list mostUsedTags as tag>
                    <a rel="tag"
                        href="${servePath}/tags/${tag.tagTitle?url('UTF-8')}"
                        aria-label="${tag.tagPublishedRefCount} ${countLabel}${articleLabel}">
                            ${tag.tagTitle}</a>
                </#list>
            </div>
        </section>
        </#if>

        <#if 0 != mostUsedCategories?size>
        <section>
            <div class="sidebar-header">
                <span class="sidebar-header-title">
                    分类列表
                </span>
            </div>
            <div class="sidebar-list">
                <ul class="sidebar-list-body sidebar-list-items">
                <#list mostUsedCategories as category>
                    <li class="sidebar-list-item">
                    <a href="${servePath}/category/${category.categoryURI}"
                        aria-label="${category.categoryTagCnt} ${cntLabel}${tagsLabel}"
                        class="tag tooltipped tooltipped-n">
                            ${category.categoryTitle}</a>
                    </li>
                </#list>
                </ul>
            </div>
        </section>
        </#if>

        <#if 0 != mostCommentArticles?size>
        <section>
            <div class="sidebar-header">
                <span class="sidebar-header-title">
                    评论最多的文章
                </span>
            </div>
            <main class="sidebar-lists">
                <ul>
                    <#list mostCommentArticles as article>
                        <li>
                            <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}"
                                class="tooltipped tooltipped-e"
                                href="${servePath}${article.articlePermalink}">
                                ${article.articleTitle}
                            </a>
                        </li>
                    </#list>
                </ul>
            </main>
        </section>
        </#if>

        <#if 0 != mostViewCountArticles?size>
         <section>
            <div class="sidebar-header">
                <span class="sidebar-header-title">
                    访问最多的文章
                </span>
            </div>
            <main class="sidebar-lists">
                <ul>
                    <#list mostViewCountArticles as article>
                        <li>
                            <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}"
                                class="tooltipped tooltipped-e"
                                href="${servePath}${article.articlePermalink}">
                                ${article.articleTitle}
                            </a>
                        </li>
                    </#list>
                </ul>
            </main>
        </section>
        </#if>
    </section>
</div>