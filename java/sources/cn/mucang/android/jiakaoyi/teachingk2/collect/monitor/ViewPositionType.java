package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;", "", "value", "", "label", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "getValue", "()I", "Left", "Right", "Companion", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public enum ViewPositionType {
    Left(1, "左侧"),
    Right(2, "右侧");


    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String label;
    private final int value;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.ViewPositionType$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType$Companion;", "", "()V", "getType", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ViewPositionType;", "type", "", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(o oVar) {
            this();
        }

        public final ViewPositionType a(int i) {
            for (ViewPositionType viewPositionType : ViewPositionType.values()) {
                if (viewPositionType.getValue() == i) {
                    return viewPositionType;
                }
            }
            return ViewPositionType.Left;
        }
    }

    ViewPositionType(int i, String str) {
        this.value = i;
        this.label = str;
    }

    public static final ViewPositionType getType(int i) {
        return INSTANCE.a(i);
    }

    public final String getLabel() {
        return this.label;
    }

    public final int getValue() {
        return this.value;
    }
}
