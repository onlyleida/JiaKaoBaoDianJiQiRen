package io.agora.rtc.internal;

import io.agora.rtc.IMetadataObserver;
import io.agora.rtc.RtcChannel;
import io.agora.rtc.live.LiveInjectStreamConfig;
import io.agora.rtc.live.LiveTranscoding;
import io.agora.rtc.mediaio.AgoraDefaultRender;
import io.agora.rtc.mediaio.IVideoSink;
import io.agora.rtc.models.ChannelMediaOptions;
import io.agora.rtc.models.ClientRoleOptions;
import io.agora.rtc.video.ChannelMediaInfo;
import io.agora.rtc.video.ChannelMediaRelayConfiguration;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class RtcChannelImpl extends RtcChannel {
    private long mNativeHandle = 0;
    private boolean mInitialized = false;
    private RtcEngineImpl mRtcEngineImpl = null;
    private boolean mJoined = false;

    private native int nativeRtcChannelAddInjectStreamUrl(long j, String str, byte[] bArr);

    private native int nativeRtcChannelAddPublishStreamUrl(long j, String str, boolean z);

    private native int nativeRtcChannelAddRemoteVideoRender(long j, int i, IVideoSink iVideoSink, int i2);

    private native int nativeRtcChannelAdjustUserPlaybackSignalVolume(long j, int i, int i2);

    private native String nativeRtcChannelChannelId(long j);

    private native int nativeRtcChannelCreateDataStream(long j, boolean z, boolean z2);

    private native int nativeRtcChannelEnableEncryption(long j, boolean z, int i, String str);

    private native int nativeRtcChannelEnableRemoteSuperResolution(long j, int i, boolean z);

    private native String nativeRtcChannelGetCallId(long j);

    private native int nativeRtcChannelGetConncetionState(long j);

    private native int nativeRtcChannelJoinChannel(long j, String str, String str2, int i, Object obj);

    private native int nativeRtcChannelJoinChannelWithUserAccount(long j, String str, String str2, Object obj);

    private native int nativeRtcChannelLeaveChannel(long j);

    private native int nativeRtcChannelMuteAllRemoteAudioStreams(long j, boolean z);

    private native int nativeRtcChannelMuteAllRemoteVideoStreams(long j, boolean z);

    private native int nativeRtcChannelMuteRemoteAudioStream(long j, int i, boolean z);

    private native int nativeRtcChannelMuteRemoteVideoStream(long j, int i, boolean z);

    private native int nativeRtcChannelPublish(long j);

    private native int nativeRtcChannelRegisterMediaMetadataObserver(long j, Object obj, int i);

    private native int nativeRtcChannelRemoveInjectStreamUrl(long j, String str);

    private native int nativeRtcChannelRemovePublishStreamUrl(long j, String str);

    private native int nativeRtcChannelRenewToken(long j, String str);

    private native int nativeRtcChannelSendStreamMessage(long j, int i, byte[] bArr);

    private native int nativeRtcChannelSetClientRole(long j, int i);

    private native int nativeRtcChannelSetClientRoleOptions(long j, int i, Object obj);

    private native int nativeRtcChannelSetDefaultMuteAllRemoteAudioStreams(long j, boolean z);

    private native int nativeRtcChannelSetDefaultMuteAllRemoteVideoStreams(long j, boolean z);

    private native int nativeRtcChannelSetEncryptionMode(long j, String str);

    private native int nativeRtcChannelSetEncryptionSecret(long j, String str);

    private native int nativeRtcChannelSetLiveTranscoding(long j, byte[] bArr);

    private native int nativeRtcChannelSetRemoteDefaultVideoStreamType(long j, int i);

    private native int nativeRtcChannelSetRemoteRenderMode(long j, int i, int i2);

    private native int nativeRtcChannelSetRemoteRenderModeWithMirrorMode(long j, int i, int i2, int i3);

    private native int nativeRtcChannelSetRemoteUserPriority(long j, int i, int i2);

    private native int nativeRtcChannelSetRemoteVideoStreamType(long j, int i, int i2);

    private native int nativeRtcChannelSetRemoteVoicePosition(long j, int i, double d2, double d3);

    private native int nativeRtcChannelStartChannelMediaRelay(long j, byte[] bArr);

    private native int nativeRtcChannelStopChannelMediaRelay(long j);

    private native int nativeRtcChannelUnpublish(long j);

    private native int nativeRtcChannelUpdateChannelMediaRelay(long j, byte[] bArr);

    @Override // io.agora.rtc.RtcChannel
    public int addInjectStreamUrl(String str, LiveInjectStreamConfig liveInjectStreamConfig) {
        if (!this.mInitialized) {
            return -7;
        }
        if (str == null || liveInjectStreamConfig == null) {
            return -2;
        }
        return nativeRtcChannelAddInjectStreamUrl(this.mNativeHandle, str, new RtcEngineMessage.PInjectStreamConfig().marshall(liveInjectStreamConfig));
    }

    @Override // io.agora.rtc.RtcChannel
    public int addPublishStreamUrl(String str, boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelAddPublishStreamUrl(this.mNativeHandle, str, z);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int adjustUserPlaybackSignalVolume(int i, int i2) {
        if (this.mInitialized) {
            return nativeRtcChannelAdjustUserPlaybackSignalVolume(this.mNativeHandle, i, i2);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public String channelId() {
        return !this.mInitialized ? "" : nativeRtcChannelChannelId(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcChannel
    public int createDataStream(boolean z, boolean z2) {
        if (this.mInitialized) {
            return nativeRtcChannelCreateDataStream(this.mNativeHandle, z, z2);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int destroy() {
        if (!this.mInitialized) {
            return -7;
        }
        int iDestroyRtcChannel = this.mRtcEngineImpl.destroyRtcChannel(channelId());
        this.mInitialized = false;
        return iDestroyRtcChannel;
    }

    @Override // io.agora.rtc.RtcChannel
    public int enableEncryption(boolean z, EncryptionConfig encryptionConfig) {
        if (this.mInitialized) {
            return nativeRtcChannelEnableEncryption(this.mNativeHandle, z, encryptionConfig.encryptionMode.getValue(), encryptionConfig.encryptionKey);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int enableRemoteSuperResolution(int i, boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelEnableRemoteSuperResolution(this.mNativeHandle, i, z);
        }
        return 1;
    }

    @Override // io.agora.rtc.RtcChannel
    public String getCallId() {
        return !this.mInitialized ? "" : nativeRtcChannelGetCallId(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcChannel
    public int getConnectionState() {
        if (this.mInitialized) {
            return nativeRtcChannelGetConncetionState(this.mNativeHandle);
        }
        return 1;
    }

    public long getNativeHandle() {
        return this.mNativeHandle;
    }

    public boolean hasJoined() {
        return this.mJoined;
    }

    public int initialize(RtcEngineImpl rtcEngineImpl, long j) {
        this.mRtcEngineImpl = rtcEngineImpl;
        this.mNativeHandle = j;
        this.mInitialized = true;
        return 0;
    }

    public boolean isInitialized() {
        return this.mInitialized;
    }

    @Override // io.agora.rtc.RtcChannel
    public int joinChannel(String str, String str2, int i, ChannelMediaOptions channelMediaOptions) {
        if (!this.mInitialized || this.mRtcEngineImpl.getContext() == null) {
            return -7;
        }
        if (channelMediaOptions == null) {
            return -2;
        }
        this.mRtcEngineImpl.onRtcChannelJoinChannel();
        this.mJoined = true;
        return nativeRtcChannelJoinChannel(this.mNativeHandle, str, str2, i, channelMediaOptions);
    }

    @Override // io.agora.rtc.RtcChannel
    public int joinChannelWithUserAccount(String str, String str2, ChannelMediaOptions channelMediaOptions) {
        if (!this.mInitialized || this.mRtcEngineImpl.getContext() == null) {
            return -7;
        }
        if (channelMediaOptions == null) {
            return -2;
        }
        this.mRtcEngineImpl.onRtcChannelJoinChannel();
        this.mJoined = true;
        return nativeRtcChannelJoinChannelWithUserAccount(this.mNativeHandle, str, str2, channelMediaOptions);
    }

    @Override // io.agora.rtc.RtcChannel
    public int leaveChannel() {
        if (!this.mInitialized) {
            return -7;
        }
        this.mJoined = false;
        this.mRtcEngineImpl.onRtcChannelLeaveChannel();
        return nativeRtcChannelLeaveChannel(this.mNativeHandle);
    }

    @Override // io.agora.rtc.RtcChannel
    public int muteAllRemoteAudioStreams(boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelMuteAllRemoteAudioStreams(this.mNativeHandle, z);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int muteAllRemoteVideoStreams(boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelMuteAllRemoteVideoStreams(this.mNativeHandle, z);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int muteRemoteAudioStream(int i, boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelMuteRemoteAudioStream(this.mNativeHandle, i, z);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int muteRemoteVideoStream(int i, boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelMuteRemoteVideoStream(this.mNativeHandle, i, z);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int publish() {
        if (this.mInitialized) {
            return nativeRtcChannelPublish(this.mNativeHandle);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int registerMediaMetadataObserver(IMetadataObserver iMetadataObserver, int i) {
        if (this.mInitialized) {
            return nativeRtcChannelRegisterMediaMetadataObserver(this.mNativeHandle, iMetadataObserver, i);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int removeInjectStreamUrl(String str) {
        if (this.mInitialized) {
            return nativeRtcChannelRemoveInjectStreamUrl(this.mNativeHandle, str);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int removePublishStreamUrl(String str) {
        if (this.mInitialized) {
            return nativeRtcChannelRemovePublishStreamUrl(this.mNativeHandle, str);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int renewToken(String str) {
        if (this.mInitialized) {
            return nativeRtcChannelRenewToken(this.mNativeHandle, str);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int sendStreamMessage(int i, byte[] bArr) {
        if (this.mInitialized) {
            return nativeRtcChannelSendStreamMessage(this.mNativeHandle, i, bArr);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setClientRole(int i) {
        if (this.mInitialized) {
            return nativeRtcChannelSetClientRole(this.mNativeHandle, i);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setDefaultMuteAllRemoteAudioStreams(boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelSetDefaultMuteAllRemoteAudioStreams(this.mNativeHandle, z);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setDefaultMuteAllRemoteVideoStreams(boolean z) {
        if (this.mInitialized) {
            return nativeRtcChannelSetDefaultMuteAllRemoteVideoStreams(this.mNativeHandle, z);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setEncryptionMode(String str) {
        if (this.mInitialized) {
            return nativeRtcChannelSetEncryptionMode(this.mNativeHandle, str);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setEncryptionSecret(String str) {
        if (this.mInitialized) {
            return nativeRtcChannelSetEncryptionSecret(this.mNativeHandle, str);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setLiveTranscoding(LiveTranscoding liveTranscoding) {
        if (!this.mInitialized) {
            return -7;
        }
        if (liveTranscoding == null) {
            return -2;
        }
        if (liveTranscoding.getUsers() != null) {
            for (LiveTranscoding.TranscodingUser transcodingUser : liveTranscoding.getUsers()) {
                if (transcodingUser.width <= 0 || transcodingUser.height <= 0) {
                    throw new IllegalArgumentException("transcoding user's width and height must be >0");
                }
            }
        }
        return nativeRtcChannelSetLiveTranscoding(this.mNativeHandle, new RtcEngineMessage.PLiveTranscoding().marshall(liveTranscoding));
    }

    @Override // io.agora.rtc.RtcChannel
    public int setRemoteDefaultVideoStreamType(int i) {
        if (this.mInitialized) {
            return nativeRtcChannelSetRemoteDefaultVideoStreamType(this.mNativeHandle, i);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setRemoteRenderMode(int i, int i2, int i3) {
        if (this.mInitialized) {
            return nativeRtcChannelSetRemoteRenderModeWithMirrorMode(this.mNativeHandle, i, i2, i3);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setRemoteUserPriority(int i, int i2) {
        if (this.mInitialized) {
            return nativeRtcChannelSetRemoteUserPriority(this.mNativeHandle, i, i2);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setRemoteVideoRenderer(int i, IVideoSink iVideoSink) {
        int i2;
        if (!this.mInitialized) {
            return -7;
        }
        if (iVideoSink == null) {
            i2 = 0;
        } else {
            i2 = iVideoSink instanceof AgoraDefaultRender ? 1 : 2;
        }
        return nativeRtcChannelAddRemoteVideoRender(this.mNativeHandle, i, iVideoSink, i2);
    }

    @Override // io.agora.rtc.RtcChannel
    public int setRemoteVideoStreamType(int i, int i2) {
        if (this.mInitialized) {
            return nativeRtcChannelSetRemoteVideoStreamType(this.mNativeHandle, i, i2);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int setRemoteVoicePosition(int i, double d2, double d3) {
        if (this.mInitialized) {
            return nativeRtcChannelSetRemoteVoicePosition(this.mNativeHandle, i, d2, d3);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int startChannelMediaRelay(ChannelMediaRelayConfiguration channelMediaRelayConfiguration) {
        if (!this.mInitialized) {
            return -7;
        }
        if (channelMediaRelayConfiguration == null || channelMediaRelayConfiguration.getDestChannelMediaInfos().size() == 0 || channelMediaRelayConfiguration.getSrcChannelMediaInfo() == null) {
            return -2;
        }
        for (Map.Entry<String, ChannelMediaInfo> entry : channelMediaRelayConfiguration.getDestChannelMediaInfos().entrySet()) {
            if (entry.getValue().channelName == null || entry.getValue().channelName.length() == 0) {
                return -2;
            }
        }
        return nativeRtcChannelStartChannelMediaRelay(this.mNativeHandle, new RtcEngineMessage.PChannelMediaRelayConfiguration().marshall(channelMediaRelayConfiguration));
    }

    @Override // io.agora.rtc.RtcChannel
    public int stopChannelMediaRelay() {
        if (this.mInitialized) {
            return nativeRtcChannelStopChannelMediaRelay(this.mNativeHandle);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int unpublish() {
        if (this.mInitialized) {
            return nativeRtcChannelUnpublish(this.mNativeHandle);
        }
        return -7;
    }

    @Override // io.agora.rtc.RtcChannel
    public int updateChannelMediaRelay(ChannelMediaRelayConfiguration channelMediaRelayConfiguration) {
        if (!this.mInitialized) {
            return -7;
        }
        if (channelMediaRelayConfiguration == null || channelMediaRelayConfiguration.getDestChannelMediaInfos().size() == 0 || channelMediaRelayConfiguration.getSrcChannelMediaInfo() == null) {
            return -2;
        }
        for (Map.Entry<String, ChannelMediaInfo> entry : channelMediaRelayConfiguration.getDestChannelMediaInfos().entrySet()) {
            if (entry.getValue().channelName == null || entry.getValue().channelName.length() == 0) {
                return -2;
            }
        }
        return nativeRtcChannelUpdateChannelMediaRelay(this.mNativeHandle, new RtcEngineMessage.PChannelMediaRelayConfiguration().marshall(channelMediaRelayConfiguration));
    }

    @Override // io.agora.rtc.RtcChannel
    public int setClientRole(int i, ClientRoleOptions clientRoleOptions) {
        if (this.mInitialized) {
            return nativeRtcChannelSetClientRoleOptions(this.mNativeHandle, i, clientRoleOptions);
        }
        return -7;
    }
}
