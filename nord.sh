#!/bin/bash
nordvpn d
bestserver="$(curl --silent 'https://nordvpn.com/wp-admin/admin-ajax.php?action=servers_recommendations' | jq --raw-output '.[0].hostname' | awk -F. '{print $1}')"
nordvpn c "${bestserver}"
