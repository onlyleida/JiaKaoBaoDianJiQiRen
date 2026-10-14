package cn.mucang.android.jiakaoyi.speech.semantic;

import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.speech.R;
import cn.mucang.android.jiakaoyi.speech.callback.ISemanticCallback;
import cn.mucang.android.jiakaoyi.speech.provider.AbsInteractionProvider;
import cn.mucang.android.jiakaoyi.speech.utils.ReportManager;
import cn.mucang.android.jiakaoyi.speech.utils.SpeechLogUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.semantic.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J$\u0010\b\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006J\u001a\u0010\u0010\u001a\u00020\t2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticApi;", "", "()V", "waitRetSessionSemantic", "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticApi$SessionSemantic;", "getBizInvokeSuccessTip", "", "sessionId", "getSemantic", "", "asrText", "callback", "Lcn/mucang/android/jiakaoyi/speech/callback/ISemanticCallback;", "isMatchSuccess", "", "text", "reportInvokeRet", "aswText", "Companion", "SessionSemantic", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SemanticApi {
    private static final String b = k0.a(R.string.speech_key10);
    private static final String c = k0.a(R.string.speech_key11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f5896d = k0.a(R.string.speech_key12);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f5897e = k0.a(R.string.speech_key13);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SessionSemantic f5898a = new SessionSemantic(null, null);

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.semantic.d$a, reason: from toString */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticApi$SessionSemantic;", "", "sessionId", "", "semantic", "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;", "(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V", "getSemantic", "()Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;", "setSemantic", "(Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V", "getSessionId", "()Ljava/lang/String;", "setSessionId", "(Ljava/lang/String;)V", "component1", "component2", MenuOptions.COPY, "equals", "", "other", "hashCode", "", "toString", "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final /* data */ class SessionSemantic {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
        private String sessionId;

        /* JADX INFO: renamed from: b, reason: from toString */
        private SemanticResult semantic;

        public SessionSemantic(String str, SemanticResult semanticResult) {
            this.sessionId = str;
            this.semantic = semanticResult;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final SemanticResult getSemantic() {
            return this.semantic;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getSessionId() {
            return this.sessionId;
        }

        public final void c(SemanticResult semanticResult) {
            this.semantic = semanticResult;
        }

        public final void d(String str) {
            this.sessionId = str;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SessionSemantic)) {
                return false;
            }
            SessionSemantic sessionSemantic = (SessionSemantic) other;
            return r.a(this.sessionId, sessionSemantic.sessionId) && r.a(this.semantic, sessionSemantic.semantic);
        }

        public int hashCode() {
            String str = this.sessionId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            SemanticResult semanticResult = this.semantic;
            return iHashCode + (semanticResult != null ? semanticResult.hashCode() : 0);
        }

        public String toString() {
            return "SessionSemantic(sessionId=" + ((Object) this.sessionId) + ", semantic=" + this.semantic + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(String str, String str2, ISemanticCallback iSemanticCallback, SemanticApi this$0) {
        SemanticResult semanticResultB;
        String NO_MATCH;
        r.e(this$0, "this$0");
        try {
            e eVar = new e();
            AbsInteractionProvider absInteractionProvider = (AbsInteractionProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsInteractionProvider.class, null, 2, null);
            semanticResultB = eVar.b(str, str2, absInteractionProvider == null ? null : absInteractionProvider.getServerKemu());
        } catch (Exception e2) {
            e2.printStackTrace();
            SpeechLogUtils.b("SemanticApi", r.m("getSemantic error ", e2.getMessage()));
            semanticResultB = null;
        }
        if (semanticResultB == null) {
            if (iSemanticCallback == null) {
                return;
            }
            iSemanticCallback.a(str, b, true);
            return;
        }
        int type = semanticResultB.getType();
        boolean z = false;
        if (type != 0 && type != 2) {
            SpeechLogUtils.c("SemanticApi", r.m("reply:", semanticResultB.getReply()));
            SpeechMcProtocolHelper speechMcProtocolHelper = SpeechMcProtocolHelper.f5901a;
            if (speechMcProtocolHelper.a(semanticResultB.getReply())) {
                String reply = semanticResultB.getReply();
                if (reply != null && !StringsKt__StringsKt.G(reply, "http://voice.nav.mucang.cn/adjustVolume", false, 2, null)) {
                    z = true;
                }
                if (speechMcProtocolHelper.e(semanticResultB.getReply())) {
                    SpeechLogUtils.c("SemanticApi", "reply invoke by Biz");
                    this$0.f5898a.d(str);
                    this$0.f5898a.c(semanticResultB);
                    NO_MATCH = "";
                } else {
                    if (TextUtils.isEmpty(semanticResultB.getTip())) {
                        NO_MATCH = k0.a(R.string.speech_key14);
                    } else {
                        NO_MATCH = semanticResultB.getTip();
                        r.c(NO_MATCH);
                    }
                    r.d(NO_MATCH, "{\n                      …                        }");
                }
            } else if (TextUtils.isEmpty(semanticResultB.getCommandFailTip())) {
                NO_MATCH = k0.a(R.string.speech_key15);
                r.d(NO_MATCH, "getString(R.string.speech_key15)");
            } else {
                NO_MATCH = semanticResultB.getCommandFailTip();
                r.c(NO_MATCH);
            }
        } else if (TextUtils.isEmpty(semanticResultB.getReply())) {
            NO_MATCH = c;
            r.d(NO_MATCH, "NO_MATCH");
        } else {
            NO_MATCH = semanticResultB.getReply();
            r.c(NO_MATCH);
        }
        if (semanticResultB.getType() == 1 && !TextUtils.isEmpty(NO_MATCH)) {
            ReportManager.f5930a.g(semanticResultB, NO_MATCH);
        }
        if (iSemanticCallback != null) {
            iSemanticCallback.a(str, NO_MATCH, z);
        }
        ReportManager reportManager = ReportManager.f5930a;
        r.c(str2);
        reportManager.k(str, str2);
    }

    public final String a(String str) {
        if (str == null || !r.a(this.f5898a.getSessionId(), str)) {
            return "";
        }
        SemanticResult semantic = this.f5898a.getSemantic();
        if (semantic == null) {
            return null;
        }
        return semantic.getTip();
    }

    public final void b(final String str, final String str2, final ISemanticCallback iSemanticCallback) {
        if (str == null) {
            SpeechLogUtils.d("SemanticApi", "sessionId == null !!");
        } else if (TextUtils.isEmpty(str2)) {
            SpeechLogUtils.d("SemanticApi", "asrText is Empty!!");
        } else {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.semantic.a
                @Override // java.lang.Runnable
                public final void run() {
                    SemanticApi.c(str, str2, iSemanticCallback, this);
                }
            });
        }
    }

    public final boolean d(String text) {
        r.e(text, "text");
        return !(r.a(text, b) ? true : r.a(text, c) ? true : r.a(text, f5896d) ? true : r.a(text, f5897e));
    }

    public final void f(String str, String str2) {
        if (str == null || !r.a(this.f5898a.getSessionId(), str)) {
            return;
        }
        ReportManager reportManager = ReportManager.f5930a;
        SemanticResult semantic = this.f5898a.getSemantic();
        r.c(semantic);
        if (str2 == null) {
            str2 = "";
        }
        reportManager.g(semantic, str2);
    }
}
