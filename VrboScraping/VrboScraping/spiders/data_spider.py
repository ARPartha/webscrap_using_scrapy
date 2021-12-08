import re

import mysql.connector
import scrapy

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="Scrapping"
)

mycursor = mydb.cursor()

print((mydb))
url = 'https://www.vrbo.com/vacation-rentals/usa/hawaii'

location = url.rsplit('/', 1)[-1]


class DataSpider(scrapy.Spider):
    name = "posts"
    start_urls = [
        url
    ]

    def parse(self, response):

        title = (response.css(
            '.CommonRatioCard__description::text').extract())
        description = (response.css(
            '.CommonRatioCard__subcaption::text').extract())
        price = (response.css('.CommonRatioCard__price__amount::text').extract())

        image = response.css("script").extract()
        # print(type(image))
        # print("lenght", len(image))
        # singleimage = ""
        # for index in range(0, len(image)):
        # print(index)
        # take the specific one
        for index in range(0, len(image)):
            # take the specific one
            if(image[index].startswith('<script>window.__PRELOADED_STATE__ = ')):
                image = image[index]
        # print(image)
        match_img_url_one = re.findall(
            r'"tripleId":(.*?),"thumbnailUrl":(.*?),', image)
        match_img_url_two = re.findall(
            r'"tripleId":(.*?),"thumbnailUrl2":(.*?),', image)
        match_img_url_three = re.findall(
            r'"tripleId":(.*?),"thumbnailUrl3":(.*?),', image)

        dataextraction(title, description, price, match_img_url_one,
                       match_img_url_two, match_img_url_three)


def dataextraction(title, description, price, url_image_one, url_image_two, url_image_three):

    for info in range(len(title)):
        value = description[info].split(' · ')
        # print(value)
        sleep = value[0].split(' ')
        Bedroom = value[1].split(' ')
        Bathroom = value[2].split(' ')
        image_one = url_image_one[info]
        image_two = url_image_two[info]
        image_three = url_image_three[info]

        # print("1:"+image_one[1])
        # print("2:"+image_two[1])
        # print("3:"+image_three[1])

        # print("Title: "+title[info]+"\n", "location: " + location+"\n" "Sleep: "+sleep[1]+"\n", "Bedroom: " +
        #       Bedroom[0]+"\n", "Bathroom:" + Bathroom[0]+"\n", "Price: " + price[info]+"\n", "image_one: "+image_one[1]+"\n", "image_two: "+image_two[1]+"\n", "image_three: "+image_three[1]+"\n\n\n")
        sql = "INSERT INTO datatable(title,location,sleep,bedroom,bathroom,price,image_one,image_two,image_three) VALUES ( %s, %s, %s, %s, %s, %s,%s,%s,%s)"

        val = (title[info], location, sleep[1],
               Bedroom[0], Bathroom[0], price[info], image_one[1], image_two[1], image_three[1])
        mycursor.execute(sql, val)

        mydb.commit()

        print(mycursor.rowcount, "record inserted.")
