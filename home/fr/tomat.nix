{ ... }:
{
  services.tomat = {
    enable = true;
    settings.timer.auto_advance = "to-break";
  };
}
