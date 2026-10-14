package cn.mucang.android.core.api.verify;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ErrorDialogParams implements Serializable {
    public static final String EXTRA_CANCEL_ACTION = "cancelAction";
    public static final String EXTRA_CANCEL_BUTTON = "cancelButton";
    public static final String EXTRA_COUNT_DOWN = "countDown";
    public static final String EXTRA_COUNT_DOWN_ACTION = "countDownAction";
    public static final String EXTRA_MESSAGE = "message";
    public static final String EXTRA_OK_ACTION = "okAction";
    public static final String EXTRA_OK_BUTTON = "okButton";
    public static final String EXTRA_TITLE = "title";
    public final String cancelAction;
    public final String cancelButton;
    public final long countDown;
    public final String countDownAction;
    public final String message;
    public final String okAction;
    public final String okButton;
    public final String title;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2425a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2426d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2427e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f2428f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f2429g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f2430h;

        public ErrorDialogParams i() {
            return new ErrorDialogParams(this);
        }

        public b j(String str) {
            this.f2428f = str;
            return this;
        }

        public b k(String str) {
            this.f2427e = str;
            return this;
        }

        public b l(long j) {
            this.f2429g = j;
            return this;
        }

        public b m(String str) {
            this.f2430h = str;
            return this;
        }

        public b n(String str) {
            this.b = str;
            return this;
        }

        public b o(String str) {
            this.f2426d = str;
            return this;
        }

        public b p(String str) {
            this.c = str;
            return this;
        }

        public b q(String str) {
            this.f2425a = str;
            return this;
        }
    }

    private ErrorDialogParams(b bVar) {
        this.title = bVar.f2425a;
        this.message = bVar.b;
        this.okButton = bVar.c;
        this.okAction = bVar.f2426d;
        this.cancelButton = bVar.f2427e;
        this.cancelAction = bVar.f2428f;
        this.countDown = bVar.f2429g;
        this.countDownAction = bVar.f2430h;
    }
}
