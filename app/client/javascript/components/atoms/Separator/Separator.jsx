import React from 'react';
import './Separator.scss';

const Separator = (props) => {
  const inlineStyles = {};

  const { bottomLineColor, topLineColor, position, width } = props;
  if (topLineColor) {
    inlineStyles.borderTopColor = topLineColor;
  }

  if (bottomLineColor) {
    inlineStyles.borderBottomColor = bottomLineColor;
  }

  if (width) {
    inlineStyles.width = width;
  }

  if (position === 'left') {
    inlineStyles['margin-left'] = '0px';
  }

  if (position === 'right') {
    inlineStyles['margin-right'] = '0px';
  }

  return (
    <div className="separator" style={inlineStyles}/>
  );
}

Separator.propTypes = {};

export default Separator;
