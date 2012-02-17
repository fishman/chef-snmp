Description
===========
This is a very basic snmpd cookbook e.g. when you want to monitor basic system
functionality in cacti

Requirements
============

Attributes
==========

Usage
=====

     name "snmp_test"
     description "snmp server"
     run_list(
       "recipe[snmp]"
     )
     override_attributes( 
       :snmp => { :location => "Job server",
                  :contact  => "Reza Jelveh <sysadm@foobar>" }
     )
