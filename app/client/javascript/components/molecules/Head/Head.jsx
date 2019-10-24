import React, { Fragment } from 'react';
import { Animated } from 'react-animated-css';
import CSSModules from 'react-css-modules';
import Button from '@atoms/Button/Button';
import sideImage from '@images/side_image.png';
import MovingBalls from '@organisms/MovingBalls/MovingBalls';
import styles from './HeadStyles.scss';
import SideImage from '@atoms/SideImage/SideImage';
import Carousel from 'react-multi-carousel';
import tringle1 from '@images/side_image.png';


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

const Head = () => {
  const handleOnDragStart = e => e.preventDefault()
  return(
<Fragment>
  <MovingBalls/>
  <SideImage />
    <Carousel
      responsive={responsive}
      ssr="true"
      showDots
      removeArrowOnDeviceType={['tablet', 'mobile', 'desktop', 'superLargeDesktop']}
    >
    <div className="head">
      <div className="inner-container">
        <Animated animationIn="slideInLeft" animationOut="fadeOut" isVisible>
          <div className="head_info">
            <h1 className="head_title">Unified Communication</h1>
            <h2 className="head_subtitle">Everythink over packets</h2>
            <p className="head_description">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Donec cursus magna quis orci dignissim venenatis.
                Nam aliquam augue ac pellentesque pharetra.
            </p>
            <Button name="CTA Button" />
          </div>
        </Animated>
      </div>
      <div className="side_container">
        <img src={tringle1} className="side_tringle"/>
      </div>
    </div>
    <div className="head">
      <div className="inner-container">
        <Animated animationIn="slideInLeft" animationOut="fadeOut" isVisible>
          <div className="head_info">
            <h1 className="head_title">New Communication</h1>
            <h2 className="head_subtitle">Everythink over</h2>
            <p className="head_description">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Donec cursus magna quis orci dignissim venenatis.
                Nam aliquam augue ac pellentesque pharetra.
            </p>
            <Button name="Button" />
          </div>
        </Animated>
      </div>
      <div className="side_container">
      <img src={tringle1} className="side_tringle"/>
      </div>
    </div>
    </Carousel>
  </Fragment>
)
}
export default CSSModules(Head, styles);
