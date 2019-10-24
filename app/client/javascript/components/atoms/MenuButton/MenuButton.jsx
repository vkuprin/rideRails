import React, { PureComponent } from 'react';

class MenuButton extends PureComponent {
  constructor(props) {
    super(props);
    const { color, open } = this.props;
    this.state = {
      open: open || false,
      color: color || 'black',
    };
  }

  componentDidUpdate(nextProps) {
    const { open } = nextProps;
    if (open !== this.state.open) {
      this.setState({ open });
    }
  }

  handleClick() {
    this.setState({ open: !this.state.open });
  }

  render() {
    const styles = {
      container: {
        position: 'absolute',
        right: 0,
        height: '80px',
        width: '46px',
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'center',
        alignItems: 'center',
        cursor: 'pointer',
        padding: '4px',
      },
      line: {
        height: '2px',
        width: '20px',
        background: this.state.color,
        transition: 'all 0.2s ease',
      },
      lineTop: {
        transform: this.state.open ? 'rotate(45deg)' : 'none',
        transformOrigin: 'top left',
        marginBottom: '5px',
      },
      lineMiddle: {
        opacity: this.state.open ? 0 : 1,
        transform: this.state.open ? 'translateX(-16px)' : 'none',
      },
      lineBottom: {
        transform: this.state.open ? 'translateX(-1px) rotate(-45deg)' : 'none',
        transformOrigin: 'top left',
        marginTop: '5px',
      },
    };
    const { onClick } = this.props;
    return (
      <div
        style={styles.container}
        onClick={onClick || (() => {
          this.handleClick();
        })}
      >
        <div style={{ ...styles.line, ...styles.lineTop }} />
        <div style={{ ...styles.line, ...styles.lineMiddle }} />
        <div style={{ ...styles.line, ...styles.lineBottom }} />
      </div>
    );
  }
}

MenuButton.propTypes = {};

export default MenuButton;
