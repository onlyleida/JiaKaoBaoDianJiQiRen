.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$b;
.super Landroidx/fragment/app/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/collect/v2/EditTeachModelActivity$initViewPager$1",
        "Landroidx/fragment/app/FragmentPagerAdapter;",
        "getCount",
        "",
        "getItem",
        "Landroidx/fragment/app/Fragment;",
        "position",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->g()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;-><init>()V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;-><init>()V

    :goto_0
    return-object p1
.end method
