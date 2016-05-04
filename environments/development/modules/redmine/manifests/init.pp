# Class: redmine
#
# This module manages redmine
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class redmine {
  include ::redmine::dependencies
  include ::redmine::install
  include ::redmine::config 
}
