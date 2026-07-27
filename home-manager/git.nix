{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Mirza Faris Al Arifin";
        email = "alarifinmirzafaris@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
}
