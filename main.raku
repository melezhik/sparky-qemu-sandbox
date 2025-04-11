if tags()<reboot-ok> {

    # this part of scenario is executed AFTER reboot

    say "machine rebooted OK!";

    bash "uptime";

    # task-run "files/foo/bar/baz";

} else {

  # this part of scenario is executed AFTER reboot

  bash "uptime";

  # task-run "files/bla/bla/bla";

  # ask sparky to reboot this VM

  say "reboot required";

  my $job = Sparky::JobApi.new: :mine;

  $j.put-stash({ need-reboot => True });
  
}
