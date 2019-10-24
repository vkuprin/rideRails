import React, { PureComponent } from 'react';

class Menu extends PureComponent {
  constructor(props) {
    super(props);
    this.state = {
      open: this.props.open ? this.props.open : false,
    };
  }

  componentDidUpdate(nextProps) {
    if (nextProps.open !== this.state.open) {
      this.setState({ open: nextProps.open });
    }
  }

  render() {
    const { open } = this.state;
    const styles = {
      container: {
        position: 'absolute',
        top: 0,
        left: 0,
        height: open ? '100vh' : 100,
        // width: '100vw',
        display: 'flex',
        flexDirection: 'column',
        background: 'white',
        // opacity: 0.95,
        color: '#fafafa',
        transition: 'height 0.3s ease',
        zIndex: 3,
      },
      menuList: {
        paddingTop: '8rem',
      },
    };
    const { children } = this.props;
    return (
      <div style={styles.container}>
        {open ? (
          <div style={styles.menuList}>
            {children}
          </div>
        ) : null}
      </div>
    );
  }
}

export default Menu;
