package cn.mucang.android.jiakaoyi.framework.language;

import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/language/Language;", "", "type", "", "languageName", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getLanguageName", "()Ljava/lang/String;", "getType", "()I", "Chinese", "Uighur", "Companion", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum Language {
    Chinese(0, "汉语"),
    Uighur(1, "维吾尔语");


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String languageName;
    private final int type;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.language.Language$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/language/Language$Companion;", "", "()V", "parseLanguage", "Lcn/mucang/android/jiakaoyi/framework/language/Language;", "type", "", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final Language a(int i) {
            for (Language language : Language.values()) {
                if (language.getType() == i) {
                    return language;
                }
            }
            return Language.Chinese;
        }
    }

    Language(int i, String str) {
        this.type = i;
        this.languageName = str;
    }

    public static final Language parseLanguage(int i) {
        return INSTANCE.a(i);
    }

    public final String getLanguageName() {
        return this.languageName;
    }

    public final int getType() {
        return this.type;
    }
}
