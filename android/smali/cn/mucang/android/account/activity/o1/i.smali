.class public Lcn/mucang/android/account/activity/o1/i;
.super Lcn/mucang/android/account/activity/o1/g;
.source "SourceFile"


# instance fields
.field private b:Lcn/mucang/android/account/g/p;


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/g;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    .line 2
    new-instance p1, Lcn/mucang/android/account/g/p;

    invoke-direct {p1}, Lcn/mucang/android/account/g/p;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/i;->b:Lcn/mucang/android/account/g/p;

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/activity/o1/i;)Lcn/mucang/android/account/g/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/i;->b:Lcn/mucang/android/account/g/p;

    return-object p0
.end method


# virtual methods
.method public c(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x525

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->g()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcn/mucang/android/account/activity/o1/i$a;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u77ed\u4fe1"

    invoke-direct {p1, p0, v0, v1}, Lcn/mucang/android/account/activity/o1/i$a;-><init>(Lcn/mucang/android/account/activity/o1/i;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/account/activity/o1/i$b;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v2

    const-string v3, "\u9a8c\u8bc1\u77ed\u4fe1"

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/account/activity/o1/i$b;-><init>(Lcn/mucang/android/account/activity/o1/i;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method
