{
  description = "A flake providing a collection of zsh plugins";

  inputs = {
    zsh-syntax-highlighting = {
      url = "github:zsh-users/zsh-syntax-highlighting";
      flake = false;
    };

    zsh-completions = {
      url = "github:zsh-users/zsh-completions";
      flake = false;
    };

    zsh-autosuggestions = {
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
      syntax-highlighting = inputs.zsh-syntax-highlighting;
      zsh-completions = inputs.zsh-completions;
      zsh-autosuggestions = inputs.zsh-autosuggestions;
      fzf-tab = inputs.fzf-tab;
    };
}
