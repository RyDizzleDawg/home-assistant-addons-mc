#!/usr/bin/env bash
#!/usr/bin/with-contenv bashio

function hasp::user() {
    local mc_config_file=${1}

    if [[ ! -f "${mc_config_file}" ]]; then
        bashio::log.debug  "ha_config_file NOT FOUND!"
        return "${__BASHIO_EXIT_NOK}"
    fi
}