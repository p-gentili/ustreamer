#!/bin/bash
CONFIG_DIR=$SNAP_USER_COMMON/janus/configs
JANUS_CONFIG_FILE=$CONFIG_DIR/janus.jcfg
PLUGIN_CONFIG_FILE=$CONFIG_DIR/janus.plugin.ustreamer.jcfg
WS_CONFIG_FILE=$CONFIG_DIR/janus.transport.websockets.jcfg

set -e

mkdir -p $CONFIG_DIR

if [ ! -f $JANUS_CONFIG_FILE ]; then
    cp $SNAP/opt/janus/etc/janus/janus.jcfg.sample $JANUS_CONFIG_FILE
    sed --in-place --expression "s|/opt|$SNAP/opt|g" $JANUS_CONFIG_FILE
fi

if [ ! -f $WS_CONFIG_FILE ]; then
    cp $SNAP/opt/janus/etc/janus/janus.transport.websockets.jcfg.sample $WS_CONFIG_FILE
fi

if [ ! -f $PLUGIN_CONFIG_FILE ]; then
    cat > $PLUGIN_CONFIG_FILE <<EOF
memsink: {
  object = "demo::ustreamer::h264"
}
EOF
fi
exec "$@"
