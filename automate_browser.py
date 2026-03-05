import time
import random
from urllib.parse import urlparse
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.action_chains import ActionChains
from selenium.common.exceptions import (
    ElementClickInterceptedException,
    NoSuchElementException,
    WebDriverException,
)

# ---------- CONFIG ----------
import os

print("OPT DIR:", os.listdir("/opt"))
print("CHROMEDRIVER EXISTS:", os.path.exists("/opt/chromedriver"))
print("CHROME EXISTS:", os.path.exists("/opt/headless-chromium"))


URL = "https://shrey-viradiya.github.io/stylesphere/"
EXPERIENCE_SITES = [
    "https://en.wikipedia.org/wiki/Fashion",
    "https://www.youtube.com/",
    "https://www.google.com/",
    "https://news.ycombinator.com/",
    "https://www.nationalgeographic.com/",
    "https://en.wikipedia.org/wiki/Python_(programming_language)",
    "https://www.amazon.com/",
    "https://www.bbc.com/",
    "https://www.cnn.com/",
    "https://www.medium.com/"
]

MIN_WAIT = 1
MAX_WAIT = 3
SCROLL_PAUSE = (0.5, 1.5)
MOUSE_MOVE_STEPS = 20
MIN_TABS = 7
MAX_TABS = 13

# ---------- HELPER FUNCTIONS ----------
def random_wait():
    time.sleep(random.uniform(MIN_WAIT, MAX_WAIT))

def random_scroll(driver):
    try:
        height = driver.execute_script("return document.body.scrollHeight")
        for _ in range(random.randint(2, 5)):
            scroll_y = random.randint(0, height)
            driver.execute_script(f"window.scrollTo(0, {scroll_y});")
            time.sleep(random.uniform(*SCROLL_PAUSE))
        if random.random() < 0.3:
            driver.execute_script("window.scrollTo(0, 0);")
            time.sleep(random.uniform(*SCROLL_PAUSE))
    except WebDriverException:
        pass

def random_mouse_move(driver):
    try:
        body = driver.find_element(By.TAG_NAME, "body")
        actions = ActionChains(driver)
        start_x = random.randint(0, 500)
        start_y = random.randint(0, 500)
        actions.move_to_element_with_offset(body, start_x, start_y)
        for _ in range(MOUSE_MOVE_STEPS):
            offset_x = random.randint(-100, 100)
            offset_y = random.randint(-100, 100)
            actions.move_by_offset(offset_x, offset_y)
        actions.perform()
    except WebDriverException:
        pass

def physical_click(driver, element):
    try:
        actions = ActionChains(driver)
        actions.move_to_element(element).click().perform()
    except WebDriverException as e:
        print(f"⚠️ Physical click failed: {e}")

def browse_links_randomly(driver, links, main_handle, visited_links, max_tabs):
    tabs_opened = 0
    random.shuffle(links)
    for href in links:
        if tabs_opened >= max_tabs:
            break
        if href in visited_links or href.endswith("rss.xml"):
            continue
        visited_links.add(href)

        try:
            rel_href = urlparse(href).path
            element = None
            try:
                element = driver.find_element(By.XPATH, f"//a[@href='{rel_href}']")
                try:
                    element.click()
                except ElementClickInterceptedException:
                    physical_click(driver, element)
            except NoSuchElementException:
                driver.get(href)

            random_wait()
            all_handles = driver.window_handles

            # Only count external tabs
            external_tab_opened = False
            for handle in all_handles:
                if handle != main_handle:
                    external_tab_opened = True
                    driver.switch_to.window(handle)
                    random_scroll(driver)
                    random_mouse_move(driver)
                    random_wait()
                    driver.close()
            driver.switch_to.window(main_handle)

            if external_tab_opened:
                tabs_opened += 1

            random_scroll(driver)
            random_mouse_move(driver)

        except WebDriverException as e:
            driver.switch_to.window(main_handle)
            continue

        random_wait()
    return tabs_opened

# ---------- LAMBDA HANDLER ----------
def lambda_handler(event, context):
    chrome_options = Options()
    chrome_options.add_argument("--headless=new")
    chrome_options.add_argument("--disable-gpu")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--window-size=1920,1080")
    chrome_options.add_argument("--blink-settings=imagesEnabled=false")
    chrome_options.add_argument("--log-level=3")

    # AWS Lambda binary path
    chrome_options.binary_location = "/opt/headless-chromium"

    service = Service("/opt/chromedriver")
    driver = webdriver.Chrome(service=service, options=chrome_options)
    # driver = webdriver.Chrome("/opt/chromedriver", options=chrome_options)
    visited_links = set()

    # Step 1: Experience sites
    num_sites = random.randint(1, 2)
    sites_to_visit = random.sample(EXPERIENCE_SITES, num_sites)
    for site in sites_to_visit:
        try:
            driver.get(site)
            main_handle = driver.current_window_handle
            random_scroll(driver)
            random_mouse_move(driver)
            random_wait()
            links = driver.find_elements(By.TAG_NAME, "a")
            hrefs = [link.get_attribute("href") for link in links if link.get_attribute("href")]
            browse_links_randomly(driver, hrefs, main_handle, visited_links, max_tabs=3)
        except WebDriverException:
            continue

    # Step 2: Main site
    driver.get(URL)
    main_handle = driver.current_window_handle
    random_wait()
    links = driver.find_elements(By.CSS_SELECTOR, "a[href^='/stylesphere']")
    hrefs = [link.get_attribute("href") for link in links if link.get_attribute("href")]
    max_tabs_main = random.randint(MIN_TABS, MAX_TABS)
    browse_links_randomly(driver, hrefs, main_handle, visited_links, max_tabs=max_tabs_main)

    driver.quit()
    return {"status": "completed"}


def main():
    lambda_handler(None, None)

if __name__ == "__main__":
    main()
