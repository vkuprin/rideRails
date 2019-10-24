import React from 'react';

class MobileMenuItems extends React.Component {
  constructor(props) {
    super(props);
    const { open } = this.props;
    this.state = {
      open: open ? open : false,
    };
  }

  componentWillReceiveProps({ open }) {
    if (open !== this.state.open) {
      this.setState({ open: open });
    }
  }

  render() {
    const { open } = this.state;
    const styles = {
      container: {
        position: 'absolute',
        top: '100px',
        left: 0,
        height: open ? '100vh' : 0,
        width: '100vw',
        display: 'flex',
        flexDirection: 'column',

        background: '#ffff',
        color: '#213d63',
        transition: 'height 0.3s ease',
        zIndex: 2,
      },
      menuList: {
        paddingTop: '3rem',
      },
    };
    return (
      <div className="show-mobile-menu" style={styles.container}>
        {
          open
            ? (
              <div style={styles.menuList}>
                {this.props.children}
              </div>
            ) : null
        }
      </div>
    );
  }
}

export default MobileMenuItems;
