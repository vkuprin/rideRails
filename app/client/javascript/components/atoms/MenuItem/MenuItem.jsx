import React, { PureComponent } from 'react';

class MenuItem extends PureComponent {
  constructor(props) {
    super(props);
    this.state = {
      hover: false,
    };
  }

  handleHover() {
    this.setState({ hover: !this.state.hover });
  }

  render() {
    const { onClick, delay, children } = this.props;
    const styles = {
      container: {
        opacity: 0,
        animation: '1s appear forwards',
        animationDelay: delay,
      },
      menuItem: {
        fontFamily: '\'Nunito',
        fontSize: '1.5rem',
        padding: '1rem 0',
        margin: '0 5%',
        cursor: 'pointer',
        color: this.state.hover ? '#b0be36' : '#213d63',
        transition: 'color 0.2s ease-in-out',
        animation: '0.5s slideIn forwards',
        animationDelay: delay,

      },
      line: {
        width: '90%',
        height: '1px',
        background: '#b0be36',
        margin: '0 auto',
        animation: '0.5s shrink forwards',
        animationDelay: delay,

      },
    };
    return (
      <div style={styles.container}>
        <div
          style={styles.menuItem}
          onMouseEnter={() => { this.handleHover(); }}
          onMouseLeave={() => { this.handleHover(); }}
          onClick={onClick}
        >
          {children}
        </div>
        <div style={styles.line} />
      </div>
    );
  }
}

MenuItem.propTypes = {};

export default MenuItem;
