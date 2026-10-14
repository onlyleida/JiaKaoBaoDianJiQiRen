package cn.mucang.android.core.webview;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HtmlExtra implements Serializable {
    private Map<String, String> headers;
    private String i;
    private boolean loadUrlWithPost;
    private MenuOptions menuOptions;
    private boolean noTopInset;
    private boolean openAsync;
    private String orientation;
    private String originUrl;
    private ParamsMode paramsMode;
    private byte[] postData;
    private String r;
    private boolean shareCurrentPage;
    private boolean showBackButton;
    private boolean showCloseButton;
    private boolean showOptionButton;
    private boolean showProgressBar;
    private boolean showTitleBar;
    private boolean sslTrustAll;
    private String statisticsId;
    private String statisticsName;
    private boolean supportLongPressed;
    private boolean supportNativeRequestLocation;
    private String title;
    private boolean urlEditable;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2682a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2683d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2684e;
        private boolean l;
        private boolean m;
        private boolean n;
        private boolean o;
        private boolean p;
        private boolean q;
        private byte[] r;
        private Map<String, String> s;
        private MenuOptions t;
        private String w;
        private String x;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f2685f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f2686g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f2687h = true;
        private boolean i = true;
        private boolean j = true;
        private boolean k = true;
        private ParamsMode u = ParamsMode.WHITE_LIST;
        private boolean v = false;

        public b A(Map<String, String> map) {
            this.s = map;
            return this;
        }

        public b B(MenuOptions menuOptions) {
            this.t = menuOptions;
            return this;
        }

        public b C(boolean z) {
            this.v = z;
            return this;
        }

        public b D(boolean z) {
            this.k = z;
            return this;
        }

        public b E(String str) {
            this.c = str;
            return this;
        }

        public b F(ParamsMode paramsMode) {
            if (paramsMode != null) {
                this.u = paramsMode;
            }
            return this;
        }

        public b G(boolean z) {
            this.q = z;
            return this;
        }

        public void H(boolean z) {
            this.n = z;
        }

        public b I(String str) {
            this.b = str;
            return this;
        }

        public b J(String str) {
            this.f2682a = str;
            return this;
        }

        public b K(boolean z) {
            this.f2687h = z;
            return this;
        }

        public b L(boolean z) {
            this.j = z;
            return this;
        }

        public HtmlExtra y() {
            return new HtmlExtra(this);
        }

        public b z(boolean z) {
            this.f2687h = !z;
            return this;
        }
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public String getI() {
        return this.i;
    }

    public MenuOptions getMenuOptions() {
        if (this.menuOptions == null) {
            this.menuOptions = new MenuOptions();
        }
        return this.menuOptions;
    }

    public String getOrientation() {
        return this.orientation;
    }

    public String getOriginUrl() {
        return this.originUrl;
    }

    public ParamsMode getParamsMode() {
        return this.paramsMode;
    }

    public byte[] getPostData() {
        return this.postData;
    }

    public String getR() {
        return this.r;
    }

    public String getStatisticsId() {
        return this.statisticsId;
    }

    public String getStatisticsName() {
        return this.statisticsName;
    }

    public String getTitle() {
        return this.title;
    }

    @Deprecated
    public boolean isHideOptionButton() {
        return !this.showOptionButton;
    }

    public boolean isLoadUrlWithPost() {
        return this.loadUrlWithPost;
    }

    public boolean isNoTopInset() {
        return this.noTopInset;
    }

    public boolean isOpenAsync() {
        return this.openAsync;
    }

    public boolean isShareCurrentPage() {
        return this.shareCurrentPage;
    }

    public boolean isShowBackButton() {
        return this.showBackButton;
    }

    public boolean isShowCloseButton() {
        return this.showCloseButton;
    }

    public boolean isShowOptionButton() {
        return this.showOptionButton;
    }

    public boolean isShowProgressBar() {
        return this.showProgressBar;
    }

    public boolean isShowTitleBar() {
        return this.showTitleBar;
    }

    public boolean isSslTrustAll() {
        return this.sslTrustAll;
    }

    public boolean isSupportLongPressed() {
        return this.supportLongPressed;
    }

    public boolean isSupportNativeRequestLocation() {
        return this.supportNativeRequestLocation;
    }

    public boolean isUrlEditable() {
        return this.urlEditable;
    }

    public void updateMenuOptions(MenuOptions menuOptions) {
        if (menuOptions != null) {
            this.menuOptions = menuOptions;
        }
    }

    private HtmlExtra(b bVar) {
        this.noTopInset = false;
        this.originUrl = bVar.f2682a;
        this.showOptionButton = bVar.f2687h;
        this.title = bVar.b;
        this.showBackButton = bVar.f2685f;
        this.showCloseButton = bVar.f2686g;
        this.showProgressBar = bVar.i;
        this.showTitleBar = bVar.j;
        this.orientation = bVar.c;
        this.statisticsId = bVar.f2683d;
        this.statisticsName = bVar.f2684e;
        this.menuOptions = bVar.t;
        this.paramsMode = bVar.u;
        this.openAsync = bVar.k;
        this.urlEditable = bVar.l;
        this.supportLongPressed = bVar.m;
        this.supportNativeRequestLocation = bVar.n;
        this.loadUrlWithPost = bVar.o;
        this.postData = bVar.r;
        this.headers = bVar.s;
        this.shareCurrentPage = bVar.p;
        this.sslTrustAll = bVar.q;
        this.noTopInset = bVar.v;
        this.i = bVar.w;
        this.r = bVar.x;
    }
}
