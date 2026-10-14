.class public Lcn/mucang/android/account/h/b;
.super Lcn/mucang/android/account/h/d;
.source "SourceFile"


# instance fields
.field private j:Lcn/mucang/android/account/h/e$b;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/h/d;-><init>()V

    return-void
.end method

.method public static D(Landroidx/fragment/app/FragmentManager;Lcn/mucang/android/account/api/data/PopupCaptchaResponse;Ljava/lang/String;Ljava/lang/String;ILcn/mucang/android/account/h/e$b;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "\u975e\u6cd5\u7684\u9a8c\u8bc1\u7801\u5f39\u6846\u8bf7\u6c42"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/account/h/b;

    invoke-direct {v0}, Lcn/mucang/android/account/h/b;-><init>()V

    .line 3
    iput-object p1, v0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 4
    iput-object p2, v0, Lcn/mucang/android/account/h/b;->k:Ljava/lang/String;

    .line 5
    iput p4, v0, Lcn/mucang/android/account/h/b;->m:I

    .line 6
    iput-object p3, v0, Lcn/mucang/android/account/h/b;->l:Ljava/lang/String;

    .line 7
    iput-object p5, v0, Lcn/mucang/android/account/h/b;->j:Lcn/mucang/android/account/h/e$b;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/account/h/d;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public C()Lcn/mucang/android/account/h/e$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/b;->j:Lcn/mucang/android/account/h/e$b;

    return-object v0
.end method

.method protected x(Ljava/lang/String;)Lcn/mucang/android/core/api/c/a;
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/account/g/q/c;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/account/h/b;->k:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/account/h/b;->l:Ljava/lang/String;

    iget-object v0, p0, Lcn/mucang/android/account/h/d;->g:Lcn/mucang/android/account/api/data/PopupCaptchaResponse;

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/account/api/data/CaptchaResponse;->getCaptchaId()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Lcn/mucang/android/account/h/b;->m:I

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/account/g/q/c;-><init>(Lcn/mucang/android/account/h/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v8
.end method
