{
  description = "A flake providing a collection of zsh plugins";

  inputs = {
    syntax-highlighting = {
      url = "github:zsh-users/zsh-syntax-highlighting";
      flake = false;
    };

    completions = {
      url = "github:zsh-users/zsh-completions";
      flake = false;
    };

    autosuggestions = {
      url = "github:zsh-users/zsh-autosuggestions";
      flake = false;
    };

    fzf-tab = {
      url = "github:aloxaf/fzf-tab";
      flake = false;
    };
  };

  outputs =
    { self, ... }@inputs:
    {
      syntax-highlighting = inputs.syntax-highlighting;
      completions = inputs.completions;
      autosuggestions = inputs.autosuggestions;
      fzf-tab = inputs.fzf-tab;
    };
}
