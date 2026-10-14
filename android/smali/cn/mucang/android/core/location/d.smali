.class public Lcn/mucang/android/core/location/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lcom/amap/api/location/AMapLocationClient;->updatePrivacyShow(Landroid/content/Context;ZZ)V

    .line 2
    invoke-static {p0, v0}, Lcom/amap/api/location/AMapLocationClient;->updatePrivacyAgree(Landroid/content/Context;Z)V

    .line 3
    sget-object v0, Lcn/mucang/android/core/location/b;->a:Lcn/mucang/android/core/location/b;

    invoke-static {p0, v0}, Lcn/mucang/android/core/location/LocationUtils;->c(Landroid/app/Application;Lcn/mucang/android/core/location/LocationUtils$d;)V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/core/location/MucangLocateOption;)Lcn/mucang/android/core/location/e;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/location/f/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/location/f/c;-><init>(Lcn/mucang/android/core/location/MucangLocateOption;)V

    return-object v0
.end method
