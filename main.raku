if tags()<reboot-ok> {

    say "machine rebooted OK!";
    bash "uptime";

} else {

  my $job = Sparky::JobApi.new: :mine;
  say "reboot required";
  bash "uptime";
  $j.put-stash({ need-reboot => True });
  
}
