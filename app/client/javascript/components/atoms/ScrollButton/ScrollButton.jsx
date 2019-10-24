import React from 'react';
import PropTypes from 'prop-types';
import {TinyButton as ScrollUpButton} from 'react-scroll-up-button';  //Add this line Here
import './ScrollButton.scss'

const ScrollButton = (props) => {
  return (
    <ScrollUpButton
      StopPosition={0}
      ShowAtPosition={150}
      EasingType='easeOutCubic'
      AnimationDuration={500}
      ContainerClassName='ScrollUpButton--container'
      TransitionClassName='ScrollUpButton--toggled'
      style={{width: '45px', height: '45px', borderRadius: '4px', fill: '#ffff', backgroundColor: '#b0be36'}}
    />
  )
}

ScrollButton.propTypes = {

};

export default ScrollButton;

