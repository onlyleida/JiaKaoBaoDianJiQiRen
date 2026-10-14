package com.iflytek.cloud.a.h;

import com.iflytek.cloud.SpeechError;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public interface b {
    void a(ArrayList<byte[]> arrayList, int i, int i2, int i3, String str) throws SpeechError;

    void onCompleted(SpeechError speechError);
}
