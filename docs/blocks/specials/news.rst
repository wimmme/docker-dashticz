News
####

This module can display a rss feed.

A predefined modules exists with the name ``'news'``,
which can be configured with the parameter ``default_news_url``. See :ref:`newsconfig`

::

    config['default_news_url'] = 'http://www.nu.nl/rss/Algemeen';

Additional rss feeds can be defined as well. See below::

    blocks['news_tweakers'] = {
      feed: 'http://feeds.feedburner.com/tweakers/nieuws',
      showimages: false,
      icon: 'fas fa-newspaper'
    }

Add the news blocks to a column as usual::

    columns[5] = {
      blocks: ['news', 'news_tweakers']      
    }


.. _newsconfig : 

Config Settings
---------------

.. list-table:: 
  :header-rows: 1
  :widths: 5, 30
  :class: tight-table
    
  * - Settings
    - Description
  * - default_news_url
    - | URL of the default news feed
      | ``'http://www.nu.nl/rss/algemeen'`` = Example for nu.nl
  * - news_scroll_after
    - | Enter the ammount in seconds (delay)
      | ``5`` = Scroll the news message every 5 seconds

News Parameters
---------------

.. list-table:: 
  :header-rows: 1
  :widths: 5, 30
  :class: tight-table
    
  * - Parameters
    - Description
  * - feed
    - | URL of the news feed
      | ``'http://www.nu.nl/rss/algemeen'`` = Example for nu.nl
  * - maxheight
    - | ``'max'`` (default) : Adjust the height of the block to the maximum height of all the news items.
      | ``'auto'`` : Adjust the height to fit the displayed news item.
      | ``<number>`` : Set the height of the block to ``<number>`` pixels. 
  * - title
    - | Title of the news block
  * - icon
    - | ``'fas fa-newspaper'``: icon to show in the news block
  * - image
    - | ``'image.png'``: image to show as icon. Image path is relative to the <dashticz>/img folder.
  * - showimages
    - | Show the inline images of the rss feed.
      | ``false``: Do not show the inline images
      | ``true`` (=default): Show the inline images
  * - filter
    - | Filter the number of items or filter on publish date of items
      | ``'5 items'``: Show the 5 most recent news items
      | ``'3 days'``: Show the news items from the last three days.


Example
-------

Add the following to ``CONFIG.js``::

    config['default_news_url'] = 'http://www.nu.nl/rss/Algemeen';

    blocks['news_tweakers'] = {
      feed: 'http://feeds.feedburner.com/tweakers/nieuws'
    }

    columns[5] = {
      blocks: ['news', 'news_tweakers'],
      width: 4     
    }


    //Definition of screens
    screens = {}
    screens[1] = {
      columns: [1, 2]
    }
    screens[2] = {
      columns: [3,4]
    }

    screens[3] = {
      columns: [5]
    }

This will give on the third screen the following result:

.. image :: news.jpg

If you click on a news item, then the news article will be shown in a popup window. Not all rss-feeds support this. The news articles from Tweakers for instance are blocked.


Usage
-----

The news module will download the information via a CORS proxy. The default settings normally work fine. For configuration see :ref:`dom_CORS_proxy`        

Not all rss-feeds support inline images. In that case you can set ``showimages`` to false.