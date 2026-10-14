.class final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1;->invoke(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

.field final synthetic this$1:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;ILcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;->$index:I

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;->this$1:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;->k(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;->$index:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1$1$1;->this$1:Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$dataAdapter$1;

    .line 3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
