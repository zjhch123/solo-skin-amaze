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
<div>
    <#list articles as article>
    <article class="am-g blog-entry-article">
        <div class="am-u-lg-6 am-u-lg-12 am-u-sm-12 blog-entry-text post-preview">
            <div class="topic-header">
                <div class="pull-left">
                    <div class="blog-flex-center">
                        <div class="blog-flex0">
                            <img src="${article.authorThumbnailURL}" alt="" class="link avatar avatar-image">
                        </div>
                        <div class="author-lockup blog-flex1">
                            <a class="link" href="javascript:;">${article.authorName}</a>
                            <span class="in">in</span>
                             <#list article.articleTags?split(",") as articleTag>
                             <span class="category-name">
                                <a class="category-name" rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                                    ${articleTag}</a>
                            </span>
                            </#list>
                        </div>
                    </div>
                </div>
            <span class="pull-right time pc_time">${article.articleCreateDate?string("yyyy-MM-dd")}</span>
            </div>
        <h1 class="post-index-title"><a itemtype="url" href="${servePath}${article.articlePermalink}">${article.articleTitle}</a></h1>
        <div class="post-content-preview article-body">
            ${article.articleAbstract}
        </div>
        <#--  响应式
        <div class="clearfix topic-footer">
            <span class="pull-left time mobile_time"><?php $this->date('F j, Y'); ?></span>
        </div>  -->
    </article>
    </#list>


    <#if 0 != paginationPageCount>
    <ul class="am-pagination">
        <#if 1 < paginationCurrentPageNum>
            <li class="am-pagination-prev">
                <a class="prev" href="${servePath}${path}/${paginationPreviousPageNum}">&laquo; Prev</a>
            </li>
        </#if>
        <#if paginationCurrentPageNum < paginationPageCount>
            <li class="am-pagination-next">
                <a class="next" href="${servePath}${path}/${paginationNextPageNum}">Next &raquo;</a>
            </li>
        </#if>
    </ul>
    </#if>
</div>