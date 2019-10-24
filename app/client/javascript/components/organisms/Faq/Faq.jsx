import React from 'react';
import Accordion from '@atoms/Accordion/Accordion';

class Faq extends React.Component {
  // const { itemList } = this.props;
  constructor(props) {
    super(props)

    this.state = {
      itemList: []
    }
  }

  componentDidMount() {
    // console.log(this.props.itemList[0].subject)
    localStorage.setItem(this.props.itemList)
  }

  render() {
    return (
      <div className="faq_container">
      <Accordion>
        {
          this.props.itemList.map((faq) => (
            <div
              key={faq.id}
              label={faq.subject}
            >
              {' '}
              {faq.description}
              {' '}
            </div>
          ))
        }
      </Accordion>
    </div>
    )
  }
}

export default Faq;
