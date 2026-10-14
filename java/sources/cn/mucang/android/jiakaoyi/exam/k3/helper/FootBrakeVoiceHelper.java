package cn.mucang.android.jiakaoyi.exam.k3.helper;

import android.media.MediaPlayer;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.exam.R;
import kotlin.Metadata;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004J\b\u0010\u000e\u001a\u00020\fH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;", "", "()V", "mFootBrakeOn", "", "getMFootBrakeOn", "()Z", "setMFootBrakeOn", "(Z)V", "mediaPlayer", "Landroid/media/MediaPlayer;", "checkPlayVoice", "", "isFootBrakeOn", "dingDong", "Companion", "exam_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FootBrakeVoiceHelper {
    private static final int ALL_STEP = 1;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int NO = 2;
    private static final int SPECIAL_STEP = 0;
    private static int footBrakeOnVoiceType;
    private boolean mFootBrakeOn;
    private MediaPlayer mediaPlayer;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;", "", "()V", "ALL_STEP", "", "NO", "SPECIAL_STEP", "footBrakeOnVoiceType", "getFootBrakeOnVoiceType", "()I", "setFootBrakeOnVoiceType", "(I)V", "isAllStep", "", "isSpecialStep", "exam_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final int getFootBrakeOnVoiceType() {
            return FootBrakeVoiceHelper.footBrakeOnVoiceType;
        }

        public final boolean isAllStep() {
            return getFootBrakeOnVoiceType() == 1;
        }

        public final boolean isSpecialStep() {
            return getFootBrakeOnVoiceType() == 0;
        }

        public final void setFootBrakeOnVoiceType(int i) {
            FootBrakeVoiceHelper.footBrakeOnVoiceType = i;
        }
    }

    private final void dingDong() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null && mediaPlayer != null) {
            mediaPlayer.release();
        }
        MediaPlayer mediaPlayerCreate = MediaPlayer.create(MucangConfig.getContext(), R.raw.dingdong);
        this.mediaPlayer = mediaPlayerCreate;
        if (mediaPlayerCreate != null) {
            mediaPlayerCreate.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.helper.c
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer2) {
                    FootBrakeVoiceHelper.m3dingDong$lambda0(this.f3224a, mediaPlayer2);
                }
            });
        }
        MediaPlayer mediaPlayer2 = this.mediaPlayer;
        if (mediaPlayer2 == null) {
            return;
        }
        mediaPlayer2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: dingDong$lambda-0, reason: not valid java name */
    public static final void m3dingDong$lambda0(FootBrakeVoiceHelper this$0, MediaPlayer mediaPlayer) {
        r.e(this$0, "this$0");
        MediaPlayer mediaPlayer2 = this$0.mediaPlayer;
        if (mediaPlayer2 != null) {
            mediaPlayer2.release();
        }
        this$0.mediaPlayer = null;
    }

    public final void checkPlayVoice(boolean isFootBrakeOn) {
        if (!isFootBrakeOn) {
            this.mFootBrakeOn = false;
        } else {
            if (this.mFootBrakeOn) {
                return;
            }
            this.mFootBrakeOn = true;
            dingDong();
        }
    }

    public final boolean getMFootBrakeOn() {
        return this.mFootBrakeOn;
    }

    public final void setMFootBrakeOn(boolean z) {
        this.mFootBrakeOn = z;
    }
}
