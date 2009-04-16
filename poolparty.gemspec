# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{poolparty}
  s.version = "1.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ari Lerner"]
  s.date = %q{2009-04-16}
  s.description = %q{Self-healing, auto-scaling system administration, provisioning and maintaining tool that makes cloud computing fun and easy}
  s.email = %q{ari.lerner@citrusbyte.com}
  s.executables = ["cloud", "cloud-bootstrap", "cloud-configure", "cloud-console", "cloud-contract", "cloud-expand", "cloud-handle-load", "cloud-list", "cloud-osxcopy", "cloud-provision", "cloud-rsync", "cloud-run", "cloud-setup-dev", "cloud-show", "cloud-spec", "cloud-ssh", "cloud-start", "cloud-stats", "cloud-terminate", "ec2-list-active", "messenger-get-current-nodes", "pool", "pool-describe", "pool-generate", "pool-init", "pool-list", "pool-start", "server-become-master", "server-build-messenger", "server-butterfly", "server-clean-cert-for", "server-cloud-elections", "server-ensure-provisioning", "server-fire-cmd", "server-get-load", "server-list-active", "server-list-instances", "server-manage-election", "server-monitor.ru", "server-provision", "server-query-agent", "server-rerun", "server-send-command", "server-show-stats", "server-start-agent", "server-start-client", "server-start-master", "server-start-node", "server-stop-client", "server-stop-master", "server-stop-node", "server-update-hosts", "server-write-new-nodes"]
  s.extra_rdoc_files = ["README.txt", "License.txt", "History.txt"]
  s.files = ["Rakefile", "History.txt", "README.txt", "PostInstall.txt", "License.txt", "VERSION.yml", "config/jeweler.rb", "config/requirements.rb", "examples/basic.rb", "examples/deploy.rb", "examples/fairchild.rb", "examples/fairchild_chef.rb", "examples/paparazzi.conf.erb", "examples/plugin_without_plugin_directory.rb", "examples/poolparty.rb", "lib/erlang", "lib/erlang/messenger", "lib/erlang/messenger/control", "lib/erlang/messenger/ebin", "lib/erlang/messenger/ebin/client.app", "lib/erlang/messenger/ebin/master.app", "lib/erlang/messenger/ebin/node.app", "lib/erlang/messenger/ebin/packager.app", "lib/erlang/messenger/ebin/pm_client_rel-0.1.rel", "lib/erlang/messenger/ebin/pm_master_rel-0.1.rel", "lib/erlang/messenger/ebin/pm_node_rel-0.1.rel", "lib/erlang/messenger/Emakefile", "lib/erlang/messenger/include", "lib/erlang/messenger/include/defines.hrl", "lib/erlang/messenger/lib", "lib/erlang/messenger/lib/eunit", "lib/erlang/messenger/lib/eunit/AUTHORS", "lib/erlang/messenger/lib/eunit/CHANGELOG", "lib/erlang/messenger/lib/eunit/COPYING", "lib/erlang/messenger/lib/eunit/doc", "lib/erlang/messenger/lib/eunit/doc/edoc-info", "lib/erlang/messenger/lib/eunit/doc/erlang.png", "lib/erlang/messenger/lib/eunit/doc/eunit.html", "lib/erlang/messenger/lib/eunit/doc/index.html", "lib/erlang/messenger/lib/eunit/doc/modules-frame.html", "lib/erlang/messenger/lib/eunit/doc/overview-summary.html", "lib/erlang/messenger/lib/eunit/doc/overview.edoc", "lib/erlang/messenger/lib/eunit/doc/packages-frame.html", "lib/erlang/messenger/lib/eunit/doc/stylesheet.css", "lib/erlang/messenger/lib/eunit/ebin", "lib/erlang/messenger/lib/eunit/ebin/autoload.beam", "lib/erlang/messenger/lib/eunit/ebin/code_monitor.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit.app", "lib/erlang/messenger/lib/eunit/ebin/eunit.appup", "lib/erlang/messenger/lib/eunit/ebin/eunit.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_autoexport.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_data.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_lib.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_proc.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_serial.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_server.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_striptests.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_test.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_tests.beam", "lib/erlang/messenger/lib/eunit/ebin/eunit_tty.beam", "lib/erlang/messenger/lib/eunit/ebin/file_monitor.beam", "lib/erlang/messenger/lib/eunit/examples", "lib/erlang/messenger/lib/eunit/examples/eunit_examples.erl", "lib/erlang/messenger/lib/eunit/examples/fib.erl", "lib/erlang/messenger/lib/eunit/examples/tests.txt", "lib/erlang/messenger/lib/eunit/include", "lib/erlang/messenger/lib/eunit/include/eunit.hrl", "lib/erlang/messenger/lib/eunit/Makefile", "lib/erlang/messenger/lib/eunit/NOTES", "lib/erlang/messenger/lib/eunit/README", "lib/erlang/messenger/lib/eunit/src", "lib/erlang/messenger/lib/eunit/src/autoload.erl", "lib/erlang/messenger/lib/eunit/src/code_monitor.erl", "lib/erlang/messenger/lib/eunit/src/eunit.app.src", "lib/erlang/messenger/lib/eunit/src/eunit.appup.src", "lib/erlang/messenger/lib/eunit/src/eunit.erl", "lib/erlang/messenger/lib/eunit/src/eunit_autoexport.erl", "lib/erlang/messenger/lib/eunit/src/eunit_data.erl", "lib/erlang/messenger/lib/eunit/src/eunit_internal.hrl", "lib/erlang/messenger/lib/eunit/src/eunit_lib.erl", "lib/erlang/messenger/lib/eunit/src/eunit_proc.erl", "lib/erlang/messenger/lib/eunit/src/eunit_serial.erl", "lib/erlang/messenger/lib/eunit/src/eunit_server.erl", "lib/erlang/messenger/lib/eunit/src/eunit_striptests.erl", "lib/erlang/messenger/lib/eunit/src/eunit_test.erl", "lib/erlang/messenger/lib/eunit/src/eunit_tests.erl", "lib/erlang/messenger/lib/eunit/src/eunit_tty.erl", "lib/erlang/messenger/lib/eunit/src/file_monitor.erl", "lib/erlang/messenger/lib/eunit/src/Makefile", "lib/erlang/messenger/lib/eunit/sys.config", "lib/erlang/messenger/lib/eunit/vsn.mk", "lib/erlang/messenger/Makefile", "lib/erlang/messenger/pm_client_rel-0.1.boot", "lib/erlang/messenger/pm_client_rel-0.1.script", "lib/erlang/messenger/pm_master_rel-0.1.boot", "lib/erlang/messenger/pm_master_rel-0.1.script", "lib/erlang/messenger/pm_node_rel-0.1.boot", "lib/erlang/messenger/pm_node_rel-0.1.script", "lib/erlang/messenger/Rakefile", "lib/erlang/messenger/README", "lib/erlang/messenger/src", "lib/erlang/messenger/src/client_app.erl", "lib/erlang/messenger/src/client_server.erl", "lib/erlang/messenger/src/master_app.erl", "lib/erlang/messenger/src/node_app.erl", "lib/erlang/messenger/src/pm_client.erl", "lib/erlang/messenger/src/pm_client_supervisor.erl", "lib/erlang/messenger/src/pm_cluster.erl", "lib/erlang/messenger/src/pm_event_manager.erl", "lib/erlang/messenger/src/pm_master.erl", "lib/erlang/messenger/src/pm_master_event_handler.erl", "lib/erlang/messenger/src/pm_master_supervisor.erl", "lib/erlang/messenger/src/pm_node.erl", "lib/erlang/messenger/src/pm_node_supervisor.erl", "lib/erlang/messenger/src/pm_packager.erl", "lib/erlang/messenger/src/pm_spawner.erl", "lib/erlang/messenger/src/pm_strings.erl", "lib/erlang/messenger/src/utils.erl", "lib/erlang/messenger/useful_snippets", "lib/poolparty", "lib/poolparty/aska", "lib/poolparty/aska/aska.rb", "lib/poolparty/base_packages", "lib/poolparty/base_packages/bind.rb", "lib/poolparty/base_packages/haproxy.rb", "lib/poolparty/base_packages/heartbeat.rb", "lib/poolparty/base_packages/poolparty.rb", "lib/poolparty/base_packages/ruby.rb", "lib/poolparty/base_packages/runit.rb", "lib/poolparty/base_packages/tokyo_tyrant.rb", "lib/poolparty/capistrano", "lib/poolparty/capistrano/cloud_tasks.rb", "lib/poolparty/capistrano.rb", "lib/poolparty/config", "lib/poolparty/config/postlaunchmessage.txt", "lib/poolparty/core", "lib/poolparty/core/array.rb", "lib/poolparty/core/class.rb", "lib/poolparty/core/exception.rb", "lib/poolparty/core/float.rb", "lib/poolparty/core/hash.rb", "lib/poolparty/core/kernel.rb", "lib/poolparty/core/metaid.rb", "lib/poolparty/core/module.rb", "lib/poolparty/core/my_open_struct.rb", "lib/poolparty/core/object.rb", "lib/poolparty/core/ordered_hash.rb", "lib/poolparty/core/proc.rb", "lib/poolparty/core/string.rb", "lib/poolparty/core/symbol.rb", "lib/poolparty/core/time.rb", "lib/poolparty/dependencies.rb", "lib/poolparty/dependency_resolver", "lib/poolparty/dependency_resolver/chef_resolver.rb", "lib/poolparty/dependency_resolver/dependency_resolver.rb", "lib/poolparty/dependency_resolver/dependency_resolver_cloud_extensions.rb", "lib/poolparty/dependency_resolver/puppet.rb", "lib/poolparty/dependency_resolver/puppet_resolver.rb", "lib/poolparty/exceptions", "lib/poolparty/exceptions/CloudNotFoundException.rb", "lib/poolparty/exceptions/dependency_resolver_exception.rb", "lib/poolparty/exceptions/LoadRulesException.rb", "lib/poolparty/exceptions/MasterException.rb", "lib/poolparty/exceptions/package_exception.rb", "lib/poolparty/exceptions/ProvisionerException.rb", "lib/poolparty/exceptions/RemoteException.rb", "lib/poolparty/exceptions/ResourceException.rb", "lib/poolparty/exceptions/RuntimeException.rb", "lib/poolparty/exceptions/SpecException.rb", "lib/poolparty/exceptions/TemplateNotFound.rb", "lib/poolparty/exceptions/UnacceptableCommand.rb", "lib/poolparty/extra", "lib/poolparty/extra/deployments.rb", "lib/poolparty/helpers", "lib/poolparty/helpers/binary.rb", "lib/poolparty/helpers/console.rb", "lib/poolparty/helpers/display.rb", "lib/poolparty/helpers/hash_printer.rb", "lib/poolparty/helpers/loading.rb", "lib/poolparty/helpers/nice_printer.rb", "lib/poolparty/helpers/optioner.rb", "lib/poolparty/helpers/ruberl.rb", "lib/poolparty/lite.rb", "lib/poolparty/modules", "lib/poolparty/modules/cloud_dsl.rb", "lib/poolparty/modules/cloud_resourcer.rb", "lib/poolparty/modules/daemonizable.rb", "lib/poolparty/modules/definable_resource.rb", "lib/poolparty/modules/file_writer.rb", "lib/poolparty/modules/output.rb", "lib/poolparty/modules/pretty_printer.rb", "lib/poolparty/modules/resourcing_dsl.rb", "lib/poolparty/modules/s3_string.rb", "lib/poolparty/modules/safe_instance.rb", "lib/poolparty/modules/thread_pool.rb", "lib/poolparty/monitors", "lib/poolparty/monitors/base_monitor.rb", "lib/poolparty/monitors/monitor_rack.rb", "lib/poolparty/monitors/monitors", "lib/poolparty/monitors/monitors/load_monitor.rb", "lib/poolparty/monitors/monitors/memory_monitor.rb", "lib/poolparty/monitors/monitors/server_monitor.rb", "lib/poolparty/monitors/monitors/web_monitor.rb", "lib/poolparty/monitors/neighborhood_monitor.rb", "lib/poolparty/monitors/stats_monitor.rb", "lib/poolparty/monitors.rb", "lib/poolparty/net", "lib/poolparty/net/init.rb", "lib/poolparty/net/messenger.rb", "lib/poolparty/net/remote_bases.rb", "lib/poolparty/net/remote_instance.rb", "lib/poolparty/net/remoter", "lib/poolparty/net/remoter/cloud_control.rb", "lib/poolparty/net/remoter/connections.rb", "lib/poolparty/net/remoter/interactive.rb", "lib/poolparty/net/remoter/lists.rb", "lib/poolparty/net/remoter_base.rb", "lib/poolparty/net/remoter_bases", "lib/poolparty/net/remoter_bases/ec2", "lib/poolparty/net/remoter_bases/ec2/ec2.rb", "lib/poolparty/net/remoter_bases/ec2/ec2_remote_instance.rb", "lib/poolparty/net/remoter_bases/ec2/ec2_response_object.rb", "lib/poolparty/plugins", "lib/poolparty/plugins/chef.rb", "lib/poolparty/plugins/deploy_directory.rb", "lib/poolparty/plugins/gem_package.rb", "lib/poolparty/plugins/git.rb", "lib/poolparty/plugins/line_in_file.rb", "lib/poolparty/plugins/rsyncmirror.rb", "lib/poolparty/plugins/runit.rb", "lib/poolparty/plugins/svn.rb", "lib/poolparty/poolparty", "lib/poolparty/poolparty/cloud.rb", "lib/poolparty/poolparty/custom_resource.rb", "lib/poolparty/poolparty/default.rb", "lib/poolparty/poolparty/key.rb", "lib/poolparty/poolparty/loggable.rb", "lib/poolparty/poolparty/neighborhoods.rb", "lib/poolparty/poolparty/plugin.rb", "lib/poolparty/poolparty/plugin_model.rb", "lib/poolparty/poolparty/pool.rb", "lib/poolparty/poolparty/poolparty_base_class.rb", "lib/poolparty/poolparty/resource.rb", "lib/poolparty/poolparty/script.rb", "lib/poolparty/poolparty/service.rb", "lib/poolparty/poolparty/template.rb", "lib/poolparty/provision", "lib/poolparty/provision/boot_strapper.rb", "lib/poolparty/provision/configurations", "lib/poolparty/provision/configurations/chef.rb", "lib/poolparty/provision/configurations/puppet.rb", "lib/poolparty/provision/dr_configure.rb", "lib/poolparty/resources", "lib/poolparty/resources/cron.rb", "lib/poolparty/resources/custom_service.rb", "lib/poolparty/resources/directory.rb", "lib/poolparty/resources/exec.rb", "lib/poolparty/resources/file.rb", "lib/poolparty/resources/host.rb", "lib/poolparty/resources/mount.rb", "lib/poolparty/resources/package.rb", "lib/poolparty/resources/remote_file.rb", "lib/poolparty/resources/service.rb", "lib/poolparty/resources/sshkey.rb", "lib/poolparty/resources/symlink.rb", "lib/poolparty/resources/user.rb", "lib/poolparty/resources/variable.rb", "lib/poolparty/schema.rb", "lib/poolparty/services", "lib/poolparty/services/conditional.rb", "lib/poolparty/spec", "lib/poolparty/spec/core", "lib/poolparty/spec/core/string.rb", "lib/poolparty/spec/matchers", "lib/poolparty/spec/matchers/a_spec_extensions_base.rb", "lib/poolparty/spec/matchers/have_cron.rb", "lib/poolparty/spec/matchers/have_deploydirectory.rb", "lib/poolparty/spec/matchers/have_directory.rb", "lib/poolparty/spec/matchers/have_exec.rb", "lib/poolparty/spec/matchers/have_file.rb", "lib/poolparty/spec/matchers/have_gempackage.rb", "lib/poolparty/spec/matchers/have_git.rb", "lib/poolparty/spec/matchers/have_host.rb", "lib/poolparty/spec/matchers/have_mount.rb", "lib/poolparty/spec/matchers/have_package.rb", "lib/poolparty/spec/matchers/have_remotefile.rb", "lib/poolparty/spec/matchers/have_rsyncmirror.rb", "lib/poolparty/spec/matchers/have_service.rb", "lib/poolparty/spec/matchers/have_sshkey.rb", "lib/poolparty/spec/matchers/have_symlink.rb", "lib/poolparty/spec/matchers/have_variable.rb", "lib/poolparty/spec/spec", "lib/poolparty/spec/spec/dynamic_matchers.rb", "lib/poolparty/spec/spec/ensure_matchers_exist.rb", "lib/poolparty/spec/templates", "lib/poolparty/spec/templates/have_base.rb", "lib/poolparty/spec.rb", "lib/poolparty/templates", "lib/poolparty/templates/authkeys", "lib/poolparty/templates/chef", "lib/poolparty/templates/cib.xml", "lib/poolparty/templates/erlang_cookie_maker", "lib/poolparty/templates/gem", "lib/poolparty/templates/gemrc", "lib/poolparty/templates/ha.cf", "lib/poolparty/templates/haproxy.conf", "lib/poolparty/templates/haresources", "lib/poolparty/templates/logd.cf", "lib/poolparty/templates/messenger", "lib/poolparty/templates/messenger/client", "lib/poolparty/templates/messenger/client/log-run.erb", "lib/poolparty/templates/messenger/client/run.erb", "lib/poolparty/templates/messenger/master", "lib/poolparty/templates/messenger/master/log-run.erb", "lib/poolparty/templates/messenger/master/run.erb", "lib/poolparty/templates/messenger/node", "lib/poolparty/templates/messenger/node/log-run.erb", "lib/poolparty/templates/messenger/node/run.erb", "lib/poolparty/templates/monitor.ru", "lib/poolparty/templates/namespaceauth.conf", "lib/poolparty/templates/poolparty.monitor", "lib/poolparty/templates/puppet", "lib/poolparty/templates/puppet/add_puppet_to_hosts", "lib/poolparty/templates/puppet/puppet.conf", "lib/poolparty/templates/puppet/puppetrunner", "lib/poolparty/templates/puppet/site.pp", "lib/poolparty/templates/puppetrunner", "lib/poolparty/templates/yaws.conf", "lib/poolparty/version.rb", "lib/poolparty.rb", "lib/poolpartycl.rb", "spec/bin", "spec/bin/bin_spec_helper.rb", "spec/bin/fixtures", "spec/bin/fixtures/bin_cloud_for_test.rb", "spec/bin/server-list-active_spec.rb", "spec/poolparty", "spec/poolparty/aska", "spec/poolparty/aska/aska_spec.rb", "spec/poolparty/base_packages", "spec/poolparty/base_packages/haproxy_spec.rb", "spec/poolparty/base_packages/heartbeat_spec.rb", "spec/poolparty/bin", "spec/poolparty/bin/console_spec.rb", "spec/poolparty/core", "spec/poolparty/core/array_spec.rb", "spec/poolparty/core/float.rb", "spec/poolparty/core/hash_spec.rb", "spec/poolparty/core/kernel_spec.rb", "spec/poolparty/core/module_spec.rb", "spec/poolparty/core/object_spec.rb", "spec/poolparty/core/ordered_hash_spec.rb", "spec/poolparty/core/string_spec.rb", "spec/poolparty/core/time_spec.rb", "spec/poolparty/dependencies_spec.rb", "spec/poolparty/dependency_resolver", "spec/poolparty/dependency_resolver/chef_resolver_spec.rb", "spec/poolparty/dependency_resolver/dependency_resolver_cloud_extensions_spec.rb", "spec/poolparty/dependency_resolver/dependency_resolver_spec.rb", "spec/poolparty/dependency_resolver/puppet_resolver_spec.rb", "spec/poolparty/extra", "spec/poolparty/extra/deployments_spec.rb", "spec/poolparty/fixtures", "spec/poolparty/fixtures/clouds.json", "spec/poolparty/fixtures/test_template.erb", "spec/poolparty/helpers", "spec/poolparty/helpers/binary_spec.rb", "spec/poolparty/helpers/display_spec.rb", "spec/poolparty/helpers/hash_printer_spec.rb", "spec/poolparty/helpers/optioner_spec.rb", "spec/poolparty/id_rsa", "spec/poolparty/modules", "spec/poolparty/modules/cloud_resourcer_spec.rb", "spec/poolparty/modules/definable_resource.rb", "spec/poolparty/modules/file_writer_spec.rb", "spec/poolparty/modules/s3_string_spec.rb", "spec/poolparty/monitors", "spec/poolparty/monitors/base_monitor_spec.rb", "spec/poolparty/monitors/monitors", "spec/poolparty/monitors/monitors/cpu_monitor_spec.rb", "spec/poolparty/monitors/monitors/memory_monitor_spec.rb", "spec/poolparty/net", "spec/poolparty/net/messenger_spec.rb", "spec/poolparty/net/remote_instance_spec.rb", "spec/poolparty/net/remote_spec.rb", "spec/poolparty/net/remoter_base_spec.rb", "spec/poolparty/net/remoter_bases", "spec/poolparty/net/remoter_bases/ec2_mocks_and_stubs.rb", "spec/poolparty/net/remoter_bases/ec2_remote_instance_spec.rb", "spec/poolparty/net/remoter_bases/ec2_spec.rb", "spec/poolparty/net/remoter_spec.rb", "spec/poolparty/plugins", "spec/poolparty/plugins/chef_spec.rb", "spec/poolparty/plugins/deploydirectory_spec.rb", "spec/poolparty/plugins/git_spec.rb", "spec/poolparty/plugins/line_spec.rb", "spec/poolparty/plugins/svn_spec.rb", "spec/poolparty/poolparty", "spec/poolparty/poolparty/cloud_spec.rb", "spec/poolparty/poolparty/configurers", "spec/poolparty/poolparty/configurers/files", "spec/poolparty/poolparty/configurers/files/ruby_basic.rb", "spec/poolparty/poolparty/configurers/files/ruby_plugins.rb", "spec/poolparty/poolparty/configurers/ruby_spec.rb", "spec/poolparty/poolparty/custom_resource_spec.rb", "spec/poolparty/poolparty/default_spec.rb", "spec/poolparty/poolparty/example_spec.rb", "spec/poolparty/poolparty/key_spec.rb", "spec/poolparty/poolparty/neighborhoods_spec.rb", "spec/poolparty/poolparty/plugin_model_spec.rb", "spec/poolparty/poolparty/plugin_spec.rb", "spec/poolparty/poolparty/pool_spec.rb", "spec/poolparty/poolparty/resource_spec.rb", "spec/poolparty/poolparty/script_spec.rb", "spec/poolparty/poolparty/service_spec.rb", "spec/poolparty/poolparty/template_spec.rb", "spec/poolparty/poolparty/test_plugins", "spec/poolparty/poolparty/test_plugins/sshkey_test", "spec/poolparty/poolparty/test_plugins/virtual_host_template.erb", "spec/poolparty/poolparty/test_plugins/webserver.rb", "spec/poolparty/poolparty_base_class_spec.rb", "spec/poolparty/poolparty_spec.rb", "spec/poolparty/provision", "spec/poolparty/resources", "spec/poolparty/resources/cron_spec.rb", "spec/poolparty/resources/directory_spec.rb", "spec/poolparty/resources/exec_spec.rb", "spec/poolparty/resources/file_spec.rb", "spec/poolparty/resources/gem_spec.rb", "spec/poolparty/resources/host_spec.rb", "spec/poolparty/resources/package_spec.rb", "spec/poolparty/resources/service_spec.rb", "spec/poolparty/resources/sshkey_spec.rb", "spec/poolparty/resources/symlink_spec.rb", "spec/poolparty/resources/user_spec.rb", "spec/poolparty/resources/variable_spec.rb", "spec/poolparty/schema_spec.rb", "spec/poolparty/services", "spec/poolparty/services/conditional_spec.rb", "spec/poolparty/spec", "spec/poolparty/spec/core", "spec/poolparty/spec/core/string_spec.rb", "spec/poolparty/spec_helper.rb", "spec/poolparty/test_spec_helper.rb", "test/fixtures", "test/fixtures/test_template.erb", "test/poolparty", "test/poolparty/core", "test/poolparty/core/hash_test.rb", "test/poolparty/modules", "test/poolparty/modules/cloud_dsl_test.rb", "test/poolparty/poolparty", "test/poolparty/poolparty/template_test.rb", "test/poolparty/provision", "test/poolparty/provision/boot_strapper_test.rb", "test/poolparty/provision/dr_configure_test.rb", "test/test_generator_helper.rb", "test/test_helper.rb", "test/test_pool_spec_generator.rb", "test/test_poolparty.rb", "tasks/cloud.rake", "tasks/development.rake", "tasks/ec2.rake", "tasks/environment.rake", "tasks/instance.rake", "tasks/poolparty.rake", "tasks/server.rake", "tasks/spec.rake", "script/destroy", "script/generate", "generators/poolspec", "generators/poolspec/poolspec_generator.rb", "generators/poolspec/templates", "generators/poolspec/templates/pool_spec_template.erb", "generators/poolspec/USAGE", "bin/cloud", "bin/cloud-bootstrap", "bin/cloud-configure", "bin/cloud-console", "bin/cloud-contract", "bin/cloud-expand", "bin/cloud-handle-load", "bin/cloud-list", "bin/cloud-osxcopy", "bin/cloud-provision", "bin/cloud-rsync", "bin/cloud-run", "bin/cloud-setup-dev", "bin/cloud-show", "bin/cloud-spec", "bin/cloud-ssh", "bin/cloud-start", "bin/cloud-stats", "bin/cloud-terminate", "bin/ec2-list-active", "bin/messenger-get-current-nodes", "bin/pool", "bin/pool-describe", "bin/pool-generate", "bin/pool-init", "bin/pool-list", "bin/pool-start", "bin/server-become-master", "bin/server-build-messenger", "bin/server-butterfly", "bin/server-clean-cert-for", "bin/server-cloud-elections", "bin/server-ensure-provisioning", "bin/server-fire-cmd", "bin/server-get-load", "bin/server-list-active", "bin/server-list-instances", "bin/server-manage-election", "bin/server-monitor.ru", "bin/server-provision", "bin/server-query-agent", "bin/server-rerun", "bin/server-send-command", "bin/server-show-stats", "bin/server-start-agent", "bin/server-start-client", "bin/server-start-master", "bin/server-start-node", "bin/server-stop-client", "bin/server-stop-master", "bin/server-stop-node", "bin/server-update-hosts", "bin/server-write-new-nodes", "vendor/chef", "vendor/chef/apache2", "vendor/chef/apache2/attributes", "vendor/chef/apache2/attributes/apache.rb", "vendor/chef/apache2/definitions", "vendor/chef/apache2/definitions/apache_module.rb", "vendor/chef/apache2/definitions/apache_site.rb", "vendor/chef/apache2/definitions/web_app.rb", "vendor/chef/apache2/files", "vendor/chef/apache2/files/default", "vendor/chef/apache2/files/default/apache2_module_conf_generate.pl", "vendor/chef/apache2/README.rdoc", "vendor/chef/apache2/recipes", "vendor/chef/apache2/recipes/default.rb", "vendor/chef/apache2/recipes/mod_alias.rb", "vendor/chef/apache2/recipes/mod_auth_basic.rb", "vendor/chef/apache2/recipes/mod_auth_digest.rb", "vendor/chef/apache2/recipes/mod_authn_file.rb", "vendor/chef/apache2/recipes/mod_authnz_ldap.rb", "vendor/chef/apache2/recipes/mod_authz_default.rb", "vendor/chef/apache2/recipes/mod_authz_groupfile.rb", "vendor/chef/apache2/recipes/mod_authz_host.rb", "vendor/chef/apache2/recipes/mod_authz_user.rb", "vendor/chef/apache2/recipes/mod_autoindex.rb", "vendor/chef/apache2/recipes/mod_cgi.rb", "vendor/chef/apache2/recipes/mod_dav.rb", "vendor/chef/apache2/recipes/mod_dav_svn.rb", "vendor/chef/apache2/recipes/mod_deflate.rb", "vendor/chef/apache2/recipes/mod_dir.rb", "vendor/chef/apache2/recipes/mod_env.rb", "vendor/chef/apache2/recipes/mod_expires.rb", "vendor/chef/apache2/recipes/mod_fcgid.rb", "vendor/chef/apache2/recipes/mod_headers.rb", "vendor/chef/apache2/recipes/mod_ldap.rb", "vendor/chef/apache2/recipes/mod_log_config.rb", "vendor/chef/apache2/recipes/mod_mime.rb", "vendor/chef/apache2/recipes/mod_negotiation.rb", "vendor/chef/apache2/recipes/mod_php5.rb", "vendor/chef/apache2/recipes/mod_proxy.rb", "vendor/chef/apache2/recipes/mod_proxy_http.rb", "vendor/chef/apache2/recipes/mod_python.rb", "vendor/chef/apache2/recipes/mod_rewrite.rb", "vendor/chef/apache2/recipes/mod_setenvif.rb", "vendor/chef/apache2/recipes/mod_ssl.rb", "vendor/chef/apache2/recipes/mod_status.rb", "vendor/chef/apache2/templates", "vendor/chef/apache2/templates/default", "vendor/chef/apache2/templates/default/a2dismod.erb", "vendor/chef/apache2/templates/default/a2dissite.erb", "vendor/chef/apache2/templates/default/a2enmod.erb", "vendor/chef/apache2/templates/default/a2ensite.erb", "vendor/chef/apache2/templates/default/apache2.conf.erb", "vendor/chef/apache2/templates/default/default-site.erb", "vendor/chef/apache2/templates/default/port_apache.erb", "vendor/chef/apache2/templates/default/ports.conf.erb", "vendor/chef/apache2/templates/default/web_app.conf.erb", "vendor/gems", "vendor/gems/butterfly", "vendor/gems/butterfly/bin", "vendor/gems/butterfly/bin/flutter", "vendor/gems/butterfly/butterfly.gemspec", "vendor/gems/butterfly/examples", "vendor/gems/butterfly/examples/config.ru", "vendor/gems/butterfly/examples/my_app.rb", "vendor/gems/butterfly/History.txt", "vendor/gems/butterfly/lib", "vendor/gems/butterfly/lib/butterfly.rb", "vendor/gems/butterfly/lib/handler.rb", "vendor/gems/butterfly/lib/request.rb", "vendor/gems/butterfly/lib/response.rb", "vendor/gems/butterfly/PostInstall.txt", "vendor/gems/butterfly/Rakefile", "vendor/gems/butterfly/README.rdoc", "vendor/gems/butterfly/script", "vendor/gems/butterfly/script/console", "vendor/gems/butterfly/script/destroy", "vendor/gems/butterfly/script/generate", "vendor/gems/butterfly/test", "vendor/gems/butterfly/test/test_adapter_base.rb", "vendor/gems/butterfly/test/test_butterfly_request.rb", "vendor/gems/butterfly/test/test_butterfly_response.rb", "vendor/gems/butterfly/test/test_butterfly_server.rb", "vendor/gems/butterfly/test/test_default.rb", "vendor/gems/butterfly/test/test_helper.rb", "vendor/gems/butterfly/VERSION.yml", "vendor/gems/dslify", "vendor/gems/dslify/config", "vendor/gems/dslify/config/hoe.rb", "vendor/gems/dslify/config/requirements.rb", "vendor/gems/dslify/dslify.gemspec", "vendor/gems/dslify/History.txt", "vendor/gems/dslify/lib", "vendor/gems/dslify/lib/dslify", "vendor/gems/dslify/lib/dslify/dslify.rb", "vendor/gems/dslify/lib/dslify/version.rb", "vendor/gems/dslify/lib/dslify.rb", "vendor/gems/dslify/Manifest.txt", "vendor/gems/dslify/PostInstall.txt", "vendor/gems/dslify/Rakefile", "vendor/gems/dslify/README.txt", "vendor/gems/dslify/script", "vendor/gems/dslify/script/console", "vendor/gems/dslify/script/destroy", "vendor/gems/dslify/script/generate", "vendor/gems/dslify/script/txt2html", "vendor/gems/dslify/setup.rb", "vendor/gems/dslify/tasks", "vendor/gems/dslify/tasks/deployment.rake", "vendor/gems/dslify/tasks/environment.rake", "vendor/gems/dslify/tasks/website.rake", "vendor/gems/dslify/test", "vendor/gems/dslify/test/test_dslify.rb", "vendor/gems/dslify/website", "vendor/gems/dslify/website/index.html", "vendor/gems/dslify/website/index.txt", "vendor/gems/dslify/website/javascripts", "vendor/gems/dslify/website/javascripts/rounded_corners_lite.inc.js", "vendor/gems/dslify/website/stylesheets", "vendor/gems/dslify/website/stylesheets/screen.css", "vendor/gems/dslify/website/template.html.erb", "vendor/gems/parenting", "vendor/gems/parenting/History.txt", "vendor/gems/parenting/lib", "vendor/gems/parenting/lib/parenting", "vendor/gems/parenting/lib/parenting/base.rb", "vendor/gems/parenting/lib/parenting.rb", "vendor/gems/parenting/Manifest.txt", "vendor/gems/parenting/parenting.gemspec", "vendor/gems/parenting/PostInstall.txt", "vendor/gems/parenting/Rakefile", "vendor/gems/parenting/README.rdoc", "vendor/gems/parenting/script", "vendor/gems/parenting/script/console", "vendor/gems/parenting/script/destroy", "vendor/gems/parenting/script/generate", "vendor/gems/parenting/test", "vendor/gems/parenting/test/file_to_eval.rb", "vendor/gems/parenting/test/test_helper.rb", "vendor/gems/parenting/test/test_parenting.rb", "vendor/gems/suitcase", "vendor/gems/suitcase/lib", "vendor/gems/suitcase/lib/suitcase", "vendor/gems/suitcase/lib/suitcase/unzipper.rb", "vendor/gems/suitcase/lib/suitcase/zipper.rb", "vendor/gems/suitcase/lib/suitcase.rb", "vendor/gems/suitcase/LICENSE", "vendor/gems/suitcase/Rakefile", "vendor/gems/suitcase/README.rdoc", "vendor/gems/suitcase/suitcase.gemspec", "vendor/gems/suitcase/test", "vendor/gems/suitcase/test/suitcase_test.rb", "vendor/gems/suitcase/test/test_dir", "vendor/gems/suitcase/test/test_dir/box.rb", "vendor/gems/suitcase/test/test_dir/test.txt", "vendor/gems/suitcase/test/test_helper.rb", "vendor/gems/suitcase/VERSION.yml"]
  s.has_rdoc = true
  s.homepage = %q{http://poolpartyrb.com}
  s.rdoc_options = ["--quiet", "--title", "PoolParty documentation", "--line-numbers", "--main", "README", "--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Self-healing, auto-scaling system administration, provisioning and maintaining tool that makes cloud computing fun and easy}
  s.test_files = ["test/test_generator_helper.rb", "test/test_helper.rb", "test/test_pool_spec_generator.rb", "test/test_poolparty.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<logging>, [">= 0"])
      s.add_runtime_dependency(%q<auser-dslify>, [">= 0"])
      s.add_runtime_dependency(%q<auser-parenting>, [">= 0"])
      s.add_runtime_dependency(%q<ruby2ruby>, [">= 0"])
      s.add_runtime_dependency(%q<grempe-amazon-ec2>, [">= 0"])
      s.add_runtime_dependency(%q<rubigen>, [">= 1.5.2"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<logging>, [">= 0"])
      s.add_dependency(%q<auser-dslify>, [">= 0"])
      s.add_dependency(%q<auser-parenting>, [">= 0"])
      s.add_dependency(%q<ruby2ruby>, [">= 0"])
      s.add_dependency(%q<grempe-amazon-ec2>, [">= 0"])
      s.add_dependency(%q<rubigen>, [">= 1.5.2"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<logging>, [">= 0"])
    s.add_dependency(%q<auser-dslify>, [">= 0"])
    s.add_dependency(%q<auser-parenting>, [">= 0"])
    s.add_dependency(%q<ruby2ruby>, [">= 0"])
    s.add_dependency(%q<grempe-amazon-ec2>, [">= 0"])
    s.add_dependency(%q<rubigen>, [">= 1.5.2"])
  end
end
