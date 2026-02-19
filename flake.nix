{
  description = "NixOS Flake của Hòa - Legion 5";

  inputs = {
    # Nguồn gói phần mềm (Unstable cho app mới nhất)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    #Repo NVF
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
    ...
  } @ inputs: {
    # 'nixos' là hostname (Hòa có thể đổi tên này sau nếu thích)
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration.nix
        nvf.nixosModules.default
      ];
    };
  };
}
