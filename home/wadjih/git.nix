{ ... }:

{
  programs.git = {
    enable = true;
    userName = "Dewadhack";
    userEmail = "wadjih@local";
    extraConfig = {
      init.defaultBranch = "master";
      pull.rebase = false;
    };
  };
}
