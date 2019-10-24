/* eslint-disable max-len */
import React from 'react';
import news from '@images/news.png';
import './NewsStyles.scss';
import Separator from '@atoms/Separator/Separator';

const News = () => {
  return (
    <div className="news">
      <div className="news_title">Latest News</div>
      <Separator />
      <div className="news_boxes">
        <div className="news_box news_box_one">
          <img className="news_image" src={news} alt="news" />
          <div className="news_title_box">
            Very important news heading in two lines and more!
          </div>
          <div className="news_subtitle">
            We are pleased with the service and the technical support provided to us by GTI and XOP
            technical staff.
            Also, the ability to run live from your system while the GTI system was being repaired
            was outstanding.
          </div>
          <div className="news_button">Read More</div>
        </div>
        <div className="news_box news_box_two">
          <img className="news_image" src={news} alt="news" />
          <div className="news_title_box">
            Very important news heading in two lines and more!
          </div>
          <div className="news_subtitle">
            We are pleased with the service and the technical support provided to us by GTI and XOP
            technical staff.
            Also, the ability to run live from your system while the GTI system was being repaired
            was outstanding.
          </div>
          <div className="news_button">Read More</div>
        </div>
      </div>
    </div>
  );
}

News.propTypes = {};

export default News;
