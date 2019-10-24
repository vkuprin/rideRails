import React, { PureComponent } from 'react';
import PropTypes from 'prop-types';

class AccordionSection extends PureComponent {
  static propTypes = {
    children: PropTypes.instanceOf(Object).isRequired,
    // isOpen: PropTypes.bool.isRequired,
    label: PropTypes.string.isRequired,
    onClick: PropTypes.func.isRequired,
  };

  onClick = () => {
    this.props.onClick(this.props.label);
  };

  render() {
    const {
      onClick,
      props: { isOpen, label, sveiki },
    } = this;
    const active = `${this.props.isOpen ? 'accordion_active' : null}`;
    return (
      <div onClick={onClick} className={`accordion_section ${active}`}>
        <div className="accordion_label">
          {label}
          {sveiki}
          <div style={{ float: 'right' }}>
            {isOpen && <span className="open">close</span>}
            {!isOpen && <span className="open">open</span>}
          </div>
        </div>
        {isOpen && (
          <div className="accordion_description">
            {this.props.children}
          </div>
        )}
      </div>
    );
  }
}

export default AccordionSection;
