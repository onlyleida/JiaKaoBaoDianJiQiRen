.class public final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1;
.super Lcom/drakeet/multitype/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;-><init>()V
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
        "cn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "k3setting_release"
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
.field final synthetic c:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)V
    .locals 6

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1;->c:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/teach/z/e;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/z/e;-><init>(Lkotlin/jvm/b/p;)V

    .line 3
    const-class p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/y;

    invoke-virtual {p0, p1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    return-void
.end method
