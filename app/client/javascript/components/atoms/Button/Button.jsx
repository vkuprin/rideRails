import React from 'react';
import Button from '@material/react-button';
import './mdcButton.scss';
import './ButtonStyles.scss';

const Buttons = (props) => (
  <div className="readMore">
    {/* <a
      href={props.link || '#'}
      className={`button ${props.color || 'green'} rounded`}
    >
      {props.name}
    </a> */}
    <Button unelevated>
      {props.name}
    </Button>
  </div>
);

Button.propTypes = {};

export default Buttons;
