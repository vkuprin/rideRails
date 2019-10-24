import React from 'react';
import Home from '@organisms/Home/Home';
import AboutUs from '@organisms/AboutUs/AboutUs';
import { Route, Switch } from 'react-router-dom';

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      faqList: [],
    };
  }

  componentDidMount() {
    console.log('Hello from APP JS');
    console.log(this.props.faqList);
  }

  render() {
    return (
      <div>
        <Switch>
          <Route exact path="/" render={(props) => <Home {...props} newList={this.props.faqList} />} />
          <Route exact path="/about-us" component={AboutUs} />
        </Switch>
      </div>
    );
  }
}

export default App;
