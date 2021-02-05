#!/bin/sh
SERVER_PORT=8080
kill $(lsof -ti:${SERVER_PORT})
npm run server & disown
echo "wait for the server to start.."
sleep 2
echo "Build changes.."
npm run build-all

echo "Open incognito localhost window on port ${SERVER_PORT}.."
open -na "Google Chrome" --args --incognito "http://localhost:${SERVER_PORT}/sponsor-wallet/loader"
