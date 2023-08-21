require "test_helper"

class SupportMailboxTest < ActionMailbox::TestCase
  test "we create a SupportRequest when we get a support email" do

    recent_order = orders(:one)
    older_order = orders(:another_one)
    non_customer = orders(:other_customer)

    receive_inbound_email_from_mail(
      to: "tiwarij657@gmail.com",
      from: 'jt744577@gmail.com',
      subject: "Hello world!",
      body: "Hello?"
    )

    support_request = SupportRequest.last
    assert_equal "jt744577@gmail.com", support_request.email
    assert_equal "Need help", support_request.subject
    assert_equal "I can't figure out how to check out!!", support_request.body
    assert_nil support_request.order

  end
end
