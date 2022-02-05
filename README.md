# Reddit Time Machine

Reddit does not have any mechanism for browsing the site as it was on a specific date - you can use the Wayback Machine @ archive.org, but most links are dead as they'll redirect to pages that weren't specifically archived by the Wayback Machine, and not every subreddit was crawled on every date. This repository acts as a proxy to [Pushshift](https://pushshift.io/), assembling a reasonable view of what a given subreddit looked like on a given date. Links to pages (comments, selfposts, etc) hosted on reddit.com will work (assuming they haven't been removed), but pages hosted by third parties may not function if the original page has been removed. 

You can browse a given date by going to /yyyy-mm-dd/, and browse a specific subreddit on that date by going to /yyyy-mm-dd/r/subreddit

If pages fail to work, that's an issue with Pushshift - no actual data is hosted or scraped as part of this repository.

Sample pages:
* [Home (2009-01-20)](https://reddit.tylerfreedman.com/2009-01-20/)
* [/r/bitcoin (2011-07-01)](https://reddit.tylerfreedman.com/2011-07-01/r/bitcoin)

The only configuration setting (via rails credentials:edit) is development_hosts: ['your.domain.here']

This repository was written using Ruby on Rails, but almost all Rails features aren't actually used (databases, asset pipeline, etc). Feel free to re-implement this in Sinatra / curl / CGI.
