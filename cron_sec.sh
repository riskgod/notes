#!/usr/bin/env bash

while true; do
    /root/skyeye/venv/bin/python3 /root/skyeye/manage.py  mg_ob_persistence
    /root/skyeye/venv/bin/python3 /root/skyeye/manage.py  otc_asset_price
    /root/hailstone/venv/bin/python3 /root/hailstone/manage.py  clear_market_history_price
    /root/hailstone/venv/bin/python3 /root/hailstone/manage.py fetch_market_price
    
    sleep 3
done