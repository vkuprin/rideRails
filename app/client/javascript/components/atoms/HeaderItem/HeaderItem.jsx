import React, { PureComponent } from 'react';
class HeaderItem extends PureComponent {
  render() {
    return (
      <li className="menu-item menu-item-type-post_type menu-item-object-page">
        <a href={this.props.route} className="menu-link">
          <span className="text-wrap">
            {this.props.name}
          </span>
        </a>
      </li>
    );
  }
}

export default HeaderItem;
