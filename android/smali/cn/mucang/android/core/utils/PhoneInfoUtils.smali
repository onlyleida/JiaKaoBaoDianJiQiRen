.class public Lcn/mucang/android/core/utils/PhoneInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    }
.end annotation


# direct methods
.method public static a()Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    invoke-direct {v0}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/c0;->a()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setPixelRatio(F)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/utils/o0;->q(Landroid/view/WindowManager;)I

    move-result v2

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/o0;->p(Landroid/view/WindowManager;)I

    move-result v1

    .line 7
    invoke-virtual {v0, v2}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setScreenWidth(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    .line 8
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setScreenHeight(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    .line 9
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 11
    iget v2, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setColorDepth(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    .line 12
    iget v1, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setPixelDepth(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 14
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setPlatform(Ljava/lang/String;)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setPlatform(Ljava/lang/String;)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    .line 16
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setHardwareConcurrency(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->setLanguage(Ljava/lang/String;)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;

    return-object v0
.end method
