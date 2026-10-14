.class public Lcn/mucang/android/account/activity/o1/h;
.super Lcn/mucang/android/account/activity/o1/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcn/mucang/android/account/activity/ValidationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/account/activity/o1/g;-><init>(Lcn/mucang/android/account/activity/ValidationActivity;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcn/mucang/android/account/activity/o1/h$a;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u56fe\u7247\u9a8c\u8bc1\u7801"

    invoke-direct {p1, p0, v0, v1}, Lcn/mucang/android/account/activity/o1/h$a;-><init>(Lcn/mucang/android/account/activity/o1/h;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/account/activity/o1/h$b;

    invoke-virtual {p0}, Lcn/mucang/android/account/activity/o1/g;->a()Lcn/mucang/android/account/activity/ValidationActivity;

    move-result-object v2

    const-string v3, "\u9a8c\u8bc1\u9a8c\u8bc1\u7801"

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/account/activity/o1/h$b;-><init>(Lcn/mucang/android/account/activity/o1/h;Lcn/mucang/android/account/activity/ValidationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcn/mucang/android/core/api/c/b;->b(Lcn/mucang/android/core/api/c/a;)V

    return-void
.end method
