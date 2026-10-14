.class Lcn/mucang/android/selectcity/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/selectcity/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/selectcity/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/mucang/android/selectcity/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/mucang/android/selectcity/y$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/selectcity/y;Lcn/mucang/android/core/location/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcn/mucang/android/selectcity/y;->B(Lcn/mucang/android/selectcity/y;ZLcn/mucang/android/core/location/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/core/location/MucangLocateOption;

    invoke-direct {v0}, Lcn/mucang/android/core/location/MucangLocateOption;-><init>()V

    const-wide/16 v1, 0x1388

    .line 2
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/core/location/MucangLocateOption;->g(J)Lcn/mucang/android/core/location/MucangLocateOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/location/MucangLocateOption;->h(Z)Lcn/mucang/android/core/location/MucangLocateOption;

    sget-object v1, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->COARSE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/location/MucangLocateOption;->a(Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;)Lcn/mucang/android/core/location/MucangLocateOption;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/location/LocationUtils;->m(Lcn/mucang/android/core/location/MucangLocateOption;)Lcn/mucang/android/core/location/c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/selectcity/y$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/selectcity/y;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/selectcity/o;

    invoke-direct {v3, v1, v0}, Lcn/mucang/android/selectcity/o;-><init>(Lcn/mucang/android/selectcity/y;Lcn/mucang/android/core/location/c;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
