package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes6.dex */
public enum RenderingFormat {
    PLAIN { // from class: kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat.PLAIN
        @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
        public String escape(String string) {
            r.e(string, "string");
            return string;
        }
    },
    HTML { // from class: kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat.HTML
        @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
        public String escape(String string) {
            r.e(string, "string");
            return t.x(t.x(string, "<", "&lt;", false, 4, null), ">", "&gt;", false, 4, null);
        }
    };

    /* synthetic */ RenderingFormat(o oVar) {
        this();
    }

    public abstract String escape(String str);
}
