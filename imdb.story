Description: imdb;

Scenario: imdb main page
Given I am on a page with the URL 'https://www.imdb.com/?ref_=nv_home'
Scenario: sign in
When I click on a link with the text 'Sign In'
When I click on a link with the text 'Sign in with IMDb'
When I enter 'mslu.219@gmail.com' in a field with the name 'email'
When I enter '1234abcd' in a field with the name 'password'
When I click on a link with the CSS selector '#signInSubmit'
Scenario: movie search
When I enter 'matrix' in a field with the name 'q'
When I click on a link with the CSS selector '#suggestion-search-button > .ipc-icon'
When I click on a link with the CSS selector '.findSection:nth-child(3) .findResult:nth-child(1) > .result_text > a'
When I click on a link with the CSS selector '.uc-add-wl-button-icon--add'
Scenario: watchlist sorting, exporting
When I click on an element by the xpath '//nav[@id='imdbHeader']/div[2]/div[4]/a/div'
When I click on a link with the CSS selector '.lister-sort'
When I click on a link with the text 'Export this list'