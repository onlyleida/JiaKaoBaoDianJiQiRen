.class public final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;
.super Lcom/drakeet/multitype/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$init$adapter$1",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "MapCollectK3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)V
    .locals 6

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity$d;->c:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;->j(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapManagerActivity;)Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "supportFragmentManager"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapItemBinder;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Landroidx/fragment/app/FragmentManager;)V

    .line 3
    const-class p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {p0, p1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    return-void

    :cond_0
    const-string p1, "viewModel"

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
