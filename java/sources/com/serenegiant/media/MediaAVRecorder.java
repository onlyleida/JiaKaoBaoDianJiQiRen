package com.serenegiant.media;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.documentfile.a.a;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"NewApi"})
public class MediaAVRecorder extends AbstractMediaAVRecorder {
    private static final String TAG = "MediaAVRecorder";

    public MediaAVRecorder(Context context, IRecorder.RecorderCallback recorderCallback, String str, int i) throws IOException {
        super(context, recorderCallback, (String) null, str, i);
    }

    @Override // com.serenegiant.media.AbstractMediaAVRecorder
    protected void setupMuxer(int i) throws IOException {
        setMuxer(Recorder.createMuxer(i));
    }

    public MediaAVRecorder(Context context, IRecorder.RecorderCallback recorderCallback, String str, String str2, int i) throws IOException {
        super(context, recorderCallback, str, str2, i);
    }

    @Override // com.serenegiant.media.AbstractMediaAVRecorder
    protected void setupMuxer(String str) throws IOException {
        setMuxer(Recorder.createMuxer(str));
    }

    public MediaAVRecorder(Context context, IRecorder.RecorderCallback recorderCallback, int i, String str, String str2) throws IOException {
        super(context, recorderCallback, i, str, str2);
    }

    @Override // com.serenegiant.media.AbstractMediaAVRecorder
    protected void setupMuxer(Context context, a aVar) throws IOException {
        setMuxer(Recorder.createMuxer(context, aVar));
    }

    public MediaAVRecorder(Context context, IRecorder.RecorderCallback recorderCallback, a aVar) throws IOException {
        super(context, recorderCallback, aVar);
    }

    public MediaAVRecorder(Context context, IRecorder.RecorderCallback recorderCallback, String str) throws IOException {
        super(context, recorderCallback, str);
    }
}
