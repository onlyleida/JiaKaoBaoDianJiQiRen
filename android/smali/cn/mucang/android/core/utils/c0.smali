.class public Lcn/mucang/android/core/utils/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/res/Resources;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/c0;->a:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/c0;->a:Landroid/content/res/Resources;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/utils/c0;->a:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/c0;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/c0;->a:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/c0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/c0;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/core/utils/c0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/utils/c0;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/utils/c0;->b:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/core/utils/c0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final e(Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/core/utils/c0;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
