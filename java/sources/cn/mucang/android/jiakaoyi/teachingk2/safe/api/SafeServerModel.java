package cn.mucang.android.jiakaoyi.teachingk2.safe.api;

import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\r\u0010\u0010\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\r\u0010\u0012\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\r\u0010\u0013\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\r\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J\r\u0010\u0017\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J\r\u0010\u0018\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\r\u0010\u0019\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\r\u0010\u001a\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\r\u0010\u001b\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011J\r\u0010\u001c\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0011R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel;", "Ljava/io/Serializable;", "()V", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel$SafeServerItem;", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "safeType", "", "getSafeType", "()I", "setSafeType", "(I)V", "getB2HighSpeed", "()Ljava/lang/Integer;", "getB2Speed", "getBackSpeed", "getBeltBrake", "", "()Ljava/lang/Boolean;", "getDoorBrake", "getHouLiu", "getK3Speed", "getK3StraightSpeed", "getProjectOutSpeed", "getSpeed", "SafeServerItem", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeServerModel implements Serializable {
    private List<SafeServerItem> list = new ArrayList();
    private int safeType;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/api/SafeServerModel$SafeServerItem;", "Ljava/io/Serializable;", "()V", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "", "getContent", "()Ljava/lang/String;", "setContent", "(Ljava/lang/String;)V", Constant.PROTOCOL_WEBVIEW_NAME, "getName", "setName", "type", "", "getType", "()I", "setType", "(I)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class SafeServerItem implements Serializable {
        private String content = "";
        private String name = "";
        private int type;

        public final String getContent() {
            return this.content;
        }

        public final String getName() {
            return this.name;
        }

        public final int getType() {
            return this.type;
        }

        public final void setContent(String str) {
            this.content = str;
        }

        public final void setName(String str) {
            this.name = str;
        }

        public final void setType(int i) {
            this.type = i;
        }
    }

    public final Integer getB2HighSpeed() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 9) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final Integer getB2Speed() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 10) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final Integer getBackSpeed() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 5) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final Boolean getBeltBrake() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 3) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    return Boolean.valueOf(Boolean.parseBoolean(content));
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final Boolean getDoorBrake() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 2) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    return Boolean.valueOf(Boolean.parseBoolean(content));
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final Integer getHouLiu() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 4) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final Integer getK3Speed() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 7) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final Integer getK3StraightSpeed() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 8) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final List<SafeServerItem> getList() {
        return this.list;
    }

    public final Integer getProjectOutSpeed() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 6) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final int getSafeType() {
        return this.safeType;
    }

    public final Integer getSpeed() {
        for (SafeServerItem safeServerItem : this.list) {
            if (safeServerItem.getType() == 1) {
                try {
                    String content = safeServerItem.getContent();
                    r.c(content);
                    if (content != null) {
                        return Integer.valueOf(Integer.parseInt(StringsKt__StringsKt.J0(content).toString()));
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
                } catch (Exception unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public final void setList(List<SafeServerItem> list) {
        r.e(list, "<set-?>");
        this.list = list;
    }

    public final void setSafeType(int i) {
        this.safeType = i;
    }
}
