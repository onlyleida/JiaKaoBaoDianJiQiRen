package cn.mucang.android.jiakaoyi.speech.model;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.model.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/model/SingleAnswerModel;", "", "text", "", "(Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SingleAnswerModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5890a;

    public SingleAnswerModel(String text) {
        r.e(text, "text");
        this.f5890a = text;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF5890a() {
        return this.f5890a;
    }
}
