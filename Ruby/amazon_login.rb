require "watir"
LOGIN_URL = 'https://www.amazon.co.jp/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.co.jp%2Fgp%2Fyourstore%2Fhome%3Fie%3DUTF8%26ref_%3Dnav_newcust&prevRID=GGWVQJPSBNPHF9V4557G&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=jpflex&openid.mode=checkid_setup&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=jpflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0'
EMAIL = 'chihakoha.2708@gmail.com'
PASSWORD = 'chiharu0127'
#def self.login
    profile = Selenium::WebDriver::Firefox::Profile.new
    browser = Watir::Browser.new :firefox, :profile => profile
    browser.goto (LOGIN_URL)
    browser.text_field(id: 'ap_email').set(EMAIL)
    browser.element(id: "continue").click
    browser.wait
    browser.text_field(id: 'ap_password').set(PASSWORD)
    browser.element(id: "signInSubmit").click
    browser.wait
    browser.element(id: "nav-orders").click
    browser.wait
    sleep
#end