<div id="content-wrap">
  <div id="content" class="wrapper">
    <div id="content-inner">
      <article class="article-container" itemscope itemtype="http://schema.org/Article">
        <div class="article-inner">
          <div class="article">
            <div class="inner">
              <header class="article-header">
                <h1 class="article-title" itemprop="name">{{ page.title }}</h1>
                <a href="{{ raw_link(page.source) }}" class="article-edit-link" title="{{ __('page.improve') }}"><i class="fa fa-pencil"></i> {{ __('page.improve') }}</a>
              </header>
              <!-- AD -->
              <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
              <!-- easywechat-top -->
              <ins class="adsbygoogle"
                   style="display:block"
                   data-ad-client="ca-pub-2163469583563094"
                   data-ad-slot="3400967944"
                   data-ad-format="auto"></ins>
              <script>
              (adsbygoogle = window.adsbygoogle || []).push({});
              </script>
              <!-- /AD -->
              <div>
                <strong class="sidebar-title">{{ __('page.contents') }}</strong>
                {{ toc(page.content, {list_number: false}) }}
              </div>
              <div class="article-content" itemprop="articleBody" data-swiftype-index="true">
                {{ page_anchor(page.content) }}

                <div class="donate-btn text-center"><a href="/donate.html" target="_blank">{{ __('page.donate') }}</a></div>
              </div>
              <footer class="article-footer">
                <time class="article-footer-updated" datetime="{{ date_xml(page.updated) }}" itemprop="dateModified">{{ __('page.last_updated', date(page.updated)) }}</time>
                {{ page_nav() }}
              </footer>
              {{ partial('partial/comment') }}
            </div>
          </div>
          <aside id="article-toc" role="navigation">
            <!-- AD -->
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- easywechat-sidebar -->
            <ins class="adsbygoogle"
                 style="display:block"
                 data-ad-client="ca-pub-2163469583563094"
                 data-ad-slot="6354434345"
                 data-ad-format="auto"></ins>
            <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
            <!-- /AD -->
          </aside>
        </div>
      </article>
      {{ partial('partial/sidebar') }}
    </div>
  </div>
</div>