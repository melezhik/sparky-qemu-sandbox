if tags()<reboot-ok> {

    # this part of scenario is executed AFTER reboot

    say "machine rebooted OK!";

    bash "uptime";

    # task-run "files/foo/bar/baz";

} else {

  # this part of scenario is executed BEFORE reboot

  bash "uptime";

  say tags().raku;

  # task-run "files/bla/bla/bla";

  # ask sparky to reboot this VM

  say "meta: reboot=need";

  
}
