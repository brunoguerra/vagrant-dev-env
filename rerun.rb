require 'erb'

pre_funcs = "<% def import(file); File.read(file); end %>";

ferb = File.open(File.dirname(__FILE__)+"/rerun.sh.erb", "rb");
fw = File.new(File.dirname(__FILE__)+"/rerun.sh", File::CREAT|File::TRUNC|File::RDWR, 0644)

fw.write(ERB.new(pre_funcs+ferb.read).result);