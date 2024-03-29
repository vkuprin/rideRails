import React from 'react';
import PropTypes from 'prop-types';

const MobileMenu = (props) => {

  const width = `${props.width || 36}px`;
  const height = `${props.height || 30}px`;
  const halfHeight = `${(parseInt(height.replace('px', '')) >> 1)}px`;
  const isOpen = props.isOpen || false;
  const strokeWidth = props.strokeWidth || 2;
  const halfStrokeWidth = `-${strokeWidth / 2}px`;
  const animationDuration = props.animationDuration || '0.4';

  const getTransformValue = (isOpen, defaultPos, rotateVal) => (
    `translate3d(0,${isOpen ? halfHeight : defaultPos},0) rotate(${isOpen ? `${rotateVal}deg` : '0'})`
  );

  const styles = {
    container: {
      width,
      height,
      position: 'relative',
      transform: `rotate(${props.rotate || 0}deg)`,
    },
    lineBase: {
      display: 'block',
      height: `${strokeWidth}px`,
      width: '100%',
      background: props.color || '#000',
      transitionTimingFunction: 'ease',
      transitionDuration: `${animationDuration}s`,
      borderRadius: `${props.borderRadius || 0}px`,
      transformOrigin: 'center',
      position: 'absolute',
    },
    firstLine: {
      transform: getTransformValue(isOpen, 0, 45),
      marginTop: halfStrokeWidth,
    },
    secondLine: {
      transitionTimingFunction: 'ease-out',
      transitionDuration: `${animationDuration / 4}s`,
      opacity: isOpen ? '0' : '1',
      top: halfHeight,
      marginTop: halfStrokeWidth,
    },
    thirdLine: {
      transform: getTransformValue(isOpen, height, -45),
      marginTop: halfStrokeWidth,
    },
  };

  return (
    <div style={styles.container} onClick={props.menuClicked}>
      <span style={({ ...styles.lineBase, ...styles.firstLine })} />
      <span style={({ ...styles.lineBase, ...styles.secondLine })} />
      <span style={({ ...styles.lineBase, ...styles.thirdLine })} />
    </div>
  );
};

MobileMenu.propTypes = {
  // isOpen: PropTypes.bool.isRequired,
  menuClicked: PropTypes.func.isRequired,
  width: PropTypes.number,
  height: PropTypes.number,
  strokeWidth: PropTypes.number,
  rotate: PropTypes.number,
  color: PropTypes.string,
  borderRadius: PropTypes.number,
  animationDuration: PropTypes.number,
};

export default MobileMenu;
