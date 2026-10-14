package com.hw.videoprocessor;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import com.google.android.gms.common.Scopes;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class f {
    public static float a(e.a aVar) throws IOException {
        MediaExtractor mediaExtractor = new MediaExtractor();
        aVar.a(mediaExtractor);
        int i = 0;
        mediaExtractor.selectTrack(d(mediaExtractor, false));
        long j = 0;
        while (true) {
            long sampleTime = mediaExtractor.getSampleTime();
            if (sampleTime < 0) {
                mediaExtractor.release();
                return i / ((j / 1000.0f) / 1000.0f);
            }
            i++;
            mediaExtractor.advance();
            j = sampleTime;
        }
    }

    public static int b(e.a aVar) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        try {
            aVar.a(mediaExtractor);
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(d(mediaExtractor, false));
            return trackFormat.containsKey("frame-rate") ? trackFormat.getInteger("frame-rate") : -1;
        } catch (IOException e2) {
            com.hw.videoprocessor.g.b.c(e2);
            return -1;
        } finally {
            mediaExtractor.release();
        }
    }

    public static int c(MediaCodec mediaCodec, String str) {
        try {
            return ((Integer) mediaCodec.getCodecInfo().getCapabilitiesForType(str).getVideoCapabilities().getBitrateRange().getUpper()).intValue();
        } catch (Exception e2) {
            com.hw.videoprocessor.g.b.c(e2);
            return -1;
        }
    }

    public static int d(MediaExtractor mediaExtractor, boolean z) {
        int trackCount = mediaExtractor.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            String string = mediaExtractor.getTrackFormat(i).getString("mime");
            if (z) {
                if (string.startsWith("audio/")) {
                    return i;
                }
            } else if (string.startsWith("video/")) {
                return i;
            }
        }
        return -5;
    }

    public static boolean e(MediaCodec mediaCodec, String str, MediaFormat mediaFormat, int i, int i2) {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = mediaCodec.getCodecInfo().getCapabilitiesForType(str).profileLevels;
        if (codecProfileLevelArr == null) {
            return false;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
            if (codecProfileLevel.profile == i && codecProfileLevel.level == i2) {
                mediaFormat.setInteger(Scopes.PROFILE, i);
                mediaFormat.setInteger(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, i2);
                return true;
            }
        }
        return false;
    }
}
