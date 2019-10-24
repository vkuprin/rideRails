import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { Link } from 'react-router-dom'


class Test2 extends Component {
  static propTypes = {

  }

  render() {
    return (
      <div>
        <h1>TEST2</h1>
        <Link to="/">Home</Link>
      </div>
    )
  }
}

export default Test2
