.class final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->r0(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Landroid/view/View;)V
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
.field final synthetic $srcData:Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->$srcData:Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->D(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->M(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->J(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->$srcData:Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->n(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->values()[Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/k;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->$srcData:Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    .line 9
    invoke-static {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->F(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;I)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->U(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$initDeleteView$3$1$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;->r(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;->q()V

    :goto_0
    return-void
.end method
