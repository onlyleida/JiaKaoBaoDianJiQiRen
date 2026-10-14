.class public Lcn/mucang/android/account/activity/o1/d;
.super Lcn/mucang/android/account/activity/o1/g;
.source "SourceFile"


# instance fields
.field private b:Lcn/mucang/android/account/g/g;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/g;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    .line 2
    new-instance p1, Lcn/mucang/android/account/g/g;

    invoke-direct {p1}, Lcn/mucang/android/account/g/g;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/activity/o1/d;->b:Lcn/mucang/android/account/g/g;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/account/activity/o1/d;->c:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcn/mucang/android/account/activity/o1/d;->d:I

    return-void
.end method

.method static synthetic h(Lcn/mucang/android/account/activity/o1/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/account/activity/o1/d;->d:I

    return p0
.end method

.method static synthetic i(Lcn/mucang/android/account/activity/o1/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/account/activity/o1/d;)Lcn/mucang/android/account/g/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/account/activity/o1/d;->b:Lcn/mucang/android/account/g/g;

    return-object p0
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/account/activity/ValidationActivity;->z()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const-string p1, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 5
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Lcn/mucang/android/account/activity/o1/d$a;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u56fe\u7247\u9a8c\u8bc1\u7801"

    invoke-direct {p1, p0, v0, v1}, Lcn/mucang/android/account/activity/o1/d$a;-><init>(Lcn/mucang/android/account/activity/o1/d;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Lcn/mucang/android/account/activity/o1/d$b;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v0

    const-string v1, "\u63d0\u4ea4\u6570\u636e"

    invoke-direct {p1, p0, v0, v1, p2}, Lcn/mucang/android/account/activity/o1/d$b;-><init>(Lcn/mucang/android/account/activity/o1/d;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method
