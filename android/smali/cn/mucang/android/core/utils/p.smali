.class public Lcn/mucang/android/core/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Bundle;

.field private static final b:Lcn/mucang/android/channel/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/p;->l()Lcn/mucang/android/channel/c;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/p;->b:Lcn/mucang/android/channel/c;

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static b()I
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$integer;->core__api_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u3010\u5361\u5361\u79fb\u52a8\u3011"

    :cond_0
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "product_category"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/c0;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "product"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/c0;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Landroid/os/Bundle;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/p;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->m()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/p;->a:Landroid/os/Bundle;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/utils/p;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/p;->b:Lcn/mucang/android/channel/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/channel/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/channel/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/p;->f()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v1, "qudao"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/p;->f()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "renyuan"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->u()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1.0.0"

    :cond_0
    return-object v0
.end method

.method private static l()Lcn/mucang/android/channel/c;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/channel/d;->a(Ljava/io/File;)Lcn/mucang/android/channel/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method
