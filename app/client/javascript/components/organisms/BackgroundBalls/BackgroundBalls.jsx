import React from 'react';
import './BackgroundBalls.scss';

const Balls = (props) => (
  <div className="balls_item">
    {props.children}
  </div>
);

const hoc = (WrappedComponent) => (props) => (
  <div className="balls_container">
    <WrappedComponent {...props}>
      {props.children}
    </WrappedComponent>
  </div>
);

const BackgroundBalls = hoc(Balls);

export default BackgroundBalls;
