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
        <@head title="${article.articleTitle} - ${blogTitle}">
        <meta name="keywords" content="${article.articleTags}" />
        <meta name="description" content="${article.articleAbstract?html}" />
        </@head>
        <#if previousArticlePermalink??>
            <link rel="prev" title="${previousArticleTitle}" href="${servePath}${previousArticlePermalink}">
        </#if>
        <#if nextArticlePermalink??>
            <link rel="next" title="${nextArticleTitle}" href="${servePath}${nextArticlePermalink}">
        </#if>
        <!-- Open Graph -->
        <meta property="og:locale" content="zh_CN"/>
        <meta property="og:type" content="article"/>
        <meta property="og:title" content="${article.articleTitle}"/>
        <meta property="og:description" content="${article.articleAbstract?html}"/>
        <meta property="og:image" content="${article.authorThumbnailURL}"/>
        <meta property="og:url" content="${servePath}${article.articlePermalink}"/>
        <meta property="og:site_name" content="Solo"/>
        <!-- Twitter Card -->
        <meta name="twitter:card" content="summary"/>
        <meta name="twitter:description" content="${article.articleAbstract?html}"/>
        <meta name="twitter:title" content="${article.articleTitle}"/>
        <meta name="twitter:image" content="${article.authorThumbnailURL}"/>
        <meta name="twitter:url" content="${servePath}${article.articlePermalink}"/>
        <meta name="twitter:site" content="@DL88250"/>
        <meta name="twitter:creator" content="@DL88250"/>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">
                        ${blogTitle}
                    </a>
                </div>

                <div id="huxblog_navbar">
                    <div class="navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                        <#list pageNavigations as page>
                        <li>
                            <a href="${page.pagePermalink}" target="${page.pageOpenTarget}" rel="section">
                                ${page.pageTitle}
                            </a>
                        </li>
                        </#list>
                        <li>
                            <a href="${servePath}/tags.html" rel="section">
                                ${allTagsLabel}
                            </a>
                        </li>
                        <li>
                            <a href="${servePath}/archives.html">
                                ${archiveLabel}
                            </a>
                        </li>
                        <li>
                            <a rel="archive" href="${servePath}/links.html">
                                ${linkLabel}
                            </a>
                        </li>
                        <#if isLoggedIn>
                        <li>
                            <a href="${servePath}/admin-index.do#main" title="${adminLabel}">
                                ${adminLabel}
                            </a>
                            </li>
                            <li>
                            <a href="${logoutURL}">
                                ${logoutLabel}
                            </a>
                            </li>
                            <#else>
                            <li>
                                <a href="${servePath}/start">
                                    ${startToUseLabel}
                                </a>
                            </li>
                        </#if>
                        </ul>
                    </div>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        <!-- /.container -->
        </nav>
        <header class="intro-header" style="background-image: url('/skins/${skinDirName}/images/header.jpg')">
            <div class="container">
                <div class="post-heading">
                    <h1>${article.articleTitle}</h1>
                    <div class="meta">
                        @${article.authorName} &nbsp;
                        ${article.articleCreateDate?string("yyyy-MM-dd")} &nbsp;
                        <div class="comments-view" style="display: inline-block">
                            <a href="${servePath}${article.articlePermalink}#comments" class="article-comments">${article.articleCommentCount} ${commentLabel}</a> &nbsp;
                            ${article.articleViewCount} ${viewLabel}
                        </div>
                    </div>
                    <div class="tags post-tags">
                        <#list article.articleTags?split(",") as articleTag>
                            <a class="tag" rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                                ${articleTag}</a>&nbsp;
                        </#list>
                    </div>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="am-g am-g-fixed blog-fixed">
                <div class="am-u-lg-12 am-u-sm-12">
                    <article class="vditor-reset article-trigger">
                        <div id="post-content">
                            ${article.articleContent}
                            <#if "" != article.articleSign.signHTML?trim>
                                <div>
                                    ${article.articleSign.signHTML}
                                </div>
                            </#if>
                        </div>
                    </article>
                    <hr>
                </div>
            </div>
            <div class="comment-container">
                <div class="comments-container-inner">
                    <@comments commentList=articleComments article=article></@comments>
                </div>
            </div>
            <div class="article-recommend">
                <div id="externalRelevantArticles"></div>
                <div id="randomArticles"></div>
                <div id="relevantArticles"></div>
            </div>
        </div>
        <#include "footer.ftl">
        <@comment_script oId=article.oId commentable=article.commentable>
            Skin.initArticle()
            Skin.initComment = function (articleOId, articleTags) {
                page.tips.externalRelevantArticlesDisplayCount = "${externalRelevantArticlesDisplayCount}";
            <#if 0 != externalRelevantArticlesDisplayCount>
                page.loadExternalRelevantArticles(articleTags, "<div class='recommend__title'>社区推荐</div>");
            </#if>
            <#if 0 != randomArticlesDisplayCount>
                page.loadRandomArticles("<div class='recommend__title'>站内推荐</div>");
            </#if>
            <#if 0 != relevantArticlesDisplayCount>
                page.loadRelevantArticles(articleOId, '<div class="recommend__title">相关阅读</div>');
            </#if>
            }
            Skin.initComment('${article.oId}', "<#list article.articleTags?split(",") as articleTag>${articleTag}<#if articleTag_has_next>,</#if></#list>")
            Util.parseMarkdown()
        </@comment_script>
    </body>
    <script>
        $(function() {
            $('article h1, article h2, article h3, article h4, article h5').find('a').removeAttr('target')
        })
    </script>
</html>
