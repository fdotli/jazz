


#ifndef __GST_WEBRTC_ENUM_TYPES_H__
#define __GST_WEBRTC_ENUM_TYPES_H__

#include <gst/gst.h>
#include <gst/webrtc/webrtc_fwd.h>
G_BEGIN_DECLS

/* enumerations from "webrtc_fwd.h" */
GST_WEBRTC_API
GType gst_webrtc_dtls_transport_state_get_type (void);
#define GST_TYPE_WEBRTC_DTLS_TRANSPORT_STATE (gst_webrtc_dtls_transport_state_get_type())
GST_WEBRTC_API
GType gst_webrtc_ice_gathering_state_get_type (void);
#define GST_TYPE_WEBRTC_ICE_GATHERING_STATE (gst_webrtc_ice_gathering_state_get_type())
GST_WEBRTC_API
GType gst_webrtc_ice_connection_state_get_type (void);
#define GST_TYPE_WEBRTC_ICE_CONNECTION_STATE (gst_webrtc_ice_connection_state_get_type())
GST_WEBRTC_API
GType gst_webrtc_signaling_state_get_type (void);
#define GST_TYPE_WEBRTC_SIGNALING_STATE (gst_webrtc_signaling_state_get_type())
GST_WEBRTC_API
GType gst_webrtc_peer_connection_state_get_type (void);
#define GST_TYPE_WEBRTC_PEER_CONNECTION_STATE (gst_webrtc_peer_connection_state_get_type())
GST_WEBRTC_API
GType gst_webrtc_ice_role_get_type (void);
#define GST_TYPE_WEBRTC_ICE_ROLE (gst_webrtc_ice_role_get_type())
GST_WEBRTC_API
GType gst_webrtc_ice_component_get_type (void);
#define GST_TYPE_WEBRTC_ICE_COMPONENT (gst_webrtc_ice_component_get_type())
GST_WEBRTC_API
GType gst_webrtc_sdp_type_get_type (void);
#define GST_TYPE_WEBRTC_SDP_TYPE (gst_webrtc_sdp_type_get_type())
GST_WEBRTC_API
GType gst_webrtc_rtp_transceiver_direction_get_type (void);
#define GST_TYPE_WEBRTC_RTP_TRANSCEIVER_DIRECTION (gst_webrtc_rtp_transceiver_direction_get_type())
GST_WEBRTC_API
GType gst_webrtc_dtls_setup_get_type (void);
#define GST_TYPE_WEBRTC_DTLS_SETUP (gst_webrtc_dtls_setup_get_type())
GST_WEBRTC_API
GType gst_webrtc_stats_type_get_type (void);
#define GST_TYPE_WEBRTC_STATS_TYPE (gst_webrtc_stats_type_get_type())
GST_WEBRTC_API
GType gst_webrtc_fec_type_get_type (void);
#define GST_TYPE_WEBRTC_FEC_TYPE (gst_webrtc_fec_type_get_type())
G_END_DECLS

#endif /* __GST_WEBRTC_ENUM_TYPES_H__ */


