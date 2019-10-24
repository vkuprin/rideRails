import React from 'react'
import ReactDOM from 'react-dom'
import App from '../components/App'
import { Provider } from 'react-redux';
import ReactOnRails from 'react-on-rails';
import { BrowserRouter, StaticRouter } from 'react-router-dom'

const store = ReactOnRails.getStore('routerCommentsStore');


class General extends React.Component {

  renderRouter = () => {
    if(typeof window !== 'undefined') {
      return(
        <Provider store={store}>
          <BrowserRouter>
            <App sveiki="123" faqList={this.props.itemList}/>
          </BrowserRouter>
        </Provider>
      )
    } else {
      return(
        <Provider store={store}>
          <StaticRouter location={this.props.path} context={{}}>
            <App faqList={this.props.itemList}/>
          </StaticRouter>
        </Provider>
      )
    }
  }

  render() {
    return(this.renderRouter())
  }
}

export default General;
