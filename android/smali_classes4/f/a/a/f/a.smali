.class public Lf/a/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$string;->core__user_agreement_url:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/a/a/f/a;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$string;->core__privacy_agreement_url:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/a/a/f/a;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/api/f/b;->e()Lcn/mucang/android/core/api/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/f/b;->h()Lcn/mucang/android/core/api/f/b;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/f/b;->d()Ljava/util/Map;

    move-result-object v0

    .line 4
    sget-object v1, Lf/a/a/f/a;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/mucang/android/core/api/f/c;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lf/a/a/f/a;->a:Ljava/lang/String;

    .line 5
    sget-object v1, Lf/a/a/f/a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/mucang/android/core/api/f/c;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/a/a/f/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 1
    sget-object p0, Lf/a/a/f/a;->a:Ljava/lang/String;

    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 1
    sget-object p0, Lf/a/a/f/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    return-void
.end method
