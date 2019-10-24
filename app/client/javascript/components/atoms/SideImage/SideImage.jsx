import React from 'react';
import PropTypes from 'prop-types';
import image from '@images/crop_side_image.svg';
import './SideImage.scss';

const SideImage = (props) => (
  <div className="side_images_background">
    <div className="side_images">
      <div className="parallax">
        <img className="side_image_wrapper" src={image} />
        {/* <img className="side_image_inner" src={image_inner}/> */}
      </div>
    </div>
  </div>
);

SideImage.propTypes = {

};

export default SideImage;
