import React, { PureComponent } from 'react';
import './SloganWithRedirect.scss';
// import ScrollAnimation from 'react-animate-on-scroll';
import sideImage from '@images/side_image.png';
import Button from '@atoms/Button/Button';

class SloganWithRedirect extends PureComponent {
  render() {
    const { btnText, slogan } = this.props;
    return (
      <section className="customer-support-shortcut">
        <div className="inner-container">
          <div className="customer-support-text">
            {/* <ScrollAnimation animateIn="slideInLeft"> */}
              <p>{slogan}</p>
              <div className="customer-button">
                <Button name={btnText} />
              </div>
            {/* </ScrollAnimation> */}
          </div>
          <div className="customer-support-side-container">
            {/* <ScrollAnimation animateIn="slideInRight"> */}
              <img className="side_item" src={sideImage} alt="side_image" />
            {/* </ScrollAnimation> */}
          </div>
        </div>
      </section>
    );
  }
}

SloganWithRedirect.propTypes = {};

export default SloganWithRedirect;
