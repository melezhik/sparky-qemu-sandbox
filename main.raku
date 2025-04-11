if tags()<reboot-ok> {

    # this part of scenario is executed AFTER reboot

    say "machine rebooted OK!";

    bash "uptime";

    # task-run "files/foo/bar/baz";

} else {

  # this part of scenario is executed BEFORE reboot

  bash "uptime";

  # task-run "files/bla/bla/bla";

  # ask sparky to reboot this VM

  say "reboot required";

  my $job = Sparky::JobApi.new( api => "http://10.0.2.2:4000>" );

  $job.put-stash({ need-reboot => True });
  
}
