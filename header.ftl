
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

    <!-- Collect the nav links, forms, and other content for toggling -->
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
              s${linkLabel}
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
              <a href="${loginURL}">
                ${loginLabel}
              </a>
            </li>
            <li>
              <a href="${servePath}/register">
                ${registerLabel}
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
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
        <div class="site-heading">
          <span class="subheading">
            ${blogSubtitle}
          </span>
        </div>
      </div>
    </div>
  </div>
</header>
