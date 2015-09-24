class SignupActivity < Android::Support::V4::App::FragmentActivity

  def on_create_menu(menu)
    @menu = menu
    getMenuInflater().inflate(R::Menu::Signup_menu, menu)
    true
  end

  def onCreate(saved_instance_state)
    super
    self.title = "Signup"
    setContentView(R::Layout::Fragment_container)
    s = SignupFragment.new
    s.arguments = self.intent.extras
    getSupportFragmentManager.beginTransaction.add(R::Id::Fragment_container, s, "").commit
  end

end