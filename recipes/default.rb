include_recipe "libcomerr"
include_recipe "libkrb5support"
include_recipe "libk5crypto"
include_recipe "libkeyutils"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libkrb5-3
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
