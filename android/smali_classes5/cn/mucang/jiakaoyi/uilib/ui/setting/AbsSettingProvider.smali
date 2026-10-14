.class public abstract Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;
.super Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008H\u0016J*\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u00062\u0012\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u000fH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/AbsSettingProvider;",
        "Lcn/mucang/android/jiakaoyi/framework/dataprovider/BaseDataProvider;",
        "args",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "getDefaultVolume",
        "",
        "getPermissionClickPoint",
        "Lkotlin/Pair;",
        "Landroid/graphics/Point;",
        "getSetting",
        "",
        "",
        "loadType",
        "itemList",
        "Landroidx/lifecycle/MutableLiveData;",
        "uilib_release"
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
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getDefaultVolume()I
    .locals 1

    const/16 v0, 0x4e

    return v0
.end method

.method public getPermissionClickPoint()Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/Pair;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x203

    const/16 v3, 0x20f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x5c8

    const/16 v4, 0x23a

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract getSetting(ILandroidx/lifecycle/z;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
