.class public Lcn/mucang/android/jiakaoyi/teachingk2/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method public static a()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a:I

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/account/AccountManager;->h()Lcn/mucang/android/account/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/account/AccountManager;->g()Lcn/mucang/android/account/data/AuthUser;

    move-result-object v0

    const-string v1, "Key_User_Grade_"

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/account/data/AuthUser;->getMucangId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a:I

    return-void
.end method

.method public static d(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u6559\u5b66\u7b49\u7ea7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sput p0, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a:I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    .line 4
    const-class p0, Lcn/mucang/android/jiakaoyi/teachingk2/m0;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/m0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/m0;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method
