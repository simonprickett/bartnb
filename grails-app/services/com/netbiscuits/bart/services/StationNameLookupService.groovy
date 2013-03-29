package com.netbiscuits.bart.services

import org.codehaus.groovy.grails.commons.*

class StationNameLookupService {

    static transactional = false

    def lookupStationName(String abbr) {
        ConfigurationHolder.config.bartStationLookup.get(abbr)
    }
}
