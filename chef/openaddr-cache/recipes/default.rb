git '/var/opt/openaddresses-cache' do
  repository 'https://github.com/openaddresses/openaddresses-cache.git'
  reference 'master'
end

execute 'npm install' do
  cwd '/var/opt/openaddresses-cache'
end