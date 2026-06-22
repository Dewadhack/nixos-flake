{ ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Dewadhack";
      user.email = "wadjih@local";
      init.defaultBranch = "master";
      pull.rebase = false;
    };
  };
}
