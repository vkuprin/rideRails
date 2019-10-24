import React from 'react';
import Carousel from 'react-multi-carousel';
import userImage from '@images/keith-norman.png';
import './TestimonialsCarousel.scss';
import './CarouselStyles.scss';

const responsive = {
  superLargeDesktop: {
    breakpoint: { max: 4000, min: 3000 },
    items: 1,
  },

  desktop: {
    breakpoint: { max: 3000, min: 1024 },
    items: 1,
  },

  tablet: {
    breakpoint: { max: 1024, min: 464 },
    items: 1,
  },

  mobile: {
    breakpoint: { max: 464, min: 0 },
    items: 1,
  },
};

const TestimonialsCarousel = () => (
  <section className="testimonials-carousel">
    <div className="title">What our Clients Say</div>
    <div className="separator" />
    <Carousel
      responsive={responsive}
      ssr="true"
      swipeable
      showDots
      removeArrowOnDeviceType={['tablet', 'mobile', 'desktop', 'superLargeDesktop']}
    >
      <div className="text-selection-none">
        <div className="user-card">
          <div className="image rounded">
            <img src={userImage} alt="" />
          </div>
          <div className="name">Keith Norman</div>
          <div className="position">Director, Company</div>
          <div className="description">
              Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
              has been the industry's standard dummy text ever since the 1500s, when an unknown
          </div>
        </div>
      </div>
      <div className="text-selection-none">
        <div className="user-card">
          <div className="image rounded">
            <img src={userImage} alt="" />
          </div>
          <div className="name">Keith Norman</div>
          <div className="position">Director, Company</div>
          <div className="description">
              Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
              has been the industry's standard dummy text ever since the 1500s, when an unknown
          </div>
        </div>
      </div>
      <div className="text-selection-none">
        <div className="user-card">
          <div className="image rounded">
            <img src={userImage} alt="" />
          </div>
          <div className="name">Keith Norman</div>
          <div className="position">Director, Company</div>
          <div className="description">
              Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
              has been the industry's standard dummy text ever since the 1500s, when an unknown
          </div>
        </div>
      </div>
    </Carousel>
  </section>
);

TestimonialsCarousel.propTypes = {};

export default TestimonialsCarousel;
