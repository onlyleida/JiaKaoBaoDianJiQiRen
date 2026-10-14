.class public Lcn/mucang/android/account/activity/o1/e;
.super Lcn/mucang/android/account/activity/o1/g;
.source "SourceFile"


# instance fields
.field private b:Lcn/mucang/android/account/g/i;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/g;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    .line 2
    new-instance p1, Lcn/mucang/android/account/g/i;

    invoke-direct {p1}, Lcn/mucang/android/account/g/i;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/e;->b:Lcn/mucang/android/account/g/i;

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/activity/o1/e;)Lcn/mucang/android/account/g/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/e;->b:Lcn/mucang/android/account/g/i;

    return-object p0
.end method


# virtual methods
.method public c(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x524

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
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    new-instance v0, Lcn/mucang/android/account/activity/o1/e$a;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v1

    const-string v2, "\u53d1\u9001\u77ed\u4fe1"

    invoke-direct {v0, p0, v1, v2, p1}, Lcn/mucang/android/account/activity/o1/e$a;-><init>(Lcn/mucang/android/account/activity/o1/e;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Landroid/view/View;)V

    invoke-static {v0}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/account/activity/o1/e$b;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v2

    const-string v3, "\u9a8c\u8bc1\u77ed\u4fe1"

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/account/activity/o1/e$b;-><init>(Lcn/mucang/android/account/activity/o1/e;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method
