package 'gdal-bin'
package 'nodejs'
package 'npm'

git '/var/opt/openaddresses-conform' do
  repository 'https://github.com/sbma44/openaddresses-conform.git'
  reference 'async-tests-refactor'
end

# One package used here is tetchy about node vs. nodejs
link '/usr/bin/node' do
  to '/usr/bin/nodejs'
end

execute 'npm install' do
  cwd '/var/opt/openaddresses-conform'
end
