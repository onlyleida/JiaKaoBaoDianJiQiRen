.class public Lcn/mucang/android/account/h/c;
.super Lcn/mucang/android/account/h/d;
.source "SourceFile"


# instance fields
.field private j:Lcn/mucang/android/account/h/e$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/h/d;-><init>()V

    return-void
.end method

.method public static D(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Lcn/mucang/android/account/h/e$b;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "\u975e\u6cd5\u7684\u9a8c\u8bc1\u7801\u5f39\u6846\u8bf7\u6c42"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/account/h/c;

    invoke-direct {v0}, Lcn/mucang/android/account/h/c;-><init>()V

    .line 3
    iput-object p1, v0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 4
    iput-object p2, v0, Lcn/mucang/android/account/h/c;->j:Lcn/mucang/android/account/h/e$b;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/account/h/d;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public C()Lcn/mucang/android/account/h/e$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/c;->j:Lcn/mucang/android/account/h/e$b;

    return-object v0
.end method

.method protected x(Ljava/lang/String;)Lcn/mucang/android/core/api/c/a;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/account/g/q/d;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    invoke-direct {v0, p0, v1, v2, p1}, Lcn/mucang/android/account/g/q/d;-><init>(Lcn/mucang/android/account/h/c;Landroid/app/Activity;Lcn/mucang/android/account/api/data/CaptchaResponse;Ljava/lang/String;)V

    return-object v0
.end method
