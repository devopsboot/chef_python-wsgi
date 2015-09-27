override['python']['install_method'] = 'source'
override['python']['prefix_dir'] = '/opt/python'

override['python']['binary'] = "#{node['python']['prefix_dir']}/bin/python"

override['python']['url'] = 'http://www.python.org/ftp/python'
override['python']['version'] = '2.7.8'
override['python']['checksum'] = '74d70b914da4487aa1d97222b29e9554d042f825f26cb2b93abd20fdda56b557'
override['python']['configure_options'] = %W{--prefix=#{python['prefix_dir']}}
override['python']['make_options'] = %W{install}

override['python']['pip_location'] = "#{node['python']['prefix_dir']}/bin/pip"
override['python']['virtualenv_location'] = "#{node['python']['prefix_dir']}/bin/virtualenv"



