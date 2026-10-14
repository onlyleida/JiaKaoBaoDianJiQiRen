.class Lcn/mucang/android/account/j/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/account/j/j;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/account/AccountManager;->G(Landroid/content/Context;Lcn/mucang/android/account/data/LoginSmsModel;)V

    return-void
.end method
