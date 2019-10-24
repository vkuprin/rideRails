import React, { useState, useEffect, Component } from 'react';
import PropTypes from 'prop-types';
import Head from '@molecules/Head/Head';
import FeatureProducts from '@molecules/FeatureProducts/FeatureProducts';
import BlueSection from '@organisms/BlueSection/BlueSection';
import News from '@molecules/News/News';
import { Link } from 'react-router-dom';
import useAxios from 'axios-hooks'
import axios from 'axios'

// require('es6-promise').polyfill();
// import fetch from ('isomorphic-fetch');
// console.log(this.props.itemList[0].subject)

class Home extends React.Component {
  constructor(props) {
    super(props)
    this.scream = this.scream.bind(this);
    this.gotFetch = this.gotFetch.bind(this);


    this.state = {
      posts: [],
      sveiki: null,
    }
  }

  scream() {
    console.log(this.props.posts)
  }

  componentDidMount() {
    // axios
    //   .get('/api/posts')
    //   .then(response => {
    //     this.setState({ posts: response.data.posts });
    //   })

    fetch('/api/posts')
    .then(function(response) {
        if (response.status >= 400) {
            throw new Error("Bad response from server");
        }
        return response.json();
    })
    .then(function(stories) {
        // this.setState({ posts: response.data.posts });
        // console.log(stories);
        this.setState({ posts: "lol" })
        console.log(stories);
    });
  }

  gotFetch = () => {
    fetch('/api/posts')
    .then(function(response) {
        if (response.status >= 400) {
            throw new Error("Bad response from server");
        }
        return response.json();
    })
    .then(function(stories) {
      console.log(stories)
      this.setState
      this.setState({ posts: stories.posts })
      return stories
    });
  }

  renderAllPosts = () => {
    return(
      <ul>
        {this.state.posts.map(post => (
          <li key={post}>{post}</li>
        ))}
      </ul>
    )
  }

  render() {
    return (
      <div>
        <Head />
        <FeatureProducts />
        {/* <BlueSection/> */}
        <News />
        <Link to="/about-us">About Us</Link>
          <pre>{this.props.faqList}</pre>
          <pre>{this.props.sveiki}</pre>
          <div>
          {this.renderAllPosts()}
          </div>
          {this.props.title}
          <input type='button' value="ItemList" onClick={this.scream} />
          <input type='button' value="Fetch Test" onClick={this.gotFetch} />
          {
          this.props.newList.map((faq) => (
            <div>
              {' '}
              {faq.description}
              {' '}
            </div>
          ))
        }
      </div>
    )
  }
}

export default Home;

