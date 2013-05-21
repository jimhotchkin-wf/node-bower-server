# BUILD PACKAGES
  include_recipe "nodejs"
####

# postgresql install
bash "apt-get-postgresql" do
    user "root"
    code <<-EOH
        apt-get -y install postgresql
    EOH
end
####

# npm packages
bash "npm" do
  user "root"
  code <<-EOH
    cd /vagrant
    npm install
  EOH
end
####