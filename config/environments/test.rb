Merb.logger.info("Loaded TEST Environment...")
Merb::Config.use { |c|
  c[:testing]           = true
  c[:exception_details] = true
  c[:log_auto_flush ]   = true
  # log more in testing environment
  c[:log_level]         = :debug

  c[:log_file]  = Merb.root / "log" / "test.log"
  # or redirect logger using IO handle
  # c[:log_stream] = STDOUT
}