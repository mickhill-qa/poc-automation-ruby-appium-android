class LoginEmailPage < PageObjectHelper

  def initialize
    @input_email    = mapping :id, "inputEmail"
    @btn_next       = mapping :id, "btnActionSignIn"
    @msg_input_erro = mapping :id, "textinput_error"
  end

  def fill_in_input_email(email)
    find_element(@input_email).send_key email
  end

  def click_btn_next
    find_element(@btn_next).click
  end

  def get_msg_erro_input
    find_element(@msg_input_erro).text
  end

end
