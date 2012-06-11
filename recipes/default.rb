packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libkrb5-3
  /
when "precise"
  packages |= %w/
    libkrb5-3
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
