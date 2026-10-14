.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/x;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/x;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/x;->c:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/x;->a:Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/x;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/x;->c:Lkotlin/jvm/b/l;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$saveMapData$1$1;->g(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Ljava/util/List;Lkotlin/jvm/b/l;Landroid/view/View;)V

    return-void
.end method
