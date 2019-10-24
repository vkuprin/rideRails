import React, { PureComponent } from 'react';
import './ContactForm.scss';
import './SelectStyles.scss';
import Select, { Option } from 'rc-select';

class ContactForm extends PureComponent {
  constructor(props) {
    super(props);
    this.state = { value: 'coconut' };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ value: event.target.value });
  }

  handleSubmit(event) {
    const { value } = this.state;
    alert(`Choose Your subject ${value}`);
    event.preventDefault();
  }

  render() {
    return (
      <form className="contact_form">
        <div className="form_container">
          <input className="contact_input contact_name" type="text" name="name" placeholder="Your Name" />
          <input className="contact_input" type="email" name="email" placeholder="Your email" />
          <Select placeholder="Choose Your subject" animation="slide-up">
            <Option value="jack">This is your subject 1</Option>
            <Option value="lucy">This is your subject 2</Option>
            <Option value="yiminghe">This is your subject 3</Option>
          </Select>
          <textarea className="contact_textarea" name="message" id="" cols="30" rows="10" placeholder="Message" />
          <input className="contact_button" type="button" value="SEND" />
        </div>
      </form>
    );
  }
}

export default ContactForm;
