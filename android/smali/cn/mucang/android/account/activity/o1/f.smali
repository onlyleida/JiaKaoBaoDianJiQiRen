.class public Lcn/mucang/android/account/activity/o1/f;
.super Lcn/mucang/android/account/activity/o1/g;
.source "SourceFile"


# instance fields
.field private b:Lcn/mucang/android/account/g/m;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/g;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    .line 2
    new-instance p1, Lcn/mucang/android/account/g/m;

    invoke-direct {p1}, Lcn/mucang/android/account/g/m;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/f;->b:Lcn/mucang/android/account/g/m;

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/activity/o1/f;)Lcn/mucang/android/account/g/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/f;->b:Lcn/mucang/android/account/g/m;

    return-object p0
.end method


# virtual methods
.method public c(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x5dc

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/activity/ValidationActivity;->z()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const-string p1, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 6
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance v0, Lcn/mucang/android/account/activity/o1/f$a;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v3

    const-string v4, "\u8bf7\u6c42\u77ed\u4fe1"

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/account/activity/o1/f$a;-><init>(Lcn/mucang/android/account/activity/o1/f;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/account/activity/o1/f$b;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v2

    const-string v3, "\u8bf7\u6c42\u9a8c\u8bc1"

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/account/activity/o1/f$b;-><init>(Lcn/mucang/android/account/activity/o1/f;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method
