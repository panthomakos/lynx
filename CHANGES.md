# master (unreleased)

* Fix `exists?` to `exist?` for Ruby 3.2+. (mkasberg)

# 1.1.0

* Add `if [not] exists` support for creating/dropping DBs. (sshistrava)
* Remove support for MySQL 5.5 commands. (sshistrava)

# 1.0.0

* Removed `--password` support. (sshistrava)
* Added config file support. (sshistrava)
* Added `Lynx::Error` for failed commands. (sshistrava)

# 0.4.0

* Added `#option` method to commands for custom options. (panthomakos)
* Added `#complete_insert` method to dump command for `--complete-insert` `mysqldump` option. (panthomakos)

# 0.3.0

* Added `Lynx::popen` pipe. (jakeokt)

# 0.2.1

* Added `socket` configuration option. (panthomakos)
